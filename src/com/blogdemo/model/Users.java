package com.blogdemo.model;

import java.util.Date;

public class Users {

	private  int id;

	private  String account;

	private  String password;

	private  String problem;

	private  String answer;

	private  Date createTime;

	private  String identify ;


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProblem() {
		return problem;
	}

	public void setProblem(String problem) {
		this.problem = problem;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getIdentify() {
		return identify;
	}

	public void setIdentify(String identify) {
		this.identify = identify;
	}

	@Override
	public String toString() {
		return "Users{" +
				"id=" + id +
				", account='" + account + '\'' +
				", password='" + password + '\'' +
				", problem='" + problem + '\'' +
				", answer='" + answer + '\'' +
				", createTime=" + createTime +
				", identifi='" + identify + '\'' +
				'}';
	}
}
