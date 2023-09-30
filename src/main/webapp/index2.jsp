<%@page import="entity.createAccount"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Loan Management System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .card-container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px;
        }

        .card {
            width: 28rem;
            margin: 10px;
        }

        .about-container {
            margin: 0 auto;
            padding: 40px;
        }

        .about-heading {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .about-text {
            margin-bottom: 20px;
        }
        
        .carousel-item img {
		    height: 70vh;
		    object-fit: cover; 
		}
		
		.btn-outline-light {
	        background-color: #090e41;
	        color: #ffffff;
	        transition: background-color 0.3s, color 0.3s; /* Add transition for smooth effect */
		    }
		
		    .btn-outline-light:hover {
		        background-color:white; 
		        color:#090e41;
		    }
		    
		    .img-fluid {
		        height: 550px;
		        width: 400px;
		    }
    

    /* /---------------------------Calculator-----------------------------------/   */
      /* calculator */
      .calculator {
    font-family: "Open Sans", sans-serif;
    font-size: 15px;
    height: 100%;
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    /* background-color: #bab5e3; */
    background-color: #090e41;
  }

  .containercal {
    height: 600px;
    width: 1200px;
    border-radius: 20px;
    padding: 20px;
    margin: 50px 0;
    background-image: linear-gradient(to bottom left, #e4dfec, white, white);
  }

  .sub-containercal {
    display: flex;
    width: 100%;
    gap: 50px;
    height: max-content;
  }

  .header {
    width: 100%;
    height: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 30px;
  }

  .header button {
    height: max-content;
    width: max-content;
    padding: 10px;
    border: none;
    background-color: transparent;
    font-size: 35px;
    color: #9088d2;
  }

  .header button:hover {
    cursor: pointer;
  }

  .view,
  .breakup {
    width: 50%;
  }

  .details input {
    width: 100%;
  }

  .detail {
    display: flex;
    justify-content: space-between;
  }

  /* .footer {
    display: flex;
    justify-content: space-between;
  } */

  /* /----- Styling the sliders ----/ */
  input[type="range"] {
    -webkit-appearance: none;
    margin: 10px 0;
    width: 100%;
  }

  input[type="range"]:focus {
    outline: none;
  }

  input[type="range"]::-webkit-slider-runnable-track {
    width: 100%;
    height: 6px;
    cursor: pointer;
    background: #9088d2;
    border-radius: 10px;
  }

  input[type="range"]::-webkit-slider-thumb {
    box-shadow: 2px 2px 5px #b3b3b3, -1px -1px 3px grey;
    border: 5px solid #ffffff;
    height: 20px;
    width: 20px;
    border-radius: 50%;
    background: #9088d2;
    cursor: pointer;
    margin-top: -6px;
    -webkit-appearance: none;
  }

  input[type="range"]:focus::-webkit-slider-runnable-track {
    background: #b3b3b3;
  }

  input[type="range"]::-moz-range-track {
    width: 100%;
    height: 6px;
    cursor: pointer;
    background: #9088d2;
    border-color: transparent;
    border-width: 16px 0;
    color: transparent;
    border-radius: 10px;
  }

  input[type="range"]::-moz-range-thumb {
    box-shadow: 2px 2px 5px #b3b3b3, -1px -1px 3px grey;
    border: 5px solid #ffffff;
    height: 20px;
    width: 20px;
    border-radius: 50%;
    background: #9088d2;
    cursor: pointer;
    margin-top: -6px;
  }

  input[type="range"]::-ms-track {
    width: 100%;
    height: 6px;
    cursor: pointer;
    background: #9088d2;
    border-color: transparent;
    border-width: 16px 0;
    color: transparent;
    border-radius: 10px;
  }

  input[type="range"]::-ms-fill-lower {
    background: #9088d2;
    border-radius: 5px;
  }

  input[type="range"]::-ms-fill-upper {
    background: #9088d2;
    border-radius: 5px;
  }

  input[type="range"]::-ms-thumb {
    box-shadow: 2px 2px 5px #b3b3b3, -1px -1px 3px grey;
    border: 5px solid #ffffff;
    height: 20px;
    width: 20px;
    border-radius: 50%;
    background: #9088d2;
    cursor: pointer;
    margin-top: -6px;
  }

  input[type="range"]:focus::-ms-fill-lower {
    background: #9088d2;
  }

  input[type="range"]:focus::-ms-fill-upper {
    background: #9088d2;
  }

  /* /-------------------------------------/ */
  #price {
    color: #130f31;
    font-size: 25px;
  }

  .loan-details {
    width: 90%;
    display: flex;
    justify-content: space-between;
    gap: 30px;
  }

  #price-container {
    color: #9088d2;
    margin-top: 50px;
  }

  #price-container::before {
    content: "Monthly Payable:";
    font-size: 12px;
    display: block;
  }  
    /* /-------------------------- footer---------------------------------------/ */
		footer .main-footer{  
            padding: 20px 0;  
            /* background: #2d011d; */
            background: #090e41;
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
    </style>
</head>
<body>
<%!createAccount cobj; %>
<%
if(!session.isNew()) {
	cobj=(createAccount)session.getAttribute("cobj");
}
%>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark " style="background-color: #090e41;">
        <div class="container">
            <a class="navbar-brand" href="#">LoanBazar</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="index2.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#aboutUs">About</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            Loans
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="homeloan.html">Home Loan</a></li>
                            <li><a class="dropdown-item" href="educationLoan.html">Education Loan</a></li>
                            <li><a class="dropdown-item" href="carLoan.html">Car Loan</a></li>
                            
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.html">Contact Us</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-light" type="submit">Search</button>
                </form>
                <div class="mx-2" style="color: white;">
    				<%out.print("Welcome\n" + cobj.getEmail()); %>
				</div>
            </div>
        </div>
    </nav>

   
  <!-- Carousel -->
<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
    <ol class="carousel-indicators">
        <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"></li>
        <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"></li>
        <li data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://images.unsplash.com/photo-1626178793926-22b28830aa30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h2>Welcome to LoanBazar</h2>
                <p>"Empowering Your Financial Journey"</p>
                <button class="btn btn-outline-light" style="background-color: #090e41;">Home Loan</button>
                <button class="btn btn-outline-light" style="background-color: #090e41;">Educational Loan</button>
                <button class="btn btn-outline-light" style="background-color: #090e41;">Vehicle Loan</button>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://plus.unsplash.com/premium_photo-1661540409860-fe00bb21a51c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1332&q=80" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h2>Welcome to LoanBazar</h2>
                <p>"Unlocking Your Loan Potential"</p>
                <button class="btn btn-outline-light" style="background-color: #090e41;">Home Loan</button>
                <button class="btn btn-outline-light" style="background-color: #090e41;">Educational Loan</button>
                <button class="btn btn-outline-light" style="background-color: #090e41;">Vehicle Loan</button>
            </div>
        </div>
        <div class="carousel-item">
            <img src="https://plus.unsplash.com/premium_photo-1661778836994-7365ef3b6782?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80" class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h2>Welcome to LoanBazar</h2>
                <p>"Transforming Loans, Empowering Lives"</p>
                <button class="btn btn-outline-light" style="background-color: #090e41;">Home Loan</button>
                <button class="btn btn-outline-light" style="background-color: #090e41;">Educational Loan</button>
                <button class="btn btn-outline-light" style="background-color: #090e41;">Vehicle Loan</button>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </a>
</div>

<!-- About -->

<div class="about-container">
    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 col-12 my-3">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsMrtfW7fHWllpZpzJyp6x0NNXj7DzmIPUBNWaZz1bgTLgTPiQrQDFsjK047a2LgW9xOg&usqp=CAU" alt="Loan Image" class="img-fluid">
        </div>

        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-8 col-12 my-3">
            <h2 class="text-center mb-4">About LoanBazar</h2>

            <div class="about-content">
                <h3 class="about-heading">Our Mission</h3>
                <p class="about-text">We aim to provide efficient and reliable loan management solutions to individuals and businesses. Our mission is to simplify the loan process, offer competitive interest rates, and assist our clients in achieving their financial goals.</p>

                <h3 class="about-heading">Our Vision</h3>
                <p class="about-text">We envision a world where access to loans is seamless, transparent, and tailored to individual needs. We strive to become the leading loan management platform, empowering borrowers with financial freedom and lenders with secure investment opportunities.</p>

                <h3 class="about-heading">Why Choose Us</h3>
                <ul class="about-list">
                    <li>Experienced team with in-depth knowledge of the loan industry.</li>
                    <li>Streamlined loan application and approval process.</li>
                    <li>Flexible loan options to suit different financial situations.</li>
                    <li>Competitive interest rates and favorable repayment terms.</li>
                    <li>Excellent customer support for any loan-related queries.</li>
                    <li>Secure and confidential handling of personal and financial information.</li>
                </ul>
            </div>
        </div>
    </div>
</div>




    <!-- Cards -->
    <div class="card-container">
        <div class="card">
            <img src="https://source.unsplash.com/700x500/?tech,home,loan" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Home Loan</h5>
                <p class="card-text">Get a loan to purchase your dream home.</p>
                <a href="homeloan.html" class="btn btn-outline-light" style="background-color: #090e41;">Apply Now</a>
            </div>
        </div>

        <div class="card">
            <img src="https://source.unsplash.com/700x500/?tech,education,loan" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Education Loan</h5>
                <p class="card-text">Fund your education and invest in your future.</p>
                <a href="#" class="btn btn-outline-light" style="background-color: #090e41;">Apply Now</a>
            </div>
        </div>

        <div class="card">
            <img src="https://source.unsplash.com/700x500/?tech,vehicle,loan" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Vehicle Loan</h5>
                <p class="card-text">Finance the purchase of your new vehicle.</p>
                <a href="#" class="btn btn-outline-light" style="background-color: #090e41;">Apply Now</a>
            </div>
        </div>
    </div>
    <div class="calculator">
        <div class="containercal">
            <div class="row">
            <div class="col-sm-12 col-md-6 col-lg-6 col-12 my-3">
            <div class="header">
              <h1 style="color: #6258A8">Loan Calculator</h1>
              <button>
                <i class="bi bi-list"></i>
              </button>
            </div>
            <div class="sub-containercal">
              <div class="view">
                <div class="details">
                  <div>
                    <div class="detail">
                      <p style="color: #9088D2">Amount</p>
                      <p id="loan-amt-text" style="color: #6258A8"></p>
                    </div>
                    <input type="range" id="loan-amount" min="0" max="10000000" step="50000">
                  </div>
                  <div>
                    <div class="detail">
                      <p style="color: #9088D2">Length</p>
                      <p id="loan-period-text" style="color: #6258A8"></p>
                    </div>
                    <input type="range" id="loan-period" min="1" max="30" step="1">
                  </div>
                  <div>
                    <div class="detail">
                      <p style="color: #9088D2">% Interest</p>
                      <p id="interest-rate-text" style="color: #6258A8"></p>
                    </div>
                    <input type="range" id="interest-rate" min="1" max="15" step="0.5">
                  </div>
                </div>
                
                <div class="footer">
                  <p id="price-container"><span id="price">0</span>/mo</p>
                </div>
              </div>
              <div class="breakup">
                <canvas id="pieChart"></canvas>
              </div>
            </div>
        
            <div>
              <div class="loan-details">
                <div class='chart-details'>
                  <p style="color: #9088D2">Principal</p>
                  <p id="cp" style="color: #130F31; font-size: 17px;"></p>
                </div>
                <div class='chart-details'>
                  <p style="color: #9088D2">Interest</p>
                  <p id="ci" style="color: #130F31; font-size: 17px;"></p>
                </div>
                <div class='chart-details'>
                  <p style="color: #9088D2">Total Payable</p>
                  <p id="ct" style="color: #130F31; font-size: 17px;"></p>
                </div>
              </div>
            </div>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-6 col-12 my-3">

             
              <canvas id="lineChart" height="200px" width="200px"></canvas>
            </div>
          </div>
        </div>
          <script>
            var P, R, N, pie, line;
            var loan_amt_slider = document.getElementById("loan-amount");
            var int_rate_slider = document.getElementById("interest-rate");
            var loan_period_slider = document.getElementById("loan-period");
        
            // update loan amount
            loan_amt_slider.addEventListener("input", (self) => {
              document.querySelector("#loan-amt-text").innerText =
                parseInt(self.target.value).toLocaleString("en-US") + "Rs";
              P = parseFloat(self.target.value);
              displayDetails();
            });
        
            // update Rate of Interest
            int_rate_slider.addEventListener("input", (self) => {
              document.querySelector("#interest-rate-text").innerText =
                self.target.value + "%";
              R = parseFloat(self.target.value);
              displayDetails();
            });
        
            // update loan period
            loan_period_slider.addEventListener("input", (self) => {
              document.querySelector("#loan-period-text").innerText =
                self.target.value + " years";
              N = parseFloat(self.target.value);
              displayDetails();
            });
        
            // calculate total Interest payable
            function calculateLoanDetails(p, r, emi) {
              /*
                p: principal
                r: rate of interest
                emi: monthly emi
              */
              let totalInterest = 0;
              let yearlyInterest = [];
              let yearPrincipal = [];
              let years = [];
              let year = 1;
              let [counter, principal, interes] = [0, 0, 0];
              while (p > 0) {
                let interest = parseFloat(p) * parseFloat(r);
                p = parseFloat(p) - (parseFloat(emi) - interest);
                totalInterest += interest;
                principal += parseFloat(emi) - interest;
                interes += interest;
                if (++counter == 12) {
                  years.push(year++);
                  yearlyInterest.push(parseInt(interes));
                  yearPrincipal.push(parseInt(principal));
                  counter = 0;
                }
              }
              line.data.datasets[0].data = yearPrincipal;
              line.data.datasets[1].data = yearlyInterest;
              line.data.labels = years;
              return totalInterest;
            }
        
            // calculate details
            function displayDetails() {
              let r = parseFloat(R) / 1200;
              let n = parseFloat(N) * 12;
        
              let num = parseFloat(P) * r * Math.pow(1 + r, n);
              let denom = Math.pow(1 + r, n) - 1;
              let emi = parseFloat(num) / parseFloat(denom);
        
              let payabaleInterest = calculateLoanDetails(P, r, emi);
        
              let opts = '{style: "decimal", currency: "Indian"}';
        
              document.querySelector("#cp").innerText =
                parseFloat(P).toLocaleString("en-Indian", opts) + "Rs";
        
              document.querySelector("#ci").innerText =
                parseFloat(payabaleInterest).toLocaleString("en-Indian", opts) + "Rs";
        
              document.querySelector("#ct").innerText =
                parseFloat(parseFloat(P) + parseFloat(payabaleInterest)).toLocaleString(
                  "en-Indian",
                  opts
                ) + "Rs";
        
              document.querySelector("#price").innerText =
                parseFloat(emi).toLocaleString("en-Indian", opts) + "Rs";
        
              pie.data.datasets[0].data[0] = P;
              pie.data.datasets[0].data[1] = payabaleInterest;
              pie.update();
              line.update();
            }
        
            // Initialize everything
            function initialize() {
              document.querySelector("#loan-amt-text").innerText =
                parseInt(loan_amt_slider.value).toLocaleString("en-US") + "Rs";
              P = parseFloat(document.getElementById("loan-amount").value);
        
              document.querySelector("#interest-rate-text").innerText =
                int_rate_slider.value + "%";
              R = parseFloat(document.getElementById("interest-rate").value);
        
              document.querySelector("#loan-period-text").innerText =
                loan_period_slider.value + " years";
              N = parseFloat(document.getElementById("loan-period").value);
        
              line = new Chart(document.getElementById("lineChart"), {
                data: {
                  datasets: [
                    {
                      type: "line",
                      label: "Yearly Principal paid",
                      borderColor: "rgb(54, 162, 235)",
                      data: []
                    },
                    {
                      type: "line",
                      label: "Yearly Interest paid",
                      borderColor: "rgb(255, 99, 132)",
                      data: []
                    }
                  ],
                  labels: []
                },
                options: {
                  plugins: {
                    title: {
                      display: true,
                      text: "Yearly Payment Breakdown"
                    }
                  },
                  scales: {
                    x: {
                      title: {
                        color: "grey",
                        display: true,
                        text: "Years Passed"
                      }
                    },
                    y: {
                      title: {
                        color: "grey",
                        display: true,
                        text: "Money in Rs."
                      }
                    }
                  }
                }
              });
        
              pie = new Chart(document.getElementById("pieChart"), {
                type: "doughnut",
                data: {
                  labels: ["Principal", "Interest"],
                  datasets: [
                    {
                      label: "Home Loan Details",
                      data: [0, 0],
                      backgroundColor: ["rgb(54, 162, 235)", "rgb(255, 99, 132)"],
                      hoverOffset: 4
                    }
                  ]
                },
                options: {
                  plugins: {
                    title: {
                      display: true,
                      text: "Payment Breakup"
                    }
                  }
                }
              });
              displayDetails();
            }
            initialize();
        
          </script>
    </div>
    <!-- fAQ -->
    <div class="container py-5">
        <h2 class="text-center mb-4">Frequently Asked Questions</h2>
        <div class="accordion" id="faqAccordion">
            <div class="accordion-item">
                <h3 class="accordion-header" id="faqHeading1">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#faqCollapse1" aria-expanded="false" aria-controls="faqCollapse1">
                        Question 1: What are the eligibility criteria for a loan?
                    </button>
                </h3>
                <div id="faqCollapse1" class="accordion-collapse collapse" aria-labelledby="faqHeading1"
                    data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        Answer: The eligibility criteria vary depending on the type of loan. Generally, lenders consider factors
                        such as credit score, income, employment history, and debt-to-income ratio.
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h3 class="accordion-header" id="faqHeading2">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#faqCollapse2" aria-expanded="false" aria-controls="faqCollapse2">
                        Question 2: How long does the loan approval process take?
                    </button>
                </h3>
                <div id="faqCollapse2" class="accordion-collapse collapse" aria-labelledby="faqHeading2"
                    data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        Answer: The loan approval process duration can vary depending on various factors, including the lender's
                        internal processes, the complexity of the loan, and the completeness of the documentation provided. It's
                        best to consult with the lender for an estimated timeline.
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h3 class="accordion-header" id="faqHeading3">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#faqCollapse3" aria-expanded="false" aria-controls="faqCollapse3">
                        Question 3: Who can aaply for business loan?
                    </button>
                </h3>
                <div id="faqCollapse3" class="accordion-collapse collapse" aria-labelledby="faqHeading3"
                    data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        Answer: Business entities such as partnership firms private limited companies self-employed professionals, and self-employed individuam can apply for a business loan from Bajaj Finserv

                        If you are applying for one you will be required to fulfil the simple eligibility criteria and submit your documents to check your eligibility Learn about secured and an unsecured business loans and choose a loan that suits you best.
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h3 class="accordion-header" id="faqHeading4">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#faqCollapse4" aria-expanded="false" aria-controls="faqCollapse4">
                        Question 4: What is the rate of interest offered on home loans?

                    </button>
                </h3>
                <div id="faqCollapse4" class="accordion-collapse collapse" aria-labelledby="faqHeading4"
                    data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        Answer: LoanBazar through its subsidiary Bajaj Housing Finance offers home loans at attractive interest rates starting at 8E0%" pa You can apply online by completing the application form and get your digital sanction letter in an instant
                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h3 class="accordion-header" id="faqHeading5">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                        data-bs-target="#faqCollapse5" aria-expanded="false" aria-controls="faqCollapse5">
                        Question 5: What are the repayment options available?
                    </button>
                </h3>
                <div id="faqCollapse5" class="accordion-collapse collapse" aria-labelledby="faqHeading5"
                    data-bs-parent="#faqAccordion">
                    <div class="accordion-body">
                        Answer: The repayment options for loans can vary depending on the lender and the type of loan. Common
                        options include monthly installments, bi-weekly payments, or balloon payments. It's important to review
                        the terms and conditions provided by the lender.
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- footer -->
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
            <div class="thumb-content"><a href="index2.html">Home</a></div> 
        </li>
        <li>
            <div class="thumb-content"><a href="#aboutUs">About Us</a></div> 
        </li>
        <li>
           <div class="thumb-content"><a href="index2.html">Loans</a></div> 
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
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>




