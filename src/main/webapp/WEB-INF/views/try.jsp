<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
        <title>AITI-KACE</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/bootstrap.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/font-awesome.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/prism/prism.css" media="screen" > <!-- USED FOR DEMO HELP - YOU CAN REMOVE IT -->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/main.css" media="screen" >
        <script src="${pageContext.request.contextPath }/resources/jss/modernizr/modernizr.min.js"></script>
        
   <style>
   
   .eye_visibility{
   		position: absolute;
   		right: 20px;
   		transform: translate(0, -50%);
   		top: 40%;
   		cursor: pointer;
   
   }
   .fa {
   font-size: 20px;
   }
   				html{
    scroll-behavior: smooth;
     }
         
    .gotopbtn
{
position: fixed;
height: 10px;
bottom: 40px;
left:  50px;
}
   
   </style>     
        
    </head>
    <body class="">
        <div class="main-wrapper">

            <div class="">
                <div class="row">
 <h1 style="color:font-style: italic; font-family: sans-serif; font-weight: bolder;;" align="center">AITI-KACE STUDENT RESULTS MANAGEMENT SYSTEM</h1>
                    <div class="col-lg-6 visible-lg-block">

<section class="section">
                            <div class="row mt-40">
                                <div class="col-md-10 col-md-offset-1 pt-50">

                                    <div class="row mt-30 ">
                                        <div class="col-md-11">
                                            <div class="panel">
                                                <div class="panel-heading">
                                                    <div class="panel-title text-center">
                                                        <h4>For Students</h4>
                                                    </div>
                                                </div>
                                                <div class="panel-body p-20">

                                                    <div class="section-title">
                                                        <p class="sub-title">Student Result Management System</p>
                                                    </div>

                                                    <form class="form-horizontal" method="post">
                                                        <div class="form-group">
                                                            <label for="inputEmail3" class="col-sm-6 control-label">Search your result</label>
                                                            <div class="col-sm-6">
                                                               <a href="${pageContext.request.contextPath }/aitiKaceStudentsApiConsumption/getStudentLoginPage=View=AITI-KACE-STUDENT-RESULTS-LOGIN-PAGE-SJ-DDN-DD-DMNC">click here</a>
                                                            </div>
                                                        </div>
                                                       
                                                    </form>

                                            

                                                 
                                                </div>
                                            </div>
                                            <!-- /.panel -->
                                      
                                        </div>
                                        <!-- /.col-md-11 -->
                                    </div>
                                    <!-- /.row -->
                                </div>
                                <!-- /.col-md-12 -->
                            </div>
                            <!-- /.row -->
                        </section>
                    </div>
                    <div class="col-lg-6">
                        <section class="section">
                            <div class="row mt-40">
                                <div class="col-md-10 col-md-offset-1 pt-50">

                                    <div class="row mt-30 ">
                                        <div class="col-md-11">
                                            <div class="panel">
                                                <div class="panel-heading">
                                                    <div class="panel-title text-center">
                                                        <h4>Admin and Lecturer Login</h4>
                                                    </div>
                                                </div>
                                                <div class="panel-body p-20">

                                                    <div class="section-title">
                                                        <p class="sub-title">Student Result Management System</p>
                                                    </div>
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
<div class="container">
		<button type="button" class="btn btn-info float-left" data-toggle="modal" data-target="#myModal"> <i class="fas fa-fw fa-folder"></i>Login Here If you are Admin or Lecturer</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
					<h4 class="modal-title text-primary">ADMIN AND LECTURER LOGIN</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>						
					</div>
					<div class="modal-body">




						 <form class="user" action="${pageContext.request.contextPath }/aitiKaceLecturersApiConsumption/lecturersLoginPage=lOgiNlectURER=AITI-KACE-LECturER-NhfdG-LogHd-PAGE=nHDNDd-Hf-VDB=CNC-bdb=dndn=dndKH-Kls-Osbn" method="POST">

            <div class="form-group">
                  <input type="email" name="email" class="form-control form-control-user" value="${param.email}" placeholder="Enter Email..." required>
                </div>
                
                
                <div class="form-group">
                  <input type="password" name="password" class="form-control form-control-user" id="password" value="${param.password}" placeholder="Password" required>
                  <span class="eye_visibility"><i class="fas fa-eye" aria-hidden="true" id="eye" onclick="toggle()"></i></span>
                </div>
               
                
                <button type="submit" name="login_btn" class="btn btn-primary btn-user btn-block">Login</button>
                <hr>
                
                <!-- <p class="text-center">Register for a course? <a href="Select_Course.php">Register Now!</a></p>

                <p class="text-center">Check your Results? <a href="check_results.php">Check Now!</a></p>
                 -->
            </form>
						${result}



					</div>
				</div>

			</div>
		</div>

	</div>
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
 <!-- 
                                                    <form class="form-horizontal" method="post">
                                                        <div class="form-group">
                                                            
                                                          
                                                           <label for="inputEmail3" class="col-sm-6 control-label">For Only Admin</label>
                                                           <div class="col-sm-6">
                                                               <a href="${pageContext.request.contextPath }/aitiKaceAdminApiConsumption/getAdminAndLecturerLoginPage=VIEW=AITI-KACE-ADMIN-LOGIN-PAGE=iDH-Fimbngv=SIDFF++Iobddcn=dbbdhsSDHD">click here</a>
                                                            </div>
                                                        </div>
                                                       
                                                    </form>
 --> 
                                            

                                                 
                                                </div>
                                            </div>
                                            <!-- /.panel -->
                                      
                                        </div>
                                        <!-- /.col-md-11 -->
                                    </div>
                                    <!-- /.row -->
                                </div>
                                <!-- /.col-md-12 -->
                            </div>
                            <!-- /.row -->
                        </section>

                    </div>
                    <!-- /.col-md-6 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /. -->

        </div>
        <!-- /.main-wrapper -->


<script>
var state = false;

 function toggle(){
	 
	 if(state){
		 document.getElementById(
				 "password").
				 setAttribute("type",
						 "password");
		 document.getElementById(
				 "eye").style.color='#7a797e';
		 state = false;
	 }
	 
	 else{
		 document.getElementById(
		 "password").
		 setAttribute("type",
				 "text");
 		 document.getElementById(
		 "eye").style.color='#5887ef';
 		 state = true;
	 }
 }

</script>




        <!-- ========== COMMON JS FILES ========== -->
        <script src="${pageContext.request.contextPath }/resources/jss/jquery/jquery-2.2.4.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/jquery-ui/jquery-ui.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/bootstrap/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/pace/pace.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/lobipanel/lobipanel.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/jss/iscroll/iscroll.js"></script>
<script src="https://kit.fontawesome.com/42d3376bce.js" crossorigin="anonymous"></script>
        <!-- ========== PAGE JS FILES ========== -->

        <!-- ========== THEME JS ========== -->
        <script src="${pageContext.request.contextPath }/resources/jss/main.js"></script>
        <script>
            $(function(){

            });
        </script>

        <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->
<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="f2335702-9774-4b1c-b0da-c92f58fbccc6";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>

    </body>
</html>
    