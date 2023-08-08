<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin Home page</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Simple line icons-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/styles.css" rel="stylesheet" />
    </head>
   <!--   <%
	session = request.getSession();
	String s1 = (String) session.getAttribute("username");
	out.println(s1 +" "+ "Welcome to your account. Please select an operation to perform.");
	%> --> 	
<body>
<body id="page-top">
        
       
        <!-- Services-->
        <section class="content-section bg-primary text-white text-center" id="services">
            <div class="container px-4 px-lg-5">
                <div class="content-section-heading">
                    <h1 class="text-secondary mb-5">Admin Services</h1>
                    <!-- <h2 class="mb-5"> Offer</h2> -->
                </div>
                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                        <a href="CreateStudent.html">
                            <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-screen-smartphone"></i></span>
                        </a>
                        <h4><strong>Add Student</strong></h4>
                        <!-- <p class="text-faded mb-0">Looks great on any screen size!</p> -->
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                    <a href="createProfessor.html">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-pencil"></i></span>
                        </a>
                        <h4><strong>Add Professor</strong></h4>
                        <!-- <p class="text-faded mb-0">Freshly redesigned for Bootstrap 5.</p> -->
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
                    <a href="createCourse.html">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-like"></i></span>
                        </a>
                        <h4><strong>Add Course</strong></h4>
                   
                    </div>
                    <div class="col-lg-3 col-md-6">
                    <a href="Removestudent.jsp"> 
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-mustache"></i></span>
                        </a>
                        <h4><strong>Remove Student</strong></h4>
                        <!-- <p class="text-faded mb-0">I mustache you a question...</p> -->
                    </div>
                </div>

                <div class="row gx-4 gx-lg-5">
                    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                        <a href="removeProfessor.jsp">
                            <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-screen-smartphone"></i></span>
                        </a>
                        <h4><strong>Remove Professor</strong></h4>
                        <!-- <p class="text-faded mb-0">Looks great on any screen size!</p> -->
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
                    <a href="removeCourse.jsp">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-pencil"></i></span>
                        </a>
                        <h4><strong>Remove Course</strong></h4>
                        <!-- <p class="text-faded mb-0">Freshly redesigned for Bootstrap 5.</p> -->
                    </div>
                    <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
                    <a href="viewCourse.jsp">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-like"></i></span>
                        </a>
                        <h4><strong>View All Courses</strong></h4>
                    
                    </div>
                    <div class="col-lg-3 col-md-6">
                    <a href="viewProfessor.jsp">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-mustache"></i></span>
                        </a>
                        <h4><strong>View All Professor</strong></h4>
                        <!-- <p class="text-faded mb-0">I mustache you a question...</p> -->
                    </div>
                    <div class="col-lg-3 col-md-6">
                    <a href="viewStudent.jsp">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-mustache"></i></span>
                        </a>
                        <h4><strong>View All Students</strong></h4>
                        <!-- <p class="text-faded mb-0">I mustache you a question...</p> -->
                    </div>
                    <div class="col-lg-3 col-md-6">
                    <a href="assignCoursetoProfessor.jsp">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-mustache"></i></span>
                        </a>
                        <h4><strong>Enroll Professor in a Course</strong></h4>
                        <!-- <p class="text-faded mb-0">I mustache you a question...</p> -->
                    </div>
                    <div class="col-lg-3 col-md-6">
                    <a href="LogoutController">
                        <span class="service-icon rounded-circle mx-auto mb-3"><i class="icon-mustache"></i></span>
                        </a>
                        <h4><strong>LogOut</strong></h4>
                        <!-- <p class="text-faded mb-0">I mustache you a question...</p> -->
                    </div>
                </div>
            </div>
        </section>
      
        <!-- Footer-->
        <footer class="footer text-center">
            <div class="container px-4 px-lg-5">
                <!-- <ul class="list-inline mb-5">
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-facebook"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white mr-3" href="#!"><i class="icon-social-twitter"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a class="social-link rounded-circle text-white" href="#!"><i class="icon-social-github"></i></a>
                    </li>
                </ul> -->
                <p class="text-muted small mb-0">Copyright &copy; Course Management Portal 2023</p>
            </div>
     
    </body>
</html>