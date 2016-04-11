package com.test.dao;

import java.util.List;

import com.test.model.User;

/**用户接口
 * @author 凌云客
 *
 */
public interface UserDao {
	public void save(User user);
	public void update(User user);
	public void delete(int id);
	public User findById(int id);
	public List findAll();

}
