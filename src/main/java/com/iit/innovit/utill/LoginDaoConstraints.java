package com.iit.innovit.utill;

public class LoginDaoConstraints {
	public static final String GET_ADMIN_LOGIN = "select * from user";
	public static final String UPDATE_ADMIN_LOGIN = "update user set designation=?,firstName=?,lastName=?,phoneNo=?,address=? where loginName=?";
	public static final String AUTH_ADMIN_LOGIN = "select * from user where loginName=? and password=?";
}
