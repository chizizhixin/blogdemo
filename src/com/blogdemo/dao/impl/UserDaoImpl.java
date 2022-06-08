package com.blogdemo.dao.impl;

import com.blogdemo.dao.UserDao;
import com.blogdemo.model.Users;
import com.blogdemo.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDaoImpl implements UserDao {
	@Override
	public Users login(String account, String password) {
		try {
			//获取连接
			Connection con = DBConnection.getConnection();

			//执行查询并返回结果集
			PreparedStatement pst = con.prepareStatement("select * from user where account=? and password=?");
			pst.setString(1, account);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();

			Users user = null;
			if (rs.next()) {
				user = new Users();
				user.setAccount(account);
				user.setId(rs.getInt("id"));
				user.setAccount(rs.getString("account"));
				user.setPassword(rs.getString("password"));
				user.setProblem(rs.getString("problem"));
				user.setAnswer(rs.getString("answer"));
				user.setCreateTime(rs.getTimestamp("createTime"));
				user.setIdentify(rs.getString("identify"));
			}

			//释放连接资源
			rs.close();
			pst.close();
			con.close();

			//返回结果
			return user;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return  null;
	}

	public static void main(String[] args) {
		UserDao user = new UserDaoImpl();
		System.out.println(user.login("123123", "123"));
	}
}
