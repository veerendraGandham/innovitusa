package com.iit.innovit.service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.iit.innovit.dto.JobPostDto;

public interface ClientServcie {

	List<JobPostDto> getClientJobPost()throws IOException, SQLException;

}
