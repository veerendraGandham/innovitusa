package com.iit.innovit.dao;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.iit.innovit.dto.JobPostDto;

public interface ClientDao {

	List<JobPostDto> getClientJobPost() throws IOException, SQLException;

}
