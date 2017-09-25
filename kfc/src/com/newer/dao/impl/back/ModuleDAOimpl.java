package com.newer.dao.impl.back;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.newer.dao.inter.back.ModuleDAO;
import com.newer.pojo.Meal;
import com.newer.pojo.Module;
import com.newer.pojo.Role;
import com.newer.util.HibernateSessionFactory;

public class ModuleDAOimpl implements ModuleDAO{

	@Override
	public boolean add(Module module) {
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
			session.save(module);
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
	public boolean delete(Module modul) {
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
			session.delete(modul);
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
	//删除中间表记录
	public boolean delete_m_r(int role_id,int module_id) {
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
			String sql = "delete from tb_role_module where role_id=? and module_id=?";
			SQLQuery query = session.createSQLQuery(sql);
			query.setInteger(0, role_id);
			query.setInteger(1, module_id);
			query.executeUpdate();
			
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
	public Module selectById(int id) {
		// 1、获取SessionFactory
		SessionFactory sessionFactory = HibernateSessionFactory
				.getSessionFactory();
		// 2、获取Session
		Session session = sessionFactory.openSession();
		Module module = null;
		// 4、执行查询操作
		try {
			 module = (Module) session.get(Module.class, id);
		} catch (HibernateException e) {
			e.printStackTrace();
		} finally {
			// 关闭session
			session.close();
		}
		return module;
	}

	@Override
	public List<Module> selectAll() {
		 List<Module> list =new ArrayList<Module>();
			// 1、获取SessionFactory
			SessionFactory sessionFactory = HibernateSessionFactory
					.getSessionFactory();
			// 2、获取Session
			Session session = sessionFactory.openSession();
			// 4、执行查询所有操作
			try {
				// HQL语句
				String hql = "from Module";
				Query query = session.createQuery(hql);
				List l = query.list();
				if(l.size() > 0) {
					list = (List<Module>)l;
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
	public boolean modify(Module module) {
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
			session.update(module);
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
	public boolean modifyByrole(Role role) {
		// TODO Auto-generated method stub
		return false;
	}
	
	
}
