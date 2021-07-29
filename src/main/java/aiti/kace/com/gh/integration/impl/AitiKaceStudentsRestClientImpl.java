package aiti.kace.com.gh.integration.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

import aiti.kace.com.gh.integration.AitiKaceStudentsRestClient;
import aiti.kace.com.gh.integration.dto.StudentProfile;


@Component
public class AitiKaceStudentsRestClientImpl implements AitiKaceStudentsRestClient {
	
	
	
	
	
	RestTemplate restTemplate = new RestTemplate();
	
	
	
	
	StudentProfile studentProfile = new StudentProfile();
	
	
	
	
	
	
	
	
	
	
	//  METHOD TO SAVE STUDENT INFO

	@Override
	public void saveStudentInfo(StudentProfile addStudentInfo) {
		
		studentProfile.setId(addStudentInfo.getId());
		studentProfile.setStudent_id(addStudentInfo.getStudent_id());
		studentProfile.setStudent_name(addStudentInfo.getStudent_name());
		studentProfile.setCourse(addStudentInfo.getCourse());
		studentProfile.setCourse_level(addStudentInfo.getCourse_level());
		studentProfile.setEmail(addStudentInfo.getEmail());
		studentProfile.setPhone(addStudentInfo.getPhone());
		studentProfile.setGender(addStudentInfo.getGender());
		studentProfile.setAddress(addStudentInfo.getAddress());
		studentProfile.setDate_of_birth(addStudentInfo.getDate_of_birth());
		studentProfile.setCourse_start_date(addStudentInfo.getCourse_start_date());
		studentProfile.setCourse_end_date(addStudentInfo.getCourse_end_date());

		
		
		restTemplate.postForObject("http://localhost:9090/student/saveStudent", addStudentInfo, StudentProfile.class);

		
	}

	
	
	
	
	
	
	
	
	// METHOD TO RETRIEVE ALL STUDENT INFOS
	
	@Override
	public StudentProfile[] findAllStudentInfos(StudentProfile findAllStudentInfos) {
		
		StudentProfile[] RetrieveAllCsdStudentResults = restTemplate.getForObject("http://localhost:9090/student/getAllStudent",  StudentProfile[].class);
		
		return RetrieveAllCsdStudentResults;
	}

	
	
	
	
	
	
	
	
	
	
	// RETRIEVE A SINGLE STUDENT INFO
	
	@Override
	public StudentProfile findStudentInfoById(Long findStudentInfoById) {
		
		StudentProfile RetrieveStudentInfoById = restTemplate.getForObject("http://localhost:9090/student/findStudentById/" + findStudentInfoById,  StudentProfile.class);
		
		return RetrieveStudentInfoById;
	}

	
	
	
	
	
	
	
	
	
	
	// METHOD TO UPDTAE LSTUDENT INFO
	
	@Override
	public void updateStudentInfo(StudentProfile updateStudentInfo) {
		
		
		Map<String, Long> params = new HashMap<String, Long>();
		params.put("id", updateStudentInfo.getId());
		
		restTemplate.put("http://localhost:9090/student/updateStudent", updateStudentInfo, params);
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	// METHOD TO DELETE STUDENT INFO

	@Override
	public void deleteStudentInfo(Long deleteStudentInfo) {
		
		
		restTemplate.delete("http://localhost:9090/student/delete/" + deleteStudentInfo);
		
	}








//  METHOD TO RETRIEVE ALL STUDENT NAMES
	@Override
	public StudentProfile[] findAllStudentNames(StudentProfile retrieveAllStudentNames) {
		
		
		StudentProfile[] findAllStudentNames = restTemplate.getForObject("http://localhost:9090/student/retrieveAllStudentNames", StudentProfile[].class);
		
		return findAllStudentNames;
	}

	
	
	
	
	
}
