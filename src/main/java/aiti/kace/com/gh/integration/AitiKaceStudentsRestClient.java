package aiti.kace.com.gh.integration;


import aiti.kace.com.gh.integration.dto.StudentProfile;

public interface AitiKaceStudentsRestClient {
	
	
	
	//  METHOD TO SAVE STUDENT INFO
	public void saveStudentInfo(StudentProfile addStudentInfo);
	
	
	
		
	// METHOD TO RETRIEVE ALL STUDENT INFOS
	public StudentProfile[] findAllStudentInfos(StudentProfile findAllStudentInfos);
	
	
	
	
	// RETRIEVE A SINGLE STUDENT INFO FOR UPDATE
	public StudentProfile findStudentInfoById(Long findStudentInfoById);
	
	
	

	// METHOD TO UPDTAE STUDENT INFO
	public void updateStudentInfo(StudentProfile updateStudentInfo);
	

	
	// METHOD TO DELETE STUDENT INFO
	public void deleteStudentInfo(Long deleteStudentInfo);
	
	
	
	
	
//  METHOD TO RETRIEVE ALL STUDENT NAMES
	public StudentProfile[] findAllStudentNames(StudentProfile retrieveAllStudentNames);
	
	
	
	
	
	
	

}
