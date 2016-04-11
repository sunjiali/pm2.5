package com.test.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.test.model.User;
import com.test.util.DB;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private User user;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public boolean isLogin(String username, String password,String role) {
		username=user.getUsername();
		password=user.getPassword();
		role=user.getRole();
		boolean flag = false;
		Connection conn = DB.createConn();
		String sql = "select * from user where username ='" + username
				+ "' and password = '" + password + "'and role='"+role+"'";
		PreparedStatement ps = DB.prepare(conn, sql);
		ResultSet rs;
		try {
			rs = ps.executeQuery();

			if (rs.next()) {
				System.out.println("登录成功！");
				flag = true;
			}
		} catch (SQLException e) {
			System.out.println("登录失败！");
			e.printStackTrace();
		}
		return flag;
	}

	 public void validate() {
	 if (user.getUsername() == null || "".equals(user.getUsername())){
	 this.addFieldError("username", getText("用户名不能为空！"));
	 }
	 if (user.getPassword() == null || "".equals(user.getPassword())){
	 this.addFieldError("password", getText("密码不能为空！"));
	 }
	 if (user.getRole() == null || "".equals(user.getRole())){
	 this.addFieldError("role", getText("请选择权限！"));
	 }
	 }

	public String execute() throws Exception {
		boolean flag = isLogin(user.getUsername(), user.getPassword(),user.getRole());
		System.out.println("username" + user.getUsername() + "password" + user.getPassword());
		if (flag) {
			ActionContext.getContext().getSession().put("user", user);
			System.out.println();
			return SUCCESS;
		}

		else {

			return ERROR;
		}
	}
}
