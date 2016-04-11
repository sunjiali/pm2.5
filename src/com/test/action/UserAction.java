package com.test.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.test.DaoImp.UserDaoImp;
import com.test.dao.UserDao;
import com.test.model.User;

public class UserAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private User user;
	private List<User> list;
	UserDao userDao = new UserDaoImp();
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<User> getList() {
		return list;
	}
	public void setList(List<User> list) {
		this.list = list;
	}
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	public String add(){
		userDao.save(user);
		return SUCCESS;
		
	}
	public String delete(){
		HttpServletRequest request = ServletActionContext.getRequest(); 
	     int id=Integer.parseInt(request.getParameter("id"));
		userDao.delete(id);
		return SUCCESS;
		
	}
	public String update(){
		userDao.update(user);
		return SUCCESS;
	}
	public String updateInput(){
		HttpServletRequest request = ServletActionContext.getRequest(); 
	     int id=Integer.parseInt(request.getParameter("id"));
	     user = userDao.findById(id);
	     return SUCCESS;
	} 
	 public String addInput(){
		 return SUCCESS;
	 }
	 public String list(){
		 list = userDao.findAll();
		 return SUCCESS;
	 }

}
