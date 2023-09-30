<%@page import="entity.createAccount"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Loan Management System</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <style>
    body {
      font-family: Arial, sans-serif;
      color: black;
      background-color: #f8f9fa;
    }
    
    hr
    {
        margin-top:30px;    
        border: 4px solid rgb(104, 104, 104);
    }
    
    .navbar {
      margin-bottom: 20px;
    }
    
    .containers {
      position: relative;
      height: 82vh;
      background-image: url('https://media.istockphoto.com/id/1317735314/photo/loan-mortgage.webp?b=1&s=170667a&w=0&k=20&c=0h2eXFxZBahx1eKyNxGcppw9rNnnzQ9AO8c5UDSjExE=');
      background-size: cover;
      background-position: center;
      display: flex;
      flex-direction: column;
      text-align:right;
    }
    .containers h1{
     padding-top:40px;
     padding-right : 200px;
    }
    
    .card-container {
      display: flex;
      justify-content: flex-end;
      align-items: flex-end;
      margin-top:300px;
    }
    
    .card {
      width: 200px;
      background-color: cyan;
      border-radius: 8px;
      padding: 20px;
      text-align:center;
      margin-right: 20px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
  
    .criteria {
      font-size: 24px;
      margin-bottom: 20px;
    }
    
    .additional-info {
      background-color:rgb(243, 242, 240);
      margin-top: 20px;
      padding-top:50px;
      font-size: 18px;
      line-height: 1.5;
      text-align: center;
      list-style-position: inside;
    }
    
    .additional-info h1 {
      font-size: 36px;
      margin-bottom: 20px;
      font-weight: bold;
      
    }
    
    .additional-info p {
      margin-bottom: 10px;
    }
    
    .additional-info .highlight {
      color:#080258;
      font-weight: bold;
    }
    
    .apply-button {
      margin-top: 20px;
      padding-right: 270px;
    }
    
    .document{
      padding: 20px;
      background-color: white;
      border-radius: 8px;
      margin:5px;
      text-align:left;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
    
    .guide{
      max-width: 600px;
      margin: 0 auto;
      padding: 20px;
      text-align: left;
      padding-left:100px;
    }

    .guide h4 {
      font-size: 20px;
      margin-bottom: 10px;
    }

    .guide ol {
      list-style-type: none;
      counter-reset: step;
      padding-left: 0;
    }

    .guide li {
      position: relative;
      margin-bottom: 15px;
    }

    .guide li:before {
      counter-increment: step;
      content: counter(step);
      background-color: #4285F4;
      color: #fff;
      border-radius: 50%;
      width: 24px;
      height: 24px;
      display: inline-block;
      text-align: center;
      line-height: 24px;
      margin-right: 10px;
    }

    .guide li:last-child:before {
      background-color: #888;
    }

    .guide li:after {
      content: '';
      position: absolute;
      top: 12px;
      left: 18px;
      height: 100%;
      border-left: 2px dashed #999;
    }
    
    .calculator{
     height:50vh;
     background-color:#080258;
     background-size: cover;
     position:relative;
     color:white;
     }
     
     .btn{
     	background-color:#080258;
     	color:white;
     }
     
     h3{
      text-align:center;
     }
     .d-flex{
     	
     }
    
    
    /*-------------------------- footer---------------------------------------*/
		footer .main-footer{  
		padding: 20px 0;  
		background: #2d011d;
		}
		
		footer ul{  
		padding-left: 0;  
		list-style: none;
		}
		
		/* Copy Right Footer */
		.footer-copyright { 
		background: rgb(16, 0, 12); 
		padding: 5px 0;
		}
		.footer-copyright .logo {   
		 display: inherit;
		 }
		 
		.footer-copyright nav {    float: right;    margin-top: 5px;}
		.footer-copyright nav ul {  list-style: none; margin: 0;  padding: 0;}
		.footer-copyright nav ul li { border-left: 1px solid #505050; display: inline-block;  line-height: 12px;  margin: 0;  padding: 0 8px;}
		.footer-copyright nav ul li a{  color: #969696;}
		.footer-copyright nav ul li:first-child { border: medium none;  padding-left: 0;}
		.footer-copyright p { color: #969696; margin: 2px 0 0;}
		
		/* Footer Top */
		.footer-top{  background: #252525;  padding-bottom: 30px; margin-bottom: 30px;  border-bottom: 3px solid #222;}
		
		/* Footer transparent */
		footer.transparent .footer-top, footer.transparent .main-footer{  background: transparent;}
		footer.transparent .footer-copyright{ background: none repeat scroll 0 0 rgba(0, 0, 0, 0.3) ;}
		
		/* Footer light */
		footer.light .footer-top{ background: #f9f9f9;}
		footer.light .main-footer{  background: #f9f9f9;}
		footer.light .footer-copyright{ background: none repeat scroll 0 0 rgba(255, 255, 255, 0.3) ;}
		
		/* Footer 4 */
		.footer- .logo {    display: inline-block;}
		
		
/*==================== 
  Widgets 
====================== */
.widget{  padding: 20px;  margin-bottom: 40px;}
.widget.widget-last{  margin-bottom: 0px;}
.widget.no-box{ padding: 0; background-color: transparent;  margin-bottom: 40px;
  box-shadow: none; -webkit-box-shadow: none; -moz-box-shadow: none; -ms-box-shadow: none; -o-box-shadow: none;}
.widget.subscribe p{  margin-bottom: 18px;}
.widget li a{ color: #ffffffc1;}
.widget li a:hover{ color: #aaa;text-decoration: none;}
.widget-title
 {
    margin-bottom: 20px;
    font-size: 25px;
    color: #ffffffc1;
    padding-top: 15%;
    
}
.widget-title span {background: #839FAD none repeat scroll 0 0;display: block; height: 1px;margin-top: 25px;position: relative;width: 20%;}
.widget-title span::after {background: inherit;content: "";height: inherit;    position: absolute;top: -4px;width: 50%;}
.widget-title.text-center span,.widget-title.text-center span::after {margin-left: auto;margin-right:auto;left: 0;right: 0;}
.widget .badge{ float: right; background: #7f7f7f;}

.typo-light h1, 
.typo-light h2, 
.typo-light h3, 
.typo-light h4, 
.typo-light h5, 
.typo-light h6,
.typo-light p,
.typo-light div,
.typo-light span,
.typo-light small{  color: #ffffffc1;}

ul.social-footer2 { margin: 0;padding: 0; width: auto;}
ul.social-footer2 li {display: inline-block;padding: 0;}
ul.social-footer2 li a:hover {background-color:#ff8d1e;}
ul.social-footer2 li a {display: block; height:30px;width: 30px;text-align: center;}

.fa {
    display: inline-block;
    font: normal normal normal 14px/1 FontAwesome;
    background-color: #150010;
    color: #ffffffc1;
    padding: 9px;
    border-radius: 5px;
}

/* Dropdown styles */
        .dropdown {
            position: relative;
            display: inline-block;
            cursor: pointer;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            padding: 12px;
            border: 1px solid #ddd;
            z-index: 1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
  </style>
</head>
<body>

  <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">LoanBazar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about.html">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Loans
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Home Loan</a></li>
                            <li><a class="dropdown-item" href="#">Eduaction loan</a></li>
                            <li><a class="dropdown-item" href="#">Vehicle Loan</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact.html">Contact Us</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </form>
                <div class="user-profile dropdown">
            <img src="ImageServlet" alt="User Avatar" width="48px" height="48px">
            <div class="dropdown-content">
<%!createAccount cobj; %>
<%
if(!session.isNew()) {
	cobj=(createAccount)session.getAttribute("cobj");
}
%>
                <%out.print("Welcome\n" + cobj.getAccName()); %>
                <%out.print("Welcome\n" + cobj.getAccNo()); %>
                <a href="LogoutServlet">Logout</a>
            </div>
        </div>
            </div>
        </div>
    </nav>
  
  <div class="containers">
    <h1>Home Loan Information</h1>
    <h4>"Unlock the Door to Your Dream Home with Our Hassle-Free Home Loans."</h4>
    <div class="container text-right apply-button">
    <form action="verifyAccount.jsp">
    <button class="btn btn-outline-light btn-lg">Apply Now</button>
    </form>
  	</div> 
  	<div class="card-container">
      <div class="card">
        <h5>Easy Online Application</h5>       
      </div>
      
      <div class="card">
        <h5>Mobile-Friendly Experience</h5>
      </div>
      
      <div class="card">
        <h5>Online Account Management</h5>
      </div>
    </div>
   </div>

<section class="additional-info">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-3 col-12 my-3 text-center">
                <h4 class="highlight">Loan of Rs. 10 Crore</h4>
          		<p>Buying a home is one of the biggest milestones. Achieve it with a sizable loan amount of Rs. 10 crore.</p>
            </div>

            <div class="col-sm-12 col-md-6 col-lg-3 col-12 my-3 text-center">
                 <h4 class="highlight">Low Interest Rates</h4>
          		 <p>With our loan, interest rates are starting at 7% p.a.</p>
            </div>
            
            <div class="col-sm-12 col-md-6 col-lg-3 col-12 my-3 text-center">
                <h4 class="highlight">Approval in 48 Hours</h4>
          		<p>Your loan application will be approved within 48 hours of your application, in some cases, even earlier.</p>
            </div>

            <div class="col-sm-12 col-md-6 col-lg-3 col-12 my-3 text-center">
                 <h4 class="highlight">Tenure of up to 40 Years</h4>
                 <p>Pay back your loan comfortably with our long repayment tenure ranging up to 40 years.</p>
            </div>   
        </div>
    </div>
</section>
<hr>
  
<section class="additional-info">
  <h2 class="highlight">Eligibility Criteria and Documents Required</h2>
  <p>Anyone can apply for our home loan as long as they meet the criteria mentioned below.</p>
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-md-6 col-lg-6 col-12 my-3">
        <div class="document" >
          <h4 class="highlight">Eligibility Criteria</h4>
          <p>Nationality: You must be an Indian citizen residing in India</p>
          <p>Age: A salaried applicant must be between 23 to 62 years and self-employed professional must be between 25 to 70 years.</p>
          <p>CIBIL Score: A CIBIL Score of 750 or higher is ideal to get a home loan.</p>
          <p>Occupation: Salaried, self-employed professionals like doctors, and self-employed non-professionals are eligible to apply.</p>
        </div>
      </div>

      <div class="col-sm-12 col-md-6 col-lg-6 col-12 my-3">
        <div class="document" >
          <h4 class="highlight">Documents required</h4>
          <p>KYC documents(identify and address proof)</p>
          <p>Proof of income(salary slips or P&amp;L statement)</p>
          <p>Proof of business(for self-employed applicants)</p>
          <p>Account statements for the last 6 months</p>
        </div>
      </div>
    </div>
  </div>
</section>
    <hr>
    <!-- Loan Calculator -->
    <div class="calculator">
    	<h3>Home Loan Calculator</h3>
    </div> 
    <hr>
    <div class="guide">
      <h4>Step-by-Step Guide to Applying for a Home Loan</h4>
      <ol>
        <li>Click on the 'Apply' button on this page.</li>
        <li>Enter all the required details.</li>
        <li>Select the type of loan you wish to apply for.</li>
        <li>Generate and submit your OTP to verify your phone number.</li>
        <li>Upon OTP verification, enter additional details.</li>
        <li>After filling all the necessary details, click on the 'SUBMIT' button.</li>
      </ol>
    </div>
  </div>
  
<!-- footer -->
<footer id="footer" class="footer-1">
  <div class="main-footer widgets-dark typo-light">
  <div class="container">
  <div class="row">
  
    <div class="col-xs-12 col-sm-6 col-md-3">
  <div class="widget subscribe no-box">
  <h5 class="widget-title">LoanBazar<span></span></h5>
  <p>Address:Linkcode Technologies,Barve memorial complex, J.M. road, Pune</p>
  <p><i class="fa fa-envelope"></i>loanbazar420@gmail.com</p>
  <p><i class="fa fa-phone"></i>0751754321</p>
  </div>
  </div>
  
    
  <div class="col-xs-12 col-sm-6 col-md-3">
  <div class="widget no-box">
  <h5 class="widget-title">Quick Links<span></span></h5>
  <ul class="thumbnail-widget">
	  <li>
	  	<div class="thumb-content"><a href="home.html">Home</a></div> 
	  </li>
	  <li>
	  	<div class="thumb-content"><a href="aboutUs.html">About Us</a></div> 
	  </li>
	  <li>
	     <div class="thumb-content"><a href="loan.html">Loans</a></div> 
	  </li>
  </ul>
  </div>
  </div>
  
    
  
  <div class="col-xs-12 col-sm-6 col-md-3">
  <div class="widget no-box">
  	<h5 class="widget-title">Loans<span></span></h5>
  		<p>Home Loan</p>
  		<p>Vehicle Loan</p>
  		<p>Education Loan</p>
  </div>
  </div>
  <br>
    <br>
  
  
  <div class="col-xs-12 col-sm-6 col-md-3">
  <div class="widget no-box">
      <h5 class="widget-title">Contact us<span></span></h5>
              <a href="#"><i class="fa fa-facebook"></i> </a>
              <a href="#"><i class="fa fa-twitter"></i> </a>
              <a href="#"><i class="fa fa-linkedin"></i></a>
              <a href="#"><i class="fa fa-instagram"></i></a>
       
       <br>
       <p>Privacy Policies</p>
      <p>CA Residents Privacy Rights</p>
  </div>
      
  </div>
  
  </div>
  </div>
  </div>
    
  <div class="footer-copyright">
  <div class="container">
  <div class="row">
  <div class="col-md-12 text-center">
  <p>Copyright@ 2023 | LoanBazar</p>
  </div>
  </div>
  </div>
  </div>
  </footer>   
  
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j">
</script>
</body>
</html>