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
import com.newer.pojo.User;

/**
 	* 
	 * @see .User
  * @author xuwei
 */
public class UserDAO extends BaseHibernateDAO  {
	     private static final Logger log = LoggerFactory.getLogger(UserDAO.class);
		//property constants
	public static final String USER_NAME = "userName";
	public static final String USER_TEL = "userTel";
	public static final String USER_EMAIL = "userEmail";
	public static final String USER_PASSWORD = "userPassword";
	public static final String ROLE = "role";



//    保存操作
    public boolean save(User transientInstance) {
    	boolean flag = false;
    	Transaction tran = null;
        try {
        	tran = getSession().beginTransaction();
            getSession().save(transientInstance);
            tran.commit();
            flag = true;
        } catch (RuntimeException re) {
            tran.rollback();
            throw re;
        }
    	return flag;
    }
//    更新操作
    public boolean update(User user) {
		boolean flag = false;
		Transaction tran = null;
		try {
			tran = getSession().beginTransaction();
            getSession().update(user);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} 
		
		return flag;
	}
    
//    删除操作
	public boolean delete(User persistentInstance) {
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
    public User findById( int id) {
        try {
            User instance = (User) getSession()
                    .get(User.class, id);
            return instance;
        } catch (RuntimeException re) {
            throw re;
        }
    }
    
//    根据实例查询
    public List findByExample(User instance) {
        try {
            List results = getSession()
                    .createCriteria("com.newer.pojo.User")
                    .add(Example.create(instance))
            .list();
            return results;
        } catch (RuntimeException re) {
            throw re;
        }
    }    
//    根据属性查询（父方法）
    public List findByProperty(String propertyName, Object value) {
      try {
         String queryString = "from User as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         throw re;
      }
	}
//根据用户名精确查询
	public List findByUserName(Object userName
	) {
		return findByProperty(USER_NAME, userName
		);
	}
//	根据短话查询
	public List findByUserTel(Object userTel
	) {
		return findByProperty(USER_TEL, userTel
		);
	}
//	根据email查询
	public List findByUserEmail(Object userEmail
	) {
		return findByProperty(USER_EMAIL, userEmail
		);
	}
	
	
//	根据角色查询
	public List findByRole(Object role
	) {
		return findByProperty(ROLE, role
		);
	}
	
//查询所有
	public List findAll() {
		try {
			String queryString = "from User";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			throw re;
		}
	}
	
//	统计每个顾客下了订单的数目
	public List<Object[]> selectUserOrderNum() {
		String hql = "select o.user.userName,count(o) from Order o right join o.user group by o.user.userName";
		Query query = getSession().createQuery(hql);
		return query.list();
	}

//	模糊查询顾客信息(%用户名%)，返回数组类型
	public List<User> findByCondition(User user) {
		
		Query query = getSession().createQuery(
				"from User as u where u.userName like :name");
		query.setString("name", "%"+user.getUserName()+"%");
		return query.list();
	}
	
    }
