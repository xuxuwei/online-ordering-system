package com.newer.dao.impl;
// default package

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.newer.dao.inter.BaseHibernateDAO;
import com.newer.pojo.Order;

/**
 	
  * @author 
 */
public class OrderDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(OrderDAO.class);
		//property constants
	public static final String ORDER_ADDRESS = "orderAddress";
	public static final String BILL = "bill";
	public static final String ORDER_TOTAL = "orderTotal";
	public static final String ORDER_PAY_TYPE = "orderPayType";



//    保存操作
    public boolean save(Order transientInstance) throws Exception {
        boolean flag = false;
		Transaction tran = null;
		//getSession().clear();
        try {
        	tran = getSession().beginTransaction();
        	//System.out.println("id=" + transientInstance.getId());
        	//getSession().delete(transientInstance);
        	//getSession().merge(transientInstance.getUser());
        	//getSession().merge(transientInstance);
        	getSession().evict(transientInstance);
        	getSession().clear();
        	 getSession().save(transientInstance);
             tran.commit();
             flag = true;
        } catch (Exception re) {
        	re.printStackTrace();
            tran.rollback();
            throw re;
        }
        System.out.println(flag);
    	return flag;
    }
    
//  更新操作
  public boolean update(Order order) {
		boolean flag = false;
		Transaction tran = null;
		try {
			tran = getSession().beginTransaction();
          getSession().update(order);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} 
		
		return flag;
	}
//    删除操作
	public boolean delete(Order persistentInstance) {
        boolean flag = false;
		Transaction tran = null;
        try {
        	tran = getSession().beginTransaction();
            getSession().delete(persistentInstance);
            tran.commit();
			flag = true;
        } catch (RuntimeException re) {
            tran.rollback();
            throw re;
        }
    	return flag;
    }
//    根据id查询
    public Order findById( int id) {
        try {
            Order instance = (Order) getSession()
                    .get(Order.class, id);
            return instance;
        } catch (RuntimeException re) {
            throw re;
        }
    }
    
//    根据实例查询
    public List findByExample(Order instance) {
    	
        try {
            List results = getSession()
                    .createCriteria("com.newer.pojo.Order")
                    .add(Example.create(instance))
            .list();
            return results;
        } catch (RuntimeException re) {
        	re.printStackTrace();
            throw re;
        }

    }    
//    根据属性查询
    public List findByProperty(String propertyName, Object value) {
      try {
         String queryString = "from Order as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         throw re;
      }
	}
//根据地址
	public List findByOrderAddress(Object orderAddress
	) {
		return findByProperty(ORDER_ADDRESS, orderAddress
		);
	}
//	根据账单
	public List findByBill(Object bill
	) {
		return findByProperty(BILL, bill
		);
	}
//	根据支付总额
	public List findByOrderTotal(Object orderTotal
	) {
		return findByProperty(ORDER_TOTAL, orderTotal
		);
	}
//	根据支付类型
	public List findByOrderPayType(Object orderPayType
	) {
		return findByProperty(ORDER_PAY_TYPE, orderPayType
		);
	}
	
//查询所有订单
	public List findAll() {
		try {
			String queryString = "from Order";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}
//	根据客户姓名模糊查询(%用户名%)，显示客户姓名以及订单名称，返回数组类型
	public List<Order> findByCondition(Order order) {
		String hql = "select o from Order as o inner join o.user where o.user.userName like :name";
		Query query = getSession().createQuery(hql);
		query.setString("name", "%"+order.getUser().getUserName()+"%");
		return query.list();
	}
	
   
    
}