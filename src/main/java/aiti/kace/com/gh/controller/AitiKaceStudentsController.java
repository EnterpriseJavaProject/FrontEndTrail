package aiti.kace.com.gh.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import aiti.kace.com.gh.integration.AitiKaceStudentsRestClient;
import aiti.kace.com.gh.integration.dto.StudentProfile;





@Controller
@RequestMapping("/aitiKaceStudentsApiConsumption")
public class AitiKaceStudentsController {
	
	
	
	
	@Autowired
	AitiKaceStudentsRestClient aitiKaceStudentsRestClient;
	
	
	
	
	
	
	
	
	
	
	
	//  ADMIN HOMEPAGE
//  METHODS TO RETRIEVE ALL STUDENT RECORDS WITHOUT ACTIONS
	
@RequestMapping(value = "/getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd", method = RequestMethod.GET)
public String getAllStudentsInfoWithoutAction(StudentProfile findAllStudentInfos,  ModelMap modelMap) {
	
	
	StudentProfile[] allAitiKaceStudentsObject = aitiKaceStudentsRestClient.findAllStudentInfos(findAllStudentInfos);
	modelMap.addAttribute("allAitiKaceStudents", allAitiKaceStudentsObject);
	
	return "displayAllStudentInfo";
	
	
}
	
	












	
//METHODS TO RETRIEVE ALL STUDENT RECORDS FOR ACTIONS

@RequestMapping(value = "/getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod", method = RequestMethod.GET)
public String getAllStudentsInfoForAction(StudentProfile findAllStudentInfos,  ModelMap modelMap) {


StudentProfile[] allAitiKaceStudentsObject = aitiKaceStudentsRestClient.findAllStudentInfos(findAllStudentInfos);
modelMap.addAttribute("allAitiKaceStudents", allAitiKaceStudentsObject);

return "adminActionUpdatePage";


}	
	
	
	
	
	
	
	






//METHOD TO RETRIEVE ALL STUDENT NAMES
@RequestMapping(value = "/getCsd1_1ResultPage=VIEw=CSD1.1JJD-DN=STUDENTS-Ndgddh=RESULTS=ios-PAGE-AN-bdb=nnIh-BsPbV=dkdoeyrijfd-cnfs", method = RequestMethod.GET)
public String findAllStudentNames(StudentProfile retrieveAllStudentNames,  ModelMap modelMap) {
	
	
	StudentProfile[] findnRetrieveAllStudentNames = aitiKaceStudentsRestClient.findAllStudentNames(retrieveAllStudentNames);
	modelMap.addAttribute("findnRetrieveAllStudentNames", findnRetrieveAllStudentNames);
	
	return "displayAllStudentInfo";
}
	




	
	
	
//  METHOD TO SAVE STUDENT INFO
//@RequestMapping("/saveAitiKaceStudent=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd")
//public String saveAitiKaceStudent(StudentProfile addStudentInfo) {
//	
//	
//	aitiKaceStudentsRestClient.saveStudentInfo(addStudentInfo);
//	
//	return "redirect: /aitiKaceAdminApiConsumption/getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
//}
	
	
	
	
	
	










// METHOD TO RETRIEVE A SINGLE STUDENT INFO FOR UPDATING

//@RequestMapping(value = "/getAitiKaceStudentById=SaMEmE=HsuSGS-MlsjHS-DN-aDDF-Fdddde-sAmKoG=SmO-sLnINbds=LonCrshs-bBidbdd/{id}", method = RequestMethod.GET)
//public String getAitiKaceStudentById(@RequestParam("id") Long findStudentInfoById) {
//	
//	
//	aitiKaceStudentsRestClient.findStudentInfoById(findStudentInfoById);
//	
//	return "updateAitiKaceStudentInfo";
//	
//}














// METHOD TO UPDTAE STUDENT INFO
//@RequestMapping("/editAitiKaceStudentInfo=VIEw=aLlsTudENTs-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
//public String updateCsd1_1Student(StudentProfile updateStudentInfo) {
//	
//	
//	aitiKaceStudentsRestClient.updateStudentInfo(updateStudentInfo);
//	
//	return "redirect: /aitiKaceAdminApiConsumption/getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod";
//}













// METHOD TO DELETE STUDENT INFO
//@RequestMapping("/deleteAitiKaceStudentInfo=VIEw=dELetEsTudENTs-hBSIS=STUDENTS-GbsGhHS=PAGE-hGhgKg=VGSN=Vhanxjjj-hsdSBDSHNDHNNDH-Gh=yOPPJD")
//public String deleteAitiKaceStudentInfo(@RequestParam("id") Long deleteStudentInfo) {
//	
//	
//	aitiKaceStudentsRestClient.deleteStudentInfo(deleteStudentInfo);
//	
//	return "redirect: /aitiKaceAdminApiConsumption/getAllStudentsInfoForAction=JhThoso=kOgssR-VcGh-DN-OSPS-OpBv-kHTTT=JK-Yo=hDGD-Nod";
//}













































@RequestMapping("/getAdminLoginPage=VIEW=AITI-KACE-STUDENT-ADMIN-LOGIN-PAGE=iDH-Fimbngv=SIDFF++Iobddcn=dbbdhsSDHD")
public String getAdminLoginPage() {

	return "adminLoginPage";

}



@RequestMapping("/getAdminLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD")
public String getAdminLoginErrorPage() {

	return "errorAdminLogin";
}




@RequestMapping("/getStudentLoginPage=View=AITI-KACE-STUDENT-RESULTS-LOGIN-PAGE-SJ-DDN-DD-DMNC")
public String getStudentLoginPage() {

	return "stduentLoginPage";

}









//METHOD TO REDIRECT THE STUDENT TO THE RESULTS PAGE IF THE STUDENT ID IS CORRECT

@RequestMapping(value = "studentLogin=MyResults=AITI-KACE-STUDENT-STUDENT-RESULTS-PAGE=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn", method = RequestMethod.POST)
public String studentLoginAction(@RequestParam("student_id") String student_id) throws SQLException, ClassNotFoundException {
	
	
	String csdStudent_id = student_id;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aiti_student_results", "root", "");
	Statement stmt = conn.createStatement();
	
	ResultSet rs = stmt.executeQuery("select * from aiti_student_results.csd1_1students inner join aiti_student_results.csd1_1results where aiti_student_results.csd1_1students.student_id = aiti_student_results.csd1_1results.student_id and aiti_student_results.csd1_1students.student_id = '"+csdStudent_id+"' ");

	
	
	if(rs.next()){
		
		return "studentResults";
		
	}
	
	else {
		
		return "redirect: errorStudentLoginPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn";
		
	}
	
	
	


}















@RequestMapping("/errorStudentLoginPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn")
public String getStudentLoginErrorPage() {

	return "errorStudentLogin";
}




@RequestMapping("/homePage")
public String homePage() {

	return "../../index";

}

@RequestMapping(value = "adminLogin", method = RequestMethod.POST)
public String adminLoginAction(@RequestParam("username") String adminUsername, @RequestParam("password") String adminPassword) {

	String username1 = adminUsername;
	String password1 = adminPassword;

	if (username1.equalsIgnoreCase("admin") && password1.equalsIgnoreCase("admin@2020")) {

		return "redirect:getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd";
	} else {

		return "redirect:getAdminLoginErrorPage=VIEW=ERROR-PAGE=iDH-Fimbngv=SIDFF-ERROR=ERROR=JDHD";
	}

}
	








@RequestMapping("/getLoginBackHomePage=GO=BACK-TO=HOME-PAGE=ODP-SDSHJD=SDJD-DJSJ=D=Z=O=-SJ-DDN-DD-DMNC")
public String loginBackHomePage() {

	return "index";

}







































//STUDENT ID LIVE VAILDATION

@RequestMapping(value = "getliveValidationOnStudentID", method = RequestMethod.POST)
public String getliveValidationOnStudentID(@RequestParam("student_id") String student_id) throws SQLException, ClassNotFoundException  {
	
	String csdStudent_id = student_id;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
	Statement stmt = conn.createStatement();
	
ResultSet rs = stmt.executeQuery("select * from java_project_trials.admission_table where java_project_trials.admission_table.student_id = '"+csdStudent_id+"' ");

	
	
	if(rs.next()){

		return "liveValidationOnStudentId";
	}
	
	else {
		
		return "liveValidationOnStudentId";
	}
	

	
	
	
}






//EMAIL LIVE VALIDATION

@RequestMapping(value = "getliveValidationOnEmail", method = RequestMethod.POST)
public String getliveValidationOnEmail(@RequestParam("email") String email) throws SQLException, ClassNotFoundException  {
	
	String csdEmial = email;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
	Statement stmt = conn.createStatement();
	
ResultSet rs = stmt.executeQuery("select * from java_project_trials.admission_table where java_project_trials.admission_table.email = '"+csdEmial+"' ");

	
	
	if(rs.next()){

		return "liveValidationOnEmail";
	}
	
	else {
		
		return "liveValidationOnEmail";
	}
	

	
	
	
}







//PHONE NUMBER LIVE VAILDATION

@RequestMapping(value = "getliveValidationOnPhoneNUmber", method = RequestMethod.POST)
public String liveValidationOnPhoneNUmber(@RequestParam("phone") String phone) throws SQLException, ClassNotFoundException  {
	
	String csdPhone = phone;
	
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	
	
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_project_trials", "root", "");
	Statement stmt = conn.createStatement();
	
ResultSet rs = stmt.executeQuery("select * from java_project_trials.admission_table where java_project_trials.admission_table.phone = '"+csdPhone+"' ");

	
	
	if(rs.next()){

		return "liveValidationOnPhone";
	}
	
	else {
		
		return "liveValidationOnPhone";
	}
	

	
	
	
}






}
