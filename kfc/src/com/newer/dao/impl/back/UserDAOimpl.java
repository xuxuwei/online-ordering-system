package com.newer.dao.impl.back;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.newer.dao.inter.back.UserDAO;
import com.newer.pojo.Meal;
import com.newer.pojo.User;
import com.newer.util.HibernateSessionFactory;

public class UserDAOimpl implements UserDAO{

	@Override
	public boolean add(User user) {
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
			session.save(user);
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
	public boolean delete(User user) {
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
			session.delete(user);
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
	//通过角色id删除用户信息
	public boolean deleteByRole_id(int role_id) {
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
			// HQL语句
			String hql = "delete from User u where u.role_id=?";
			Query query = session.createQuery(hql);
			query.setInteger(0, role_id);
			int i = query.executeUpdate();
			tran.commit();
			if (i > 0)
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
	public boolean modify(User user) {
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
			session.update(user);
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
	public User selectById(int id) {
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		User user = null;
		// 4、执行查询操作
		try {
			user = (User) session.get(User.class, id);
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			// 关闭session
			session.close();
		}
		return user;
	}



	@Override
	public User selectByName(User user) {
		User result = null;
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		// 3、开启事务
		Transaction tran = session.beginTransaction();
		// 4、执行查询所有操作
		try {
			// HQL语句
			String hql = "from User u where u.userName = ? and u.userPassword=?";
			Query query = session.createQuery(hql);
			query.setString(0, user.getUserName());
			query.setString(1, user.getUserPassword());
			List l = query.list();
			if(l.size() > 0) {
				result = (User)l.get(0);
			}
			tran.commit();
		} catch (HibernateException e) {
			e.printStackTrace();

		} catch(Exception e){
			e.printStackTrace();
			tran.rollback();
		}finally {
			// 关闭session
			session.close();
		}					
		return result;
	}

	@Override
	public List<User> selectAll() {
		List<User> list =new ArrayList<User>();
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		// 4、执行查询所有操作
		try {
			// HQL语句
			String hql = "from User";
			Query query = session.createQuery(hql);
			List l = query.list();
			if(l.size() > 0) {
				list = l;
			}
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
	public List<User> selectAllByRoleId(int role_id) {
		List<User> list =new ArrayList<User>();
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		try {
			// HQL语句
			String hql = "from User u where role_id = ?";
			Query query = session.createQuery(hql);
			query.setInteger(0, role_id);
			List l = query.list();
			if(l.size() > 0) {
				list = l;
			}
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
	public User selectByAdUserName(int role_id,String user_name) {
		List list = new ArrayList();
		User user = null;
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		try {
			// HQL语句
			String hql = "from User where role_id = ? and user_name = ?";
			Query query = session.createQuery(hql);
			query.setInteger(0, role_id);
			query.setString(1, user_name);
			list = query.list();
			if(list.size() > 0 && list.size() == 0) {
				user = (User)list.get(0);
			}
		} catch (HibernateException e) {
			e.printStackTrace();

		} catch(Exception e){
			e.printStackTrace();
		}finally {
			// 关闭session
			session.close();
		}
		return user;
	}
	public static void main(String[] args) {
		UserDAOimpl u = new UserDAOimpl();
		User user = new User();
		user.setUserName("admin");
		user.setUserPassword("admin");
		System.out.println(u.selectByName(user));
		//	System.out.println(u.selectById(1));
	}


}
