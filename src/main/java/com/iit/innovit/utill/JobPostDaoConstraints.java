package com.iit.innovit.utill;

public class JobPostDaoConstraints {

	public static final String INSERT_JOBPOST = "insert into job(jobTitle,jobType,location,email,companyLogo,companyName,companyTagLine,website,videoLink,twitterUserName,jobDescription,isActive,time) values(?,?,?,?,?,?,?,?,?,?,?,?,current_timestamp)";
	public static final String GET_JOBPOST_LIST = "select * from job";
	public static final String GET_EDIT_JOBPOST_LIST = "select * from job where jobId=?";
	public static final String UPDATE_JOBPOST = "update job set jobTitle=?,jobType=?,location=?,email=?,companyLogo=?,companyName=?,companyTagLine=?,website=?,videoLink=?,twitterUserName=?,jobDescription=?,isActive=?,time=current_timestamp where jobId=?";
	public static final String DELETE_JOBPOST = "delete from job where jobId=?";
}
