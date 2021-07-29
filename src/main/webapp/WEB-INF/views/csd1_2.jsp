<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import = "javax.sql.DataSource" %>
<%@ page import = "java.sql.*" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<title>Admin Page</title>

					<!-- CSS LINKS -->
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/all.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/all.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.css" type="text/css" rel="stylesheet">

<link href="${pageContext.request.contextPath }/resources/css/datatables.min.css" type="text/css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/css/bootstrap.css" type="text/css" rel="stylesheet">


        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/animate-css/animate.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/lobipanel/lobipanel.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/toastr/toastr.min.css" media="screen" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/icheck/skins/line/blue.css" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/icheck/skins/line/red.css" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/icheck/skins/line/green.css" >
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/csss/main.css" media="screen" >
        <script src="${pageContext.request.contextPath }/resources/jss/modernizr/modernizr.min.js"></script>




<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/datatables.min.js"></script>

     <!-- JAVASCRIPT LINKS -->



<style>
.move{
text-align: center;
}
html{
    scroll-behavior: smooth;
     }
         
    .gotopbtn
{
position: fixed;
height: 10px;
bottom: 40px;
left:  200px;
}
</style>

</head>






<body id="page-top">


 <!-- Page Wrapper -->
  <div id="wrapper">

       







						<!-- NAV BAR/ SIDE BAR -->








<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
  <div class="sidebar-brand-icon rotate-n-15">
      <img class="img-profile rounded-circle" src="${pageContext.request.contextPath }/resources/images/aiti1.jpeg" width="50" height="50">
  </div>
  <div class="sidebar-brand-text mx-3"> AITI-KACE </div>
</a>

<!-- Divider -->
<hr class="sidebar-divider my-0">

<!-- Students and Admin Dashboard -->
<li class="nav-item active">
  <a class="nav-link" href="${pageContext.request.contextPath }/aitiStudents/getAllStudentInfo=VIEW=ADMIN-JJD-DN-OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfsd">
    <i class="fas fa-fw fa-tachometer-alt"></i>
    <span>Students Dashboard</span></a>
</li>

<br>

<!-----------Admin Profile------------->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseNine" aria-expanded="true" aria-controls="collapseNine">
  <i class="fas fa-fw fa-folder"></i>
    <span> ADMIN </span>
  </a>
  <div id="collapseNine" class="collapse" aria-labelledby="headingNine" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <a class="collapse-item" href="#">ADMIN PROFILE</a>
      <a class="collapse-item" href="#">CHANGE PASSWORD</a>


    </div>
  </div>
</li>

<!-- Divider -->
<hr class="sidebar-divider">
<br>



<br>

<!-----------------------RESULTS TABLE FOR ALL THE COURSES-------------------->
<div class="sidebar-heading">
<big>RESULTS TABLE</big>
</div>
<br>
<!-- RESULTS TABLE FOR ALL CCNA STUDENTS -->


<!-- RESULTS TABLE FOR ALL CSD STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
  <i class="fas fa-fw fa-table"></i>
    <span> CSD RESULTS TABLE</span>
  </a>
  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CSD:</big></h6>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_1Page=VIEw=CSD1.1-JJD-DN=STUDENTS-Hjdi=OSPS-PAGE-Jkdiso=dDFSFUJD-DNDNjfdhnd=dkdoeyrijfd-cnfs">CSD1.1</a>
      <a class="collapse-item" href="#">CSD1.2</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_3Page=VIEW=CSD1.3-NDHDHSU=STUDENTS=Nsusjfhf=PAGE-YnDHsjdi=VGSN=Vhanxjjj-NIdJUDdii=BuGlHSUJS">CSD1.3</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_4Page=VIEW=CSD1.4-idh=dbd-ioaio=STUDENTS=ns=DAK-BDCH=PAGE-YnDHsjdi=VGSN=Vhanxjjj=Hsjhsggadyh">CSD1.4</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_5Page=VIEW=CSD1.5=Bjsdj=STUDENTS-dh=SBCHD-Polas=hdOD=PAGE-Bisdh-Naop=S=dbdb-DHsdb-BDBKD=bdjs">CSD1.5</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_6Page=VIEW=CSD1.6-BBJssd=STUDENTS=oBiLL=PAGE=Losj=Jhs-sbs-Madl=jMKOOS=DHD-hdf=dndjdh=gD=K-D">CSD1.6</a>
      <a class="collapse-item" href="${pageContext.request.contextPath }/aitiStudents/getCsd1_7Page=VIEW=CSD1.7-BBJssd=STUDENTS=DGjdjk=Ojdn-HSDB=hdbd-Nd-bsDBddh=dbbd-BDB=DBD-ndDKKD=Ouytdvbd">CSD1.7</a>
    </div>
  </div>
</li>

<br>







<li class="nav-item">
  <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
  <i class="fas fa-fw fa-table"></i>
    <span>CCNA RESULTS TABLE</span>
  </a>
  <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CCNA:</big></h6>
      <a class="collapse-item" href="ccna1.1.jsp">CCNA 1.1</a>
      <a class="collapse-item" href="#">CCNA 1.2</a>
      <a class="collapse-item" href="#">CCNA 1.3</a>
      <a class="collapse-item" href="#">CCNA 1.4</a>
      <a class="collapse-item" href="#">CCNA 1.5</a>
      <a class="collapse-item" href="#">CCNA 1.6</a>
      <a class="collapse-item" href="#">CCNA 1.7</a>
    </div>
  </div>
</li>


<br>


<!-- RESULTS TABLE FOR ALL CCNP STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">  <i class="fas fa-fw fa-table"></i>
    <span>CCNP RESULTS TABLE</span>
  </a>
  <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CCNP:</big></h6>
      <a class="collapse-item" href="#">CCNP 1.1</a>
      <a class="collapse-item" href="#">CCNP 1.2</a>
      <a class="collapse-item" href="#">CCNP 1.3</a>
      <a class="collapse-item" href="#">CCNP 1.4</a>
      <a class="collapse-item" href="#">CCNP 1.5</a>
      <a class="collapse-item" href="#">CCNP 1.6</a>
      <a class="collapse-item" href="#">CCNP 1.7</a>
    </div>
  </div>
</li>


<br>




<!-- RESULTS TABLE FOR ALL ICDL STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
  <i class="fas fa-fw fa-table"></i>
    <span>ICDL RESULTS TABLE</span>
  </a>
  <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>ICDL:</big></h6>
      <a class="collapse-item" href="icdl1.1 results.php">ICDL 1.1</a>
      <a class="collapse-item" href="#">ICDL 1.2</a>
      <a class="collapse-item" href="#">ICDL 1.3</a>
      <a class="collapse-item" href="#">ICDL 1.4</a>
      <a class="collapse-item" href="#">ICDL 1.5</a>
      <a class="collapse-item" href="#">ICDL 1.6</a>
      <a class="collapse-item" href="#">ICDL 1.7</a>
    </div>
  </div>
</li>

<br>


<!-- RESULTS TABLE FOR ALL CYBER SECURITY STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
  <i class="fas fa-fw fa-table"></i>
    <span>CYBER SECURITY RESULTS TABLE</span>
  </a>
  <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CYBER SECURITY:</big></h6>
      <a class="collapse-item" href="cyber_security1.1 results.php">CYBER SECURITY 1.1</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.2</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.3</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.4</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.5</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.6</a>
      <a class="collapse-item" href="#">CYBER SECURITY 1.7</a>
    </div>
  </div>
</li>

<br>



<!-- RESULTS TABLE FOR ALL CISA STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
  <i class="fas fa-fw fa-table"></i>
    <span>CISA  RESULTS TABLE</span>
  </a>
  <div id="collapseFive" class="collapse" aria-labelledby="headingFive" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>CISA:</big></h6>
      <a class="collapse-item" href="cisa1.1 results.php">CISA  1.1</a>
      <a class="collapse-item" href="#">CISA  1.2</a>
      <a class="collapse-item" href="#">CISA  1.3</a>
      <a class="collapse-item" href="#">CISA  1.4</a>
      <a class="collapse-item" href="#">CISA  1.5</a>
      <a class="collapse-item" href="#">CISA  1.6</a>
      <a class="collapse-item" href="#">CISA  1.7</a>
    </div>
  </div>
</li>

<br>


<!-- RESULTS TABLE FOR ALL NIS STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
  <i class="fas fa-fw fa-table"></i>
    <span>NIS RESULTS TABLE</span>
  </a>
  <div id="collapseSix" class="collapse" aria-labelledby="headingSix" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>NIS:</big></h6>
      <a class="collapse-item" href="#">NIS 1.1</a>
      <a class="collapse-item" href="#">NIS 1.2</a>
      <a class="collapse-item" href="#">NIS 1.3</a>
      <a class="collapse-item" href="#">NIS 1.4</a>
      <a class="collapse-item" href="#">NIS 1.5</a>
      <a class="collapse-item" href="#">NIS 1.6</a>
      <a class="collapse-item" href="#">NIS 1.7</a>
    </div>
  </div>
</li>


<br>

<!-- RESULTS TABLE FOR ALL DBC STUDENTS -->
<li class="nav-item">
<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseSeven" aria-expanded="true" aria-controls="collapseSeven">
  <i class="fas fa-fw fa-table"></i>
    <span>DBC RESULTS TABLE</span>
  </a>
  <div id="collapseSeven" class="collapse" aria-labelledby="headingSeven" data-parent="#accordionSidebar">
    <div class="bg-white py-2 collapse-inner rounded">
      <h6 class="collapse-header"><big>DBC:</big></h6>
      <a class="collapse-item" href="#">DBC 1.1</a>
      <a class="collapse-item" href="#">DBC 1.2</a>
      <a class="collapse-item" href="#">DBC 1.3</a>
      <a class="collapse-item" href="#">DBC 1.4</a>
      <a class="collapse-item" href="#">DBC 1.5</a>
      <a class="collapse-item" href="#">DBC 1.6</a>
      <a class="collapse-item" href="#">DBC 1.7</a>
    </div>
  </div>
</li>



<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
  <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>

</ul>
<!-- End of Sidebar -->



  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>




  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="${pageContext.request.contextPath }/aitiStudents/getAdminLoginPage=VIEW=AITI-KACE-STUDENT-ADMIN-LOGIN-PAGE=iDH-Fimbngv=SIDFF++Iobddcn=dbbdhsSDHD">Logout</a>
        </div>
      </div>
    </div>
  </div>




<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

<!-- Main Content -->
<div id="content">

  <!-- Topbar -->
  <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

    <!-- Sidebar Toggle (Topbar) -->
    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
      <i class="fa fa-bars"></i>
    </button>

    <!-- Topbar Search -->
    <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
      <div class="input-group">
        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" required>
        <div class="input-group-append">
          <button class="btn btn-primary" type="button">
            <i class="fas fa-search fa-sm"></i>
          </button>
        </div>
      </div>
    </form>

    <a href="#"><img src="${pageContext.request.contextPath }/resources/images/aiti.png" alt="" height="50"></a>

    <!-- Topbar Navbar -->
    <ul class="navbar-nav ml-auto">

      <!-- Nav Item - Search Dropdown (Visible Only XS) -->
      <li class="nav-item dropdown no-arrow d-sm-none">
        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-search fa-fw"></i>
        </a>
        <!-- Dropdown - Messages -->
        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
          <form class="form-inline mr-auto w-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2" required>
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

     <!-- Nav Item - Alerts -->
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-bell fa-fw"></i>
          <!-- Counter - Alerts -->
          <span class="badge badge-danger badge-counter">3+</span>
        </a>
        <!-- Dropdown - Alerts -->
        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
          <h6 class="dropdown-header">
            Alerts Center
          </h6>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="mr-3">
              <div class="icon-circle bg-primary">
                <i class="fas fa-file-alt text-white"></i>
              </div>
            </div>
            <div>
              <div class="small text-gray-500">December 12, 2019</div>
              <span class="font-weight-bold">Solomon Okyere results has been added successfully</span>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="mr-3">
              <div class="icon-circle bg-success">
                <i class="fas fa-donate text-white"></i>
              </div>
            </div>
            <div>
              <div class="small text-gray-500">December 7, 2019</div>
              Bismark Otu records has been updated successfully
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="mr-3">
              <div class="icon-circle bg-warning">
                <i class="fas fa-exclamation-triangle text-white"></i>
              </div>
            </div>
            <div>
              <div class="small text-gray-500">December 2, 2019</div>
              Oscar Opoku results has been added successfully
            </div>
          </a>
          <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
        </div>
      </li>

      <!-- Nav Item - Messages -->
      <li class="nav-item dropdown no-arrow mx-1">
        <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fas fa-envelope fa-fw"></i>
          <!-- Counter - Messages -->
          <span class="badge badge-danger badge-counter">7</span>
        </a>
        <!-- Dropdown - Messages -->
        <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
          <h6 class="dropdown-header">
            Message Center
          </h6>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
              <div class="status-indicator bg-success"></div>
            </div>
            <div class="font-weight-bold">
              <div class="text-truncate">Admin just login</div>
              <div class="small text-gray-500">Admin � 1m</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
              <div class="status-indicator"></div>
            </div>
            <div>
              <div class="text-truncate">CYBER SECURITY7.4 has been created successfully</div>
              <div class="small text-gray-500">Admin � 1d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
              <div class="status-indicator bg-warning"></div>
            </div>
            <div>
              <div class="text-truncate">Error Whiles logging in by Admin</div>
              <div class="small text-gray-500">Admin � 2d</div>
            </div>
          </a>
          <a class="dropdown-item d-flex align-items-center" href="#">
            <div class="dropdown-list-image mr-3">
              <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
              <div class="status-indicator bg-success"></div>
            </div>
            <div>
               <div class="text-truncate">CCNA1.8 has been crested successfully</div>
              <div class="small text-gray-500">Admin � 58m</div>
            </div>
          </a>
          <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
        </div>
      </li>

      <div class="topbar-divider d-none d-sm-block"></div>

      <!-- Nav Item - User Information -->
      <li class="nav-item dropdown no-arrow">
        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <span class="mr-2 d-none d-lg-inline text-gray-600 small">
          
          </span>
          <img class="img-profile rounded-circle" src="${pageContext.request.contextPath }/resources/images/aiti1.jpeg">
        </a>
        <!-- Dropdown - User Information -->
        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
         
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
            <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
            Logout
          </a>
        </div>
      </li>

    </ul>

  </nav>
  <!-- End of Topbar -->







   <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800 text-center">AITI-KACE CSD1.2 STUDENTS DASHBOARD</h1>
            
            
                               			<button type="submit" name="btn_pdf" class="btn btn-primary"><i class="fas fa-download fa-sm text-white-50"></i>Generate Report</button>
            
          </div>


  <!-- Begin Page Content -->
  <div class="container-fluid">


<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">AITI-KACE CSD1.2 STUDENTS DATATABLE</h6>
  </div>
  <div class="card-body">
    <div class="table-responsive">
    
    
           <div class="d-sm-flex align-items-center justify-content-between mb-4">
    
    
    <div class="container">
		<button type="button" class="btn btn-info float-left" data-toggle="modal" data-target="#myModal">Add Student</button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
					<h4 class="modal-title text-primary">ADD NEW STUDENT</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>						
					</div>
					<div class="modal-body">




						<form action="saveCsd1_2Student" method="post">

							<div class="modal-body">
							
						

								<div class="form-group">
									<label>STUDENT ID</label> 
									<input name="student_id" type="text" class="form-control" id="student_id" value="" required>
									<span id="student_id_error_message" style="color:red;"></span>
								</div>
								
								

								<div class="form-group">
									<label>STUDENT NAME</label> <input name="student_name"
										type="text" class="form-control" id="student_name" value="" required>
										<span id ="student_name_error_message" style="color:red;"></span>
								</div>
								

								<div class="form-group">
									<label>COURSE</label> 
									<select class="form-control" name="course">
										<option value="Certificate in Software Development(CSD1.2)">Certificate in Software Development(CSD1.2)</option>
									</select>
								</div>


								<div class="form-group">
									<label>EMAIL</label> <input name="email" type="email"
										class="form-control" id="email" value="" placeholder="example@play.com" required>
										<span id ="email_error_message" style="color:red;"></span>
								</div>
								


								<div class="form-group">
									<label>PHONE</label> <input name="phone" type="text"
										class="form-control" id="phone" value="" required>
										<span id ="phone_error_message" style="color:red;"></span>
								</div>
								

								<div class="form-group">
									<label>GENDER</label> 
									<select class="form-control" name="gender">
										<option>Select</option>
										<option value="Male">Male</option>
										<option value="Female">Female</option>
									</select>
								</div>


								<div class="modal-footer">
								    <button type="submit" class="btn btn-primary" onclick="return validate()" id="alert">Add</button>
									<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								</div>
							</div>

						</form>
						${result}



					</div>
				</div>

			</div>
		</div>

	</div>
    
    
    
    
<!--    



String student_id1 = request.getParameter("student_id");
//String password = request.getParameter("password");



Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/aiti_student_results?useSSL=false", "root", "");

Statement stmt = conn.createStatement();

//ResultSet rs = stmt.executeQuery("SELECT * FROM csd1_1students WHERE student_id = '"+student_id1+"' ");

String sql = "SELECT * FROM csd1_1students WHERE student_id = '"+student_id1+"'";

if(student_id1 == sql ){
	

}

%>
  -->   
    
    
        	       
         <button type="button" class="btn btn-primary text-light text-center btn-outline-success float: right"  data-toggle="collapse" data-target="#coll">Results</button> 




    		
          </div>

		
			<!-- TABLE -->
			
			
			
			
	<table id="example" class="table table-striped table-bordered"  width="100%" cellspacing="0">
       
       
       
        <thead>
		<tr>
			<th>NO</th>
			<th>STUDENT ID</th>
			<th>STUDENT NAME</th>
			<th>COURSE</th>
			<th>EMAIL</th>
			<th>PHONE</th>
			<th>GENDER</th>
			<th> ACTIONS </th>


		</tr>
	</thead>
	
	<tbody>
	
	
			<c:forEach items="${student}" var="student">

				<c:url value="getCsd1_2StudentById" var="updateURL">
					<c:param name="id" value="${student.id }"></c:param>
					<c:param name="student_id" value="${student.student_id }"></c:param>
					<c:param name="student_name" value="${student.student_name }"></c:param>
					<c:param name="course" value="${student.course }"></c:param>
					<c:param name="email" value="${student.email }"></c:param>
					<c:param name="phone" value="${student.phone }"></c:param>
					<c:param name="gender" value="${student.gender }"></c:param>

				</c:url>
	

	
				<c:url value="deleteCsd1_2StudentInfo" var="deleteURL">
				<c:param name="student_id" value="${student.student_id }"></c:param>
				</c:url>


				<tr>
				
					<td>${student.id }</td>
					<td>${student.student_id }</td>
					<td>${student.student_name }</td>
					<td>${student.course }</td>
					<td>${student.email }</td>
					<td>${student.phone }</td>
					<td>${student.gender }</td>
					<td><a href="${updateURL }"><i class="fa fa-edit color-primary" title="Edit Record"></i></a>
					<!-- 
					<td><a href="${updateURL }"><img src="${pageContext.request.contextPath }/resources/images/Update.png" width="50" height="50"></a></td>
					 -->
					<a href="${deleteURL }" onclick="if (!confirm('Are you sure you want to delete this student')) return false"><i class="fa fa-trash-alt color-danger" title="Delete Record"></i></a></td>
				</tr>


			</c:forEach>
	
	</tbody>
	
	
       
       
 
       
      </table>
			
			




    </div>
  </div>
</div>





<script>

$(document).ready( function () {
    $('#example').DataTable();
} );

</script>






</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->













<br/><br/><br/><br/>




<div id="coll" class="collapse">







 <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800 text-center">AITI-KACE CSD1.2 STUDENT RESULTS </h1>
          </div>


  <!-- Begin Page Content -->
  <div class="container-fluid">


<!-- DataTales Example -->
<div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">AITI-KACE STUDENTS RESULTS DATATABLE</h6>
  </div>
  <div class="card-body">
    <div class="table-responsive">
    
    
    
    
    
    
         
                                         <!-- CSD1.1 STUDENT RESULT ADD FORM  -->
                                         
                                         
                                         
                                         
                                         
   
	
    
    
    
    
    
    

		

		
			<!-- TABLE -->
			
			
			
			
			<table id="results" class="table table-striped table-bordered"  width="100%" cellspacing="0">
       
       
       
        <thead>
		<tr><th>NO</th>
			<th>STUDENT ID</th>
			<th>FOC</th>
			<th>HTML/CSS</th>
			<th>JAVASCRIPT</th>
			<th>SE</th>
			<th>DATABASE</th>
			<th>PYTHON</th>
			<th> ACTIONS </th>


		</tr>
	</thead>
	
	<tbody>
	
	
			<c:forEach items="${studentResults}" var="csd1_2StudentResults">

				<c:url value="getCsd1_2StudentResultsById" var="updateURL">
					<c:param name="id" value="${csd1_2StudentResults.id }"></c:param>
					<c:param name="student_id" value="${csd1_2StudentResults.student_id }"></c:param>
					<c:param name="foc" value="${csd1_2StudentResults.foc }"></c:param>
					<c:param name="html_css" value="${csd1_2StudentResults.html_css }"></c:param>
					<c:param name="javascript" value="${csd1_2StudentResults.javascript }"></c:param>
					<c:param name="se" value="${csd1_2StudentResults.se }"></c:param>
					<c:param name="database_tec" value="${csd1_2StudentResults.database_tec }"></c:param>
					<c:param name="python" value="${csd1_2StudentResults.python }"></c:param>
				</c:url>
	

	
					<c:url value="deleteCsd1_2StudentResults" var="deleteURL">
					<c:param name="student_id" value="${csd1_2StudentResults.student_id }"></c:param>
				</c:url>


				<tr>
					<td>${csd1_2StudentResults.id }  </td>
					<td>${csd1_2StudentResults.student_id }  </td>
					<td>${csd1_2StudentResults.foc }</td>
					<td>${csd1_2StudentResults.html_css }</td>
					<td>${csd1_2StudentResults.javascript }</td>
					<td>${csd1_2StudentResults.se }</td>
					<td>${csd1_2StudentResults.database_tec }</td>
					<td>${csd1_2StudentResults.python }</td>

							<td><a href="${updateURL }"><i class="fa fa-edit" title="Edit Record"></i></a>
					<!-- 
					<td><a href="${updateURL }"><img src="${pageContext.request.contextPath }/resources/images/Update.png" width="50" height="50"></a></td>
					 -->
					<a href="${deleteURL }" onclick="if (!confirm('Are you sure you want to delete this student')) return false"><i class="fa fa-trash-alt" title="Delete Record"></i></a></td>
				</tr>

				
			</c:forEach>
	
	</tbody>
 
       
       
 
       
      </table>
       
			
			
			


    </div>
  </div>
</div>









</div>

















</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->








<a class="gotopbtn" href="#"><img src="${pageContext.request.contextPath }/resources/images/arrow1.png" width="30px" height="30px"></a>





<!-- Footer -->
<footer class="sticky-footer bg-white">
<div class="container my-auto">
<div class="copyright text-center my-auto">
  <span>Copyright &copy; AITI-KACE 2021</span>
</div>
</div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->


















<script>

$(document).ready( function () {
    $('#results').DataTable();
} );

</script>

<!--
<script type="text/javascript">

var alert = document.getElementById("alert");

alert.addEventListener("click", function(){
	
	var student_id = document.getElementById("student_id").value;
	var student_name = document.getElementById("student_name").value;
	var email = document.getElementById("email").value;
	var phone = document.getElementById("phone").value;
	
	var nametype = /^[A-Z a-z]+$/;
	var emailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	
	
	if (student_id == ""){
		swal ( "Error", "Student ID should not be empty", "error");
        return false;
    }
	
	else if (student_name == ""){
		swal ( "Error", "Student Name should not be empty", "error");
        return false;
    }
	else if (nametype.test(student_name) == false){
		swal ( "Error", "Student Name should be only Characters", "error");
        return false;
    }
	
	
	else if (email == ""){
        swal ( "Error", "Email should not be empty", "error");
        return false;
    }
	else if  (emailformat.test(email)== false){
        swal ( "Error", "Enter A Valid Email", "warning");
        return false;
    }
	
	
	else if (phone == ""){
        swal ( "Error", "Phone Number should not be empty", "error");
        return false;
    }
	else if (isNaN(phone)){
		swal ( "Error", "Phone Number must be only digits", "warning");
        return false;
	}
	else if (phone.length<10){
		swal ( "Error", "Phone Number must be 10 digits", "warning");
        return false;
	}
	
	else if (phone.length>10){
		swal ( "Error", "Phone Number must be 10 digits", "warning");
        return false;
	}

	else if ((phone.charAt(0) != 0)){
		swal ( "Error", "Phone Number must begin with 0");
        return false;
	}
	
	else {
		
		swal ( "Success", "CSD1.1 Student Added Successfully", "success");
	}
	
	
	
	
})


</script>
-->


<script type="text/javascript">

function validate(){
	
	var student_id = document.getElementById("student_id").value;
	var student_name = document.getElementById("student_name").value;
	var email = document.getElementById("email").value;
	var phone = document.getElementById("phone").value;
	
	
	var nametype = /^[A-Z a-z]+$/;
    var emailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	
	
	if (student_id == ""){
        document.getElementById("student_id_error_message").innerHTML="** Student Id required;
        return false;
    }
	
	else if (student_name == ""){
        document.getElementById("student_name_error_message").innerHTML="** Student Name required;
        return false;
    }
	else if (nametype.test(student_name) == false){
        document.getElementById("student_name_error_message").innerHTML="** Student Name should be only Characters";
        return false;
    }
	
	
	else if (email == ""){
        document.getElementById("email_error_message").innerHTML="** Email should required;
        return false;
    }
	else if  (emailformat.test(email)== false){
        document.getElementById("email_error_message").innerHTML="** Enter A Valid Email";
        return false;
    }
	
	
	else if (phone == ""){
        document.getElementById("phone_error_message").innerHTML="** Phone Number required";
        return false;
    }
	else if (isNaN(phone)){
		document.getElementById("phone_error_message").innerHTML="** Phone Number must be only digits";
        return false;
	}
	else if (phone.length<10){
		document.getElementById("phone_error_message").innerHTML="** Phone Number must be 10 digits";
        return false;
	}
	
	else if (phone.length>10){
		document.getElementById("phone_error_message").innerHTML="** Phone Number must be 10 digits";
        return false;
	}

	else if ((phone.charAt(0) != 0)){
		text = "Phone Number must with 0";
		document.getElementById("phone_error_message").innerHTML="** Phone Number must begin with 0";
        return false;
	}
	

	else {
		
		swal({
			  title: "Success!",
			  text: "CSD1.1 STUDENT ADDED SUCCESSFULLY!",
			  icon: "success",
			  button: "Proceed to add Student Results",
			});
	}
	return true;


	
}
</script>




<!-- 
<script>

$('#alert').click(function(){
	
	swal({
		  title: "Success!",
		  text: "CSD1.1 STUDENT ADDED SUCCESSFULLY!",
		  icon: "success",
		  button: "Proceed to add Student Results",
		});
});

</script>

--->

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">window.$crisp=[];window.CRISP_WEBSITE_ID="f2335702-9774-4b1c-b0da-c92f58fbccc6";(function(){d=document;s=d.createElement("script");s.src="https://client.crisp.chat/l.js";s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})();</script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/42d3376bce.js" crossorigin="anonymous"></script>




</body>
</html>