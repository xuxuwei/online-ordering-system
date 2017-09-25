package com.newer.dao.impl.back;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Transaction;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.newer.dao.inter.back.MealDAO;
import com.newer.pojo.Meal;
import com.newer.util.HibernateSessionFactory;

public class MealDAOimpl implements MealDAO{

	@Override
	public boolean add(Meal m) {
		boolean flag = false;
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		// 3、开启事务
		Transaction tran = session.beginTransaction();
		// 4、执行保存操作
		try {
			session.save(m);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			// 关闭session
			session.close();
		}
		return flag;
	}

	@Override
	public boolean delete(Meal m) {
		boolean flag = false;
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		// 3、开启事务
		Transaction tran = session.beginTransaction();
		// 4、执行删除操作
		try {
			session.delete(m);
			System.out.println(m);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			// 关闭session
			session.close();
		}
		return flag;
	}

	@Override
	public boolean modify(Meal m) {
		boolean flag = false;
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		// 3、开启事务
		Transaction tran = session.beginTransaction();
		// 4、执行更新操作
		try {
			session.update(m);
			tran.commit();
			flag = true;
		} catch (HibernateException e) {
			e.printStackTrace();
			tran.rollback();
		} finally {
			// 关闭session
			session.close();
		}
		return flag;
	}

	@Override
	public Meal selectById(int id) {
		// 1、获取SessionFactory
				SessionFactory sessionFactory = HibernateSessionFactory
						.getSessionFactory();
				// 2、获取Session
				Session session = sessionFactory.openSession();
				Meal m = null;
				// 4、执行查询操作
				try {
					 m = (Meal) session.get(Meal.class, id);
				} catch (HibernateException e) {
					e.printStackTrace();
				} finally {
					// 关闭session
					session.close();
				}
				return m;
	}

	@Override
	public List<Meal> selectAll() {
		   List<Meal> list =new ArrayList<Meal>();
			// 1、获取SessionFactory
			SessionFactory sessionFactory = HibernateSessionFactory
					.getSessionFactory();
			// 2、获取Session
			Session session = sessionFactory.openSession();
			// 4、执行查询所有操作
			try {
				// HQL语句
				String hql = "from Meal";
				Query query = session.createQuery(hql);
				list = query.list();
				
			} catch (HibernateException e) {
				e.printStackTrace();

			} catch(Exception e){
				e.printStackTrace();
			}finally {
				// 关闭session
				session.close();
			}
			return list;
	}

	@Override
	public Meal selectByName(String name) {
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		Meal m = null;
		// 4、执行查询操作
		try {
			 m = (Meal) session.get(Meal.class, name);
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			// 关闭session
			session.close();
		}
		return m;
	}
	@Override
	public List<Meal> selectBytype(String type) {
		   List<Meal> list =new ArrayList<Meal>();
					// 1、获取SessionFactory
					SessionFactory sessionFactory = HibernateSessionFactory
							.getSessionFactory();
					// 2、获取Session
					Session session = sessionFactory.openSession();
					// 4、执行查询所有操作
					try {
						// HQL语句
						String hql = "from Meal as m where m.mealType like '%"+type+"%' ";
						Query query = session.createQuery(hql);
						list = query.list();
						System.out.println("+++"+list);
					} catch (HibernateException e) {
						e.printStackTrace();

					} catch(Exception e){
						e.printStackTrace();
					}finally {
						// 关闭session
						session.close();
					}
					return list;
		
	}
	
}
