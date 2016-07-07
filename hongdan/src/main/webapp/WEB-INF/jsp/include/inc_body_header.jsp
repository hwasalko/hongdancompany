<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<header id="header" class="">
	      <div id="header-wrap">
	        <div class="container">
	            <div id="logo">
	                <a href="/" class="logo" data-dark-logo="/images/hongdan_logo_dark.png">
	                <img src="/images/hongdan_logo.png" alt="Logo">
	                </a>
	            </div>
	            <div class="nav-main-menu-responsive">
	                <button data-toggle="collapse" data-target=".main-menu-collapse"><i class="fa fa-navicon"></i></button>
	            </div>
	            <div id="top-search">
	                <a id="top-search-trigger">
	                    <i class="fa fa-power-off"></i>
	                    <!-- <i class="fa fa-search"></i> -->
	                    <i class="fa fa-close"></i>
	                </a>
	                <c:if test="${not empty sessionScope}" >
						<form class="form-inline"  style="padding: 32px 50px; text-align: right;" method="post"  action="/admin/logout" >
							  <div class="form-group">
							  	<span class="label label-default">${sessionScope.usr_nm} 님 환영합니다. </span>&nbsp;
							  	<span class="label label-danger" onclick="submit();" style="cursor: pointer;" > <i class="fa fa-sign-out"></i> <strong>LOGOUT</strong> </span>
							  </div>
						</form>
					</c:if> 
					<c:if test="${ empty sessionScope}" >
		                <form class="form-inline" style="padding-top: 10px;" method="post"  action="/admin/login" >
							  <div class="form-group">
							    <input type="text" class="form-control" name="admin_id" id="admin_id" placeholder="Admin ID를 입력하세요">
							  </div>
							  <div class="form-group">
							    <input type="password" class="form-control" id="admin_password"  name="admin_password"  placeholder="Password를 입력하세요">
							  </div>
							  <button type="submit" class="btn btn-warning btb-xs text-right">Login</button>
						</form>
					</c:if>
	            </div>
	            <div class="navbar-collapse collapse main-menu-collapse navigation-wrap">
	                <div class="container">
	                	
	                    <nav id="mainMenu" class="main-menu mega-menu">
	                    
	                        <ul class="main-menu nav nav-pills">
	                        	
	                            <li class="dropdown"><a href="/" class="nav-to">Home</a></li>
	                            
	                            <li class="dropdown"> <a href="/blog" class="nav-to">Blog</a> </li>
	                            
	                            <li class="dropdown"> <a href="/about" class="nav-to">About</a> </li>
	                            
	                            <li class="dropdown"> <a href="/services" class="nav-to">Service</a> </li>
	                            
	                            <li class="dropdown"> <a href="#">Price <i class="fa fa-angle-down"></i> </a>
	                                <ul class="dropdown-menu">
	                                    <!-- <li> <a href="/price/car_management_total">차량관리서비스(전체)</a> </li> -->
	                                    <li> <a href="/price/car_management_table">차량관리서비스(전체)</a> </li>
	                                    <li> <a href="/price/car_management_each">차량관리서비스(회원별)</a> </li>
	                                </ul>
	                            </li>
	                            
	                            <!--     
	                            <li class="dropdown"> <a href="/reservation" class="nav-to">Reservation</a> </li>
	                             -->
	                             
	                            <li class="dropdown"> <a href="/membership" class="nav-to">Membership</a></li>
	                            
	                            <c:if test="${not empty sessionScope}" >
	                            <li class="dropdown">	
	                            	<a href="/admin/logout" class="nav-to">
	                            	<span class="label label-danger" ><i class="fa fa-sign-out"></i><strong>Logout</strong> </span>
	                            	</a>
	                            </li>
	                            </c:if>
	                            <c:if test="${empty sessionScope}" >
	                            <li class="dropdown">	
	                            	<a href="/admin/login">
	                            	<span class="label label-info" id="login_btn"><i class="fa fa-sign-in"></i><strong>Login</strong> </span>
	                            	</a>
	                            </li>
	                            </c:if>
	                            
	                            
	                        </ul>
	                        
	                        
	                    </nav>
	                </div>
	            </div>
	        </div>
	      </div>
    </header>