package com.newer.service.inter;

import java.util.List;
import com.newer.pojo.User;
/**
 * 用户的业务逻辑层
 *
 */
public interface UserService {
	/**
	 * 保存用户
	 * @param user
	 * @return
	 */
	public boolean save(User user);
	
	/**
	 * 删除用户
	 * @param user
	 * @return
	 */
	public boolean delete(User user);

	/**
	 * 修改用户
	 * @param user
	 * @return
	 */
	public boolean update(User user);

	/**
	 * 根据ID查询用户
	 * @param user
	 * @return
	 */
	public User selectById(User user);

	/**
	 * 登陆查询
	 * @param user
	 * @return
	 */
	public User selectByLogin(User user);

	/**
	 * 查询所有用户
	 * @return
	 */
	public List<User> selectAll();

	/**
	 * 查询用户是否存在
	 * @param user
	 * 
	 * @return
	 */
	public User selectByUserName(User user);
}

