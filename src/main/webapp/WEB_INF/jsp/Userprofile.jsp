<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="ISO-8859-1">
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
*,
*:after,
*:before {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  margin:0;
  padding: 0;
} 
:active,
:hover,
:focus {
  outline: 0 !important;
  outline-offset: 0;
}
/*===== Variable Define =====*/
:root {
    --primary-color: #000;
    --secondary-color: #e11d74; 
    --third-color:#f3f3f3;
    --four-color:#848484;
    --text-color:#fff;
}
body{
  font-family: 'Poppins', sans-serif;
  font-size: 100%;
  font-weight: 400;
}
a,
a:hover{
    text-decoration: none;
}
ul, ol{
    margin:0;
    padding:0; 
} 
.header{
    background-color: var(--primary-color);
    z-index: 100;
}
.header .navbar{
    padding:0.8em 0;
}
.header .navbar-brand{
    color:var(--text-color);
    font-size: 1.5rem;
    font-weight:600;
}
.header .logo{
    color:var(--secondary-color);
    font-weight: bold;
}
.header .navbar-nav a.nav-link{
    position: relative;
    padding:0.8rem 1.2rem;
    color:var(--text-color);
    -webkit-transition:font-weight 0.3s ease-in-out;
    -moz-transition:font-weight 0.3s ease-in-out;
    -ms-transition:font-weight 0.3s ease-in-out;
    -o-transition:font-weight 0.3s ease-in-out;
    transition:font-weight 0.3s ease-in-out;
}
.header .navbar-nav a.nav-link.active{
    font-weight: 600;
    transition:font-weight 0.3s ease-in-out;
}
.header .navbar-nav a.nav-link::after{
    content:'';
    display:block;
    width:0%;
    height:0.1rem;
    box-sizing: border-box;
    background-color: var(--secondary-color);
    transition:width .3s;
    position: absolute;
    left:50%;
    transform: translate(-50%,-50%);
    bottom:0;
}
.header .navbar-nav a.nav-link:hover::after,
.header .navbar-nav a.nav-link.active::after{
    width:40%;
    transition:width .3s;
}
.header .navbar-toggler{
    padding:.25rem 0rem;
}
.search_bar{
    padding:0.8rem 1.2rem;
}
.search_bar a{
    color:var(--text-color);
}

/*==- Search Box ===*/
.search-overlay{
    opacity: 0;
    visibility:hidden;
    position: fixed;
    width:100%;
    height:100vh;
    text-align: center;
    top:0;
    left:0;
    z-index: 999;
    background-color: rgba(0,0,0,1);
    -webkit-transition:all ease-in-out .5s;
    -ms-transition:all ease-in-out .5s;
    -moz-transition:all ease-in-out .5s;
    -o-transition:all ease-in-out .5s;
    transition:all ease-in-out .5s;
}
.search-overlay.open{
    opacity: 1;
    visibility: visible;
}
.fullscreen-searchform{
    width:60%;
    margin:0 auto;
    text-align: center;
    position: relative;
    opacity: 1;
    top:50%;
    transform: translateY(-50px);
    -webkit-transition:all ease-in-out .6s;
    -ms-transition:all ease-in-out .6s;
    -moz-transition:all ease-in-out .6s;
    -o-transition:all ease-in-out .6s;
    transition:all ease-in-out .6s;
}
.search-overlay.open .fullscreen-searchform{
    opacity: 1; 
    transform:translateY(0);
}
.search-overlay .search-box{
    width:100%;
    background: transparent;
    outline:0;
    font-size: 1.8rem;
    padding:1.2rem 1.5rem;
    color:var(--text-color);
    border-style:solid;
    border-width:0 0 0.1rem;
    border-color:var(--text-color);
}
.fullscreen-search-icon{
    color:var(--text-color);
    font-size: 1.6rem;
    position: absolute;
    right:1.3rem;
    top:1.8rem;
}
.close{
    position:fixed;
    top:2.5rem;
    right:4rem;
    color:var(--text-color);
    z-index: 3;
    cursor: pointer;
    opacity: 1;
}
.close span,
.close span:before,
.close span:after{
    border-radius: 0.2rem;
    height:0.2rem;
    width:2rem;
    background:var(--text-color);
    position:absolute;
    display:block;
    content:'';
}
.close span{
    background:transparent;
}
.close span:before{
    -webkit-transform:rotate(45deg);
    transform:rotate(45deg);
}
.close span:after{
    -webkit-transform:rotate(-45deg);
    transform:rotate(-45deg);
}

/*=== Banner Section ===*/
.banner_section{
    min-height: 600px;
    background:var(--primary-color);   
}
.banner_content{
    padding:7rem 0;
}
.banner_content h2{
    color:var(--text-color);
    font-size:5rem;
    font-weight:800;
    line-height: 1.2;
    width:80%;
}
.main-btn{
    position: relative;
    display:inline-block;
    width:auto;
    height:auto;
    background-color: transparent;
    border:none;
    cursor: pointer;
    margin-top:3rem;
    overflow: hidden;
}
.main-btn span{
    font-size:1rem;
    font-weight:600;
    letter-spacing: 0.02rem;
    color:var(--text-color);
    text-decoration: none;
    border:2px solid var(--secondary-color);
    width:100%;
    padding:1rem 2rem;
    display:block;
    border-radius: 0.1rem;
    transition:all ease .5s;
    z-index: 2;
    position: relative;
    text-align: center;
    cursor: pointer;
}
.effect{
    width:100%;
    height:100%;
    left:-100%;
    border-radius: 0.1rem;
    background:var(--secondary-color);
    position: absolute;
    transition:all .5s ease;
    z-index: 1;
}
.main-btn:hover .effect{
    left:0;
}
.main-btn:hover span{
    color:var(--text-color);
}
.bg-hero{
    background-image: url('./../images/hero_02.jpg');
    background-position: center right;
    min-height: 400px;
    background-size: contain;
    background-repeat: no-repeat;
}
.underline{
    max-width: 6%;
    border-bottom:0.10rem solid var(--secondary-color);
    margin-bottom:2.5rem;
}

/*== Infobox ===*/
.infobox{
    padding:1.5rem 1.2rem;
    border-radius: 0.1rem;
    background-color:var(--primary-color);
    -webkit-transition:background 0.7s;
    -ms-transition:background 0.7s;
    -moz-transition:background 0.7s;
    -o-transition:background 0.7s;
    transition:background 0.7s;
}
.infobox:hover,
.infobox.active{
    background-color: var(--secondary-color);
    -webkit-transition:background 0.7s;
    -ms-transition:background 0.7s;
    -moz-transition:background 0.7s;
    -o-transition:background 0.7s;
    transition:background 0.7s;
}
.infobox:hover .infobox-icon,
.infobox.active .infobox-icon{
    color:var(--text-color);
}
.infobox .infobox-icon{
    font-size: 3rem;
    color:var(--secondary-color);
    margin-bottom:1.5rem;
}
.infobox .infobox-content h3{
    font-size: 1.5rem;
    font-weight: 600;
    line-height: 1.4em;
    margin:0 0 1.3rem;
    color:var(--text-color);
}
.infobox .infobox-content p{
    color:var(--text-color);
    font-size: 1rem;
    line-height: 1.5rem;
}

/*=== Services Section ===*/
.services{
    padding:7rem 0 2rem;
}
.section_headline h2{
    font-size:3rem;
    font-weight:bold;
    display:inline-block;
    position: relative;
}
.section_headline h2::before{
    content:'';
    border-bottom:0.15rem solid var(--secondary-color);
    margin-bottom:1.3rem;
    width:20%;
    position:absolute;
    top:-40%;
}
.section_headline p{
    color:var(--secondary-color);
    font-weight: 600;
}
.services_name{
    position:relative;
    background-color: var(--third-color);
    padding:1.6rem;
    border-radius: 0.2rem;
    margin-bottom:1.6rem;
    cursor: pointer;
    -webkit-transition:0.3s ease-in-out;
    -ms-transition:0.3s ease-in-out;
    -moz-transition:0.3s ease-in-out;
    -o-transition:0.3s ease-in-out;
    transition:0.3s ease-in-out;
}
.services_name h3{
    color:var(--primary-color);
    font-size: 19px;
    font-weight: bold;
    line-height:24px;
    margin:0;
    -webkit-transition:0.3s ease-in-out;
    -ms-transition:0.3s ease-in-out;
    -moz-transition:0.3s ease-in-out;
    -o-transition:0.3s ease-in-out;
    transition:0.3s ease-in-out;
}
.services_name i{
    color:var(--four-color);
}
.services_name:hover{
    background-color: var(--secondary-color);
}
.services_name:hover h3,
.services_name:hover i{
    color:var(--text-color);
    padding-left:1.5rem;
}

/*=== Works Section ===*/
.works{
    padding:7rem 0 2rem;
}
.works .main-btn{
    margin:0;
}
.works .main-btn span{
    color:var(--primary-color);
    padding:0.6rem 2rem;
}
.works .main-btn:hover span{
    color:var(--text-color);
}
.works .project_card{
    position:relative;
    margin:0 0.4rem;
}
.works .owl-nav{
    display:none;
}
.works .owl-dots{
    padding:1rem 0;
}
.works .owl-theme .owl-dots .owl-dot span{
    background:transparent;
    border:1px solid var(--four-color);
}
.works .owl-theme .owl-dots .owl-dot.active span,
.works .owl-theme .owl-dots .owl-dot:hover span{
    background:var(--secondary-color);
    border-color:var(--secondary-color);
}
.project_category{
    position:absolute;
    top:50%;
    left:50%;
    transform:translate(-50%,-50%);
    width:100%;
    height:100%;
    background:rgba(0,0,0,0.6);
    text-align: center;
    z-index: 1;
    display:flex;
    align-items:center;
    justify-content:center;
    flex-direction: column;
    opacity: 0;
    cursor: pointer;
    overflow: hidden;
    -webkit-transition:0.3s ease-in-out;
    -moz-transition:0.3s ease-in-out;
    -ms-transition:0.3s ease-in-out;
    -o-transition:0.3s ease-in-out;
    transition:0.3s ease-in-out;
}
.project_category h2,
.project_category p{
    color:var(--text-color);
    position:relative;
    opacity: 0;
    left:-50%;
    -webkit-transition:0.3s ease-in-out;
    -moz-transition:0.3s ease-in-out;
    -ms-transition:0.3s ease-in-out;
    -o-transition:0.3s ease-in-out;
    transition:0.3s ease-in-out;
}
.project_category h2{
    font-size:1.4rem;
    font-weight:600;
}
.project_category p{
    font-size:0.9rem;
}
.works .project_card:hover .project_category{
    opacity: 1;
}
.works .project_card:hover .project_category h2,
.works .project_card:hover .project_category p{
    left:0;
    opacity: 1;
}

/*=== About Section ===*/
.about{
    padding:7rem 0 2rem;
}
.about_text{
    font-size:15px;
    color:var(--four-color);
}
.about_company{
    background-image:url("./../images/about_1.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    min-height: 500px;
    position:relative;
}
.about_company::before,
.about_company_second::before{
    content:'';
    width:100%;
    height:100%;
    position:absolute;
    top:0;
    bottom:0;
    left:0;
    right:0;
    background:rgba(0,0,0,0.6);
    margin:auto;
}
.about_company_second{
    background-image:url("./../images/about_2.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    min-height: 240px;
    position:relative;
}
.about_company_second:nth-child(1){
    margin-bottom:1.2rem;
}
.about_company_text{
    position:absolute;
    bottom:1rem;
    left:1.2rem;
    color:var(--text-color);
}
.about_company_text h3{
    margin-bottom:0.2rem;
    font-weight:bold;
    font-size:1.2rem;
}
.about_company_text p{
    font-size:0.8rem;
}
.about_box{
    padding:1rem;
}
.about_box h3{
    font-size:1.3rem;
    font-weight: bold;
    margin-bottom:2rem;
}
.about_box p{
    color:var(--four-color);
    font-size: 0.9rem;
    line-height:1.8;
}

/*=== Cleint Section ===*/
.client{
    padding:7rem 0 2rem;
}
.client_box{
    padding:3rem;
}
.client_text p{
    color:var(--four-color);
    font: size 1.3rem;
    margin:5.5rem 0;
}
.client_text .designer{
    font-weight: bold;
    font-size:1.2rem;
}

/*=== Footer Section ===*/

.footer{
    margin-top:4rem;
    background-color: var(--primary-color);
}
.footer_box{
    padding:5rem 0;
}
.footer .footer-menu ul li a,
.footer p,
.footer ul li{
    color:var(--text-color);
    list-style: none;
}
.footer-menu ul li a{
    font-size:0.9rem;
    line-height:2rem;
    -webkit-transition:0.3s;
    -moz-transition:0.3s;
    -ms-transition:0.3s;
    -o-transition:0.3s;
    transition:0.3s;
}
.footer-menu ul li a:hover{
    color:var(--secondary-color);
}
.footer-widget-title{
    line-height:30px;
    margin-bottom:10px;
    font-size:18px;
    font-weight:600;
    color:var(--text-color);
}
.mini-footer{
    text-align: center;
    padding:32px 0;
    border-top:0.0650rem solid var(--secondary-color);
}
.mini-footer p{
    margin:0;
    line-height:1.6rem;
    font-size:0.850rem;
    color:var(--text-color);
}
.mini-footer p a{
    color:var(--secondary-color);
    font-weight: 500;
}
.widget-about .contact-details{
    margin:1.8rem 0 0 0;
}
.widget-about .contact-details li{
    margin-bottom:0.8rem;
}
.widget-about .contact-details li:last-child{
    margin-bottom:0;
}
.widget-about .contact-details li i{
    padding-right:0.8rem;
    color:var(--text-color);
}
.widget-about .contact-details li a{
    color:var(--text-color);
}
.widget-about .social_icons li{
    list-style-type: none;
    display: inline-block;
    margin:2rem 0.3rem;
}
.widget-about .social_icons li a i{
    width:2.5rem;
    height:2.5rem;
    line-height:2.4rem;
    text-align: center;
    color:var(--text-color);
    border:1px solid var(--secondary-color);
    border-radius: 2rem;
    -webkit-transition:0.3s ease-in-out;
    -moz-transition:0.3s ease-in-out;
    -ms-transition:0.3s ease-in-out;
    -o-transition:0.3s ease-in-out;
    transition:0.3s ease-in-out;
}
.widget-about .social_icons li a i:hover{
    background:var(--secondary-color);
    color:var(--text-color);
    transform:translateY(-0.5rem);
}


/*== Scroll Top ===*/

.back-to-top{
    position:fixed;
    bottom:4.5rem;
    right:2rem;
    z-index:100;
    display:none;
}
.back-to-top a{
    width:2.5rem;
    height:2.5rem;
    line-height:2.5rem;
    display:block;
    background: var(--secondary-color);
    color:var(--text-color);
    text-align:center;
    border-radius:0.2rem;
    -webkit-transition:0.5s all ease-out;
    -moz-transition:0.5s all ease-out;
    -ms-transition:0.5s all ease-out;
    -o-transition:0.5s all ease-out;
    transition:0.5s all ease-out;
}

<!--Responsive -->

/*=== Ipad pro Media ===*/
@media (max-width:1030px){
    /*=== Header Section ===*/
    .header .navbar-nav a.nav-link{
        padding:0.8rem 1rem;
    }
    .infobox{
        margin-bottom:1.3rem;
    }

    /*=== About Section ===*/
    .about_company{
        margin-bottom:1.2rem;
    }

    /*=== client Section ====*/
    .client_box{
        padding:2rem;
    }
    .client_text p{
        margin:2.5rem 0;
    }
}

/*=== Ipad Media ===*/
@media (max-width:992px){   
    /*=== Mobile Menu icon ===*/
    .menu-toggle{
        position: relative;
    }
    .menu-toggle span{
        width:2rem;
        height:0.2rem;
        display:block;
        background-color: var(--text-color);
        margin:0.35rem;
        cursor: pointer;
        transition: all 0.3s;
    }
    .menu-toggle.active span:nth-child(1){
        transform:rotate(45deg);
        position:relative;
        top:0.2rem;
    }
    .menu-toggle.active span:nth-child(2){
         display:none;
    }
    .menu-toggle.active span:nth-child(3){
        transform:rotate(-45deg);
        position:relative;
        top:-0.3rem;
    }
    #navbarNav ul{
        text-align: center;
    }

    /*=== client Section ====*/
    .client_box{
        padding:1rem 0;
        margin-top:5.2rem;
    } 
}

/*=== Mobile Media ===*/
@media (max-width:767px){ 
     
    /*=== Header Section ===*/
    .header .navbar{
        padding:0.5rem 0;
    }
    .bg-hero{
        background-size:125%;
        background-repeat: no-repeat;
        background-position: 25% 15%;
    }
    .underline{
        max-width: 20%;
    }
    .banner_content h2{
        font-size: 2.5rem;
        width:100%;
    }

    /*=== About Section ===*/
    .about_company{
        min-height: 400px;
    }
    .about_box{
        padding-bottom: 0rem;
    }

    /*=== client Section ====*/
    .client_box .section_headline h2{
        font-size:2rem;
    }
    .client_text p{
        font-size:1rem;
    }

    /*=== Footer section ===*/
    .footer-widget{
        margin-top:2rem;
    }
}

  



</style>

<title>user profile</title>
</head>
<body>

<div class="container">
<!-- Header Section-->
  <section class="header sticky-top">
    <div class="container">
      <nav class="navbar navbar-expand-lg">
        <a class="navbar-brand" href="#"><span class="logo">CAM</span> space.</a>
        <button class="navbar-toggler menu-toggle" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <!-- <span class="navbar-toggler-icon"></span> -->
          <span></span>
          <span></span>
          <span></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link active" href="#home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#service">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#Works">Works</a>
            </li> 
            
            <li class="nav-item">
              <a class="nav-link" href="#Client">Client</a>
            </li> 
            <li class="nav-item">
              <a class="nav-link" href="contactus">Contact</a>
            </li> 
            <li class="search_bar ipad-d-none toggle-overlay">
               <span class="d-none d-lg-block">
                  <a href="#"><i class="fas fa-search"></i></a>
               </span>
               <span class="d-lg-none">
                 <a href="#">Search</a>
               </span>
            </li> 
            <li class="nav-item">
              <a class="nav-link" href="logout">logout</a>
            </li> 
          </ul>
        </div>
      </nav>
    </div> 
  </section>
<!-- Header Section End -->

<!-- Search bar box -->
  <div class="search-overlay">
    <div class="outer-close toggle-overlay">
      <a class="close"><span></span></a>
    </div>
    <form method="get" class="fullscreen-searchform" action="#">
      <input class="search-box" name="s" placeholder="Search..." autocomplete="off">
      <i class="fa fa-search fullscreen-search-icon"></i>
    </form>
  </div>
<!-- Search bar box End -->

<!-- Banner Section -->
  <section class="banner_section" id="home">
    <div class="container">
      <!-- Banner Content -->
      <div class="row">
        <div class="col-sm-12 bg-hero">
          <div class="banner_content">
            <div class="underline"></div>
            <h2>We're your Perfect Camera Partner...</h2>
            <button type="button" class="main-btn">
              <div class="effect"></div>
              <span>Getting Started</span>
            </button>
          </div>
        </div>
      </div>

      <!-- Content box -->
      <div class="row">
        <div class="col-12 col-sm-12 col-lg-4">
          <a href="#">
            <div class="infobox active">
              <div class="infobox-icon">
                <i class="far fa-chart-bar"></i>
              </div>
              <div class="infobox-content">
                <h3 class="title">Future Vision.</h3>
                <p>There are many variations of passages of available, but the majority alteration in some form.</p> 
              </div>
            </div>
          </a>
        </div>
        <div class="col-12 col-sm-12 col-lg-4">
          <a href="#">     
              <div class="infobox">
                  <div class="infobox-icon">  
                      <i class="fas fa-rocket"></i> 
                  </div>
                  <div class="infobox-content">
                      <h3 class="title">Learn Here.</h3> 
                      <p>There are many variations of passages of available, but the majority alteration in some form.</p>                         
                  </div>
              </div>
          </a>
      </div>
      <div class="col-12 col-sm-12 col-lg-4">
          <a href="#">     
              <div class="infobox">
                  <div class="infobox-icon">  
                      <i class="fas fa-chart-pie"></i> 
                  </div>
                  <div class="infobox-content">
                      <h3 class="title">We Assist you....</h3> 
                      <p>There are many variations of passages of available, but the majority alteration in some form.</p>                         
                  </div>
              </div>
          </a>
      </div>
    </div>
  </div>
</section>
<!-- Banner Section End -->

<!-- Service Section -->
  <section class="services" id="service">
    <div class="container">
      <div class="row">
        <div class="col-sm-12">
          <div class="section_headline">
            <h2>Services.</h2>
            <p>WE WORK WITH YOU, NOT FOR YOU</p>
          </div>
        </div>
      </div>
      <div class="row pt-5">
        <div class="col-sm-5 col-lg-4">
          <div class="d-flex align-items-center justify-content-between services_name">
            <h3>newly arrived</h3>
            <span><i class="fas fa-arrow-right"></i></span>
          </div>
        </div>
        <div class="col-sm-5 col-lg-4">
          <div class="d-flex align-items-center justify-content-between services_name">
            <h3>coming soon</h3>
            <span><i class="fas fa-arrow-right"></i></span>
          </div>
        </div>
        <div class="col-sm-5 col-lg-4">
          <div class="d-flex align-items-center justify-content-between services_name">
            <h3>Budget friendly</h3>
            <span><i class="fas fa-arrow-right"></i></span>
          </div>
        </div>
        <div class="col-sm-5 col-lg-4">
          <div class="d-flex align-items-center justify-content-between services_name">
            <h3>professional</h3>
            <span><i class="fas fa-arrow-right"></i></span>
          </div>
        </div>
        <div class="col-sm-5 col-lg-4">
          <div class="d-flex align-items-center justify-content-between services_name">
            <h3>Body & Lens</h3>
            <span><i class="fas fa-arrow-right"></i></span>
          </div>
        </div>
        <div class="col-sm-5 col-lg-4">
          <div class="d-flex align-items-center justify-content-between services_name">
            <h3>Social Media</h3>
            <span><i class="fas fa-arrow-right"></i></span>
          </div>
        </div>
        <div class="col-sm-5 col-lg-4">
          <div class="d-flex align-items-center justify-content-between services_name">
            <h3>Media Planing</h3>
            <span><i class="fas fa-arrow-right"></i></span>
          </div>
        </div>
        <div class="col-sm-5 col-lg-4">
          <div class="d-flex align-items-center justify-content-between services_name">
            <h3>Brand Identity</h3>
            <span><i class="fas fa-arrow-right"></i></span>
          </div>
        </div>
        <div class="col-sm-5 col-lg-4">
          <div class="d-flex align-items-center justify-content-between services_name">
            <h3>SEO Optimization</h3>
            <span><i class="fas fa-arrow-right"></i></span>
          </div>
        </div> 
      </div>
    </div>
  </section>
<!-- Service Section End -->

<!-- Works section -->
  <section class="works" id="Works">
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="d-flex align-items-center justify-content-between">
              <div class="section_headline">
                <h2>Works.</h2>
                <p>THINGS WE'VE MADE</p>
              </div>
              <button type="button" class="main-btn">
                <div class="effect"></div>
                <span>View All</span>
              </button>
            </div>
            <div class="col-sm-12 pt-5">
              <section class="projects owl-carousel owl-theme owl-loaded owl-drag">
                <div class="item">
                  <div class="project_card">
                    <img src="images/p-1.jpg" class="img-fluid">
                    <div class="project_category">
                      <h2>Product Design</h2>
                      <p>Design / Marketing</p>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="project_card">
                    <img src="images/p-2.jpg" class="img-fluid">
                    <div class="project_category">
                      <h2>Interior Design</h2>
                      <p>Architecture / Design</p>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="project_card">
                    <img src="images/p-3.jpg" class="img-fluid">
                    <div class="project_category">
                      <h2>Biker Design</h2>
                      <p>Concept / Marketing</p>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="project_card">
                    <img src="images/p-4.jpg" class="img-fluid">
                    <div class="project_category">
                      <h2>Home Design</h2>
                      <p>Architecture / Design</p>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="project_card">
                    <img src="images/p-5.jpg" class="img-fluid">
                    <div class="project_category">
                      <h2>Interior Design</h2>
                      <p>Architecture / Design</p>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="project_card">
                    <img src="images/p-6.jpg" class="img-fluid">
                    <div class="project_category">
                      <h2>Product Design</h2>
                      <p>Design / Marketing</p>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="project_card">
                    <img src="images/p-7.jpg" class="img-fluid">
                    <div class="project_category">
                      <h2>Home Design</h2>
                      <p>Architecture / Design</p>
                    </div>
                  </div>
                </div>
                <div class="item">
                  <div class="project_card">
                    <img src="images/p-1.jpg" class="img-fluid">
                    <div class="project_category">
                      <h2>Biker Design</h2>
                      <p>Concept / Design</p>
                    </div>
                  </div>
                </div> 
              </section>
            </div>
          </div> 
        </div>

      </div>
  </section>
<!-- Works section End-->

<!-- About section -->
<section class="about" id="About">
  <div class="container">
    <div class="row">
      <div class="col-sm-5">
        <div class="section_headline">
          <h2>About.</h2>
          <p>WE'RE MORE THAN A DIGITAL AGENCY</p>
        </div>
      </div>
      <div class="col-sm-7">
        <p class="about_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
      </div>
    </div>

    <div class="row pt-5">
      <div class="col-sm-12 col-lg-8">
        <div class="about_company">
          <div class="about_company_text">
            <h3>Teamwork</h3>
            <p>Committed and creative</p>
          </div>
        </div>
      </div>
      <div class="col-sm-12 col-lg-4">
        <div class="row">
          <div class="col-12">
            <div class="about_company_second">
              <div class="about_company_text">
                <h3>Teamwork</h3>
                <p>Committed and creative</p>
              </div>
            </div>
          </div>
          <div class="col-12">
            <div class="about_company_second">
              <div class="about_company_text">
                <h3>Teamwork</h3>
                <p>Committed and creative</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="row pt-5">
      <div class="col-sm-12 col-lg-4">
        <div class="about_box">
          <h3>Who we are</h3>
          <p>Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward will have multiple touchpoints for offshoring.</p>
        </div>
      </div>
      <div class="col-sm-12 col-lg-4">
        <div class="about_box">
          <h3>Our philosophy</h3>
          <p>A new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time.</p>
        </div>
      </div>
      <div class="col-sm-12 col-lg-4">
        <div class="about_box">
          <h3>How we work</h3>
          <p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps.</p>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Works section End-->

<!-- Client section -->
<section class="client" id="Client">
  <div class="container">
    <div class="row">
      <div class="col-sm-12 col-lg-5">
        <div class="">
          <img src="images/client.jpg" class="img-fluid">
        </div>
      </div>
      <div class="col-sm-12 col-lg-7">
        <div class="client_box">
          <div class="section_headline">
            <h2>What Clients Say.</h2>
            <p>WE'RE MORE THAN A DIGITAL AGENCY</p>
          </div>
          <div class="client_text">
            <p>We are motivated by the satisfaction of our clients. Put your trust in us and share in our growth Asset Management is made up of a team of expert, committed and experienced people with a passion for financial markets. Our goal is to achieve continuous and sustainable growth of our clients.</p>
            <div class="designer">SMITH ROY, UX DESIGNER</div>
          </div>
        </div> 
      </div>
    </div>
  </div>
</section>
<!-- Client section End -->

<!-- Footer section -->
<section class="footer" id="Contact">
  <footer>
    <div class="footer_box">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-sm-6">
            <div class="footer-widget">
              <div class="widget-about"> 
                
              
                <ul class="social_icons">
                  <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                  <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-sm-6">
            <div class="footer-widget">
              <div class="footer-menu">
                <h4 class="footer-widget-title">Popular Category</h4>
                <ul>
                 
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-sm-6">
            <div class="footer-widget">
              <div class="footer-menu">
                <h4 class="footer-widget-title">Our Company</h4>
                <ul>
                  <li>
                      <a href="#">About Us</a>
                    </li>
                    <li>
                      <a href="#">How It Works</a>
                    </li>  
                    <li>
                      <a href="#">Contact Us</a>
                    </li>
                    <li>
                    <a href="#">Plan & Pricing</a>
                  </li>
                  <li>
                    <a href="#">Blog</a>
                  </li>
                </ul>
              </div>
              <!-- end /.footer-menu -->
            </div>
            <!-- Ends: .footer-widget -->
          </div>
          <div class="col-lg-3 col-sm-6">
            <div class="footer-widget">
              <div class="footer-menu p-0">
                <h4 class="footer-widget-title">Help Support</h4>
                <ul>
                  <li>
                    <a href="#">Support Forum</a>
                  </li>
                  <li>
                    <a href="#">Terms & Conditions</a>
                  </li>
                  <li>
                    <a href="#">Support Policy</a>
                  </li> 
                  <li>
                    <a href="#">FAQs</a>
                  </li> 
                </ul>
              </div>
              <!-- end /.footer-menu -->
            </div>
            <!-- Ends: .footer-widget -->
          </div>
        </div>
      </div>
    </div>

    <div class="mini-footer">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="copyright-text">
              <p>© 2020
                <a href="#">kishor AB</a>. All rights reserved. Created by
                <a href="Kishorab456@gmail.com">kishorab023@gmail.com</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>
</section>
<!-- Footer section End-->

<!-- Top Arrow Scroll -->
<div class="back-to-top">
  <a title="Go to Top" href="#"><i class="fas fa-chevron-up"></i></a>
</div>


  

<!-- jQuery CDN Link -->
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>

<!-- Owl Carousel 2.3.4 CDN Link -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous"></script>

<!-- Bootstrap 4.5 JavaScript CDN Link -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>

<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

<!-- Own JavaScript File Link -->
<script>//JavaScript Code

$(document).ready(function(){ 
    //navigation scroll smooth

    $('a[href^="#"]').on('click',function (e) {
        e.preventDefault();  
        var target = this.hash;
        var $target = $(target);   

        
        /*=== Active Scroll Indicator ===*/ 
        const sections = document.querySelectorAll('section[id]'); 
        window.addEventListener('scroll', scrollActive);

        function scrollActive(){
            const scrollY = window.pageYOffset

            sections.forEach(current =>{
                const sectionHeight = current.offsetHeight
                const sectionTop = current.offsetTop - 70;
                sectionId = current.getAttribute('id'); 

                if(scrollY > sectionTop && scrollY <= sectionTop + sectionHeight){
                    document.querySelector('.navbar-nav a[href*=' + sectionId + ']').classList.add('active')
                }else{
                    document.querySelector('.navbar-nav a[href*=' + sectionId + ']').classList.remove('active')
                }
            })
        }

        /*=== Smooth Scroll ====*/
        $('html, body').stop().animate({
            'scrollTop': $target.offset().top
        }, 900, 'swing', function () {
            window.location.hash = target;
        });
    });   

    //Scroll Top Bar
    $(window).scroll(function(){
        if($(this).scrollTop() >= 500){
            $(".back-to-top").fadeIn(200);
        }else{
            $(".back-to-top").fadeOut(200);
        }
        $(".back-to-top").click(function(){
            $('body,html').animate({scrollTop:0}, 500);
        })
    })

    //search toggle button
    $(function(){
        $('.toggle-overlay').click(function(){
            $('.search-overlay').toggleClass('open');
        })
    })

    //Menu Toggle button
    $(".menu-toggle").click(function(){
        $('.menu-toggle').toggleClass('active');
    })

    //owl carousel
    $('.projects').owlCarousel({
        loop:true,
        margin:10,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:3,
                nav:false
            },
            1000:{
                items:3,
                nav:true,
                loop:false
            }
        }
    }) 
})

</script>

</div>
</body>
</html>