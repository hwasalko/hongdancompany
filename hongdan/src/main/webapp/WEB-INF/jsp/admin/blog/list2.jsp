<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="kr">

		<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />
<head>
<link href="/css/feature-table.css" rel="stylesheet">
</head>
		<body class="wide">
		
				<jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
		 
		   <div class="wrapper">
		   
		   		<jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />
		   
			    <section class="menu-top-banner background-5 page-title-center">
			        <div class="container">
			            <div class="page-title col-md-8">
			                <h1>BLOG</h1>
			                <span>Blog list</span>
			            </div>
			        </div>
			    </section>
		

		
				<section class="p-b-10">
			        <div class="container">
			        
			        
			        	<c:forEach var="list" items="${blogList }">
			        	
			        	<div class="row">
			        		<div class="col-md-12">
					        		<div class="panel panel-default">
					        			<div class="panel-heading">
					        						<h4>
					        								${list.TITLE} 
					        								<span style="padding-left:10px;"></span>
					        								<small>
					        									${list.REG_DDTM}
					        									<span style="padding-left: 5px;"></span> 
					        									<span class="label label-danger">New</span>
					        								</small>
					        						</h4>
					        			</div>
					        			<div class="panel-body">
									    	${list.CONTENTS }
									  	</div>
									</div>
							</div>
						</div>			
							
			        	</c:forEach>
			            
			            <hr>
			            
			            	<!-- 
			            	<hr>
				            <div class="row">
				            	 
				                <div class="col-md-4">
				                    <div class="carousel portfolio-basic-image" data-carousel-col="1">
				                        <img alt="image" src="/images/menus/1.jpg">
				                        <img alt="image" src="/images/menus/2.jpg">
				                        <img alt="image" src="/images/menus/3.jpg">
				                    </div>
				                </div>
				                 
				                <div class="col-md-8">
				                    
				                    <div class="page-header">
									  <h4>${list.BLOG_SEQ}. ${list.TITLE} <small>Subtext for header</small> <span class="label label-danger">New</span> </h4>
									</div>
									
				                    <div class="heading heading text-left">    
				                        <span>
				                        		${list.CONTENTS } 
				                        </span>
				                    </div>
				                </div>
				            </div>
				            -->
						
						
						<nav>
							  <ul class="pagination">
								    <li>
									      <a href="#" aria-label="Previous">
									      		<span aria-hidden="true">&laquo;</span>
									      </a>
								    </li>
								    <li class="active"><a href="#">1</a></li>
								    <li><a href="#">2</a></li>
								    <li><a href="#">3</a></li>
								    <li><a href="#">4</a></li>
								    <li><a href="#">5</a></li>
								    <li><a href="#">6</a></li>
								    <li><a href="#">7</a></li>
								    <li><a href="#">8</a></li>
								    <li><a href="#">9</a></li>
								    <li>
									      <a href="#" aria-label="Next">
									        	<span aria-hidden="true">&raquo;</span>
									      </a>
								    </li>
							  </ul>
						</nav>
						
			        </div>
			        
			        
			        
<div class="row">
	<div class="panel panel-default clearfix">
                            <div class="panel-heading">
                                <h2 class="panel-title">Package Heading</h2>
                                <p class="small">
                                    Package Description                              
                                </p>
                            </div>

                            <div class="col-xs-12 toggle-header">
                                <div class="col-xs-6">
                                    <button type="button" class="btn btn-primary btn-sm hidden-xs" data-toggle="collapse" data-target="#feature-1">
                                        <i class="glyphicon glyphicon-resize-vertical"></i>Toggle Feature Set
                                    </button>
                                    <button type="button" class="btn btn-primary btn-xs visible-xs" data-toggle="collapse" data-target="#feature-1">
                                        <i class="glyphicon glyphicon-resize-vertical"></i>Toggle Set
                                    </button>
                                </div>
                                <div class="col-xs-2 text-center">
                                    <span class="hidden-xs">Small</span>
                                    <span class="visible-xs">S</span>
                                </div>
                                <div class="col-xs-2 text-center">
                                     <span class="hidden-xs">Medium</span>
                                    <span class="visible-xs">M</span>
                                </div>
                                <div class="col-xs-2 text-center">
                                     <span class="hidden-xs">Large</span>
                                    <span class="visible-xs">L</span>
                                </div>
                            </div>
                            
                                <div id="feature-1" class="collapse in">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    First Package Feature                                             
                                                </div>
                                                <div class="col-xs-2 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-2 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                                <div class="col-xs-2 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                            </div>
                                        </div>  
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-xs-6">
                                                    Second Package Feature
                                                </div>
                                                <div class="col-xs-2 text-center">
                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
                                                </div>
                                                <div class="col-xs-2 text-center">
                                                    <i class="glyphicon glyphicon-remove txt-red"></i>
                                                </div>
                                                <div class="col-xs-2 text-center">
                                                    <i class="glyphicon glyphicon-ok txt-green"></i>
                                                </div>
                                            </div>
                                        </div>  
                                     </div>
                            </div>
	</div>
			        
						
			    </section>
			  
			  
			  
			  
			  
<section class="features_table">
        <div class="container ">
        	<div class="col-sm-8 col-8 col-xs-12 no-padding">
            	<div class="features-table">
                	<ul>
                    	<h1>Features</h1>
                    	<li>Use individual PNGs (or JSON spritesheets) from any source to animate </li>
                        <li>Animate with bones or by controlling images directly</li>
                        <li>Adjust pivot points for each image</li>
                        <li>Scale and rotate any object per frame</li>
                        <li>Set the opacity of any object per frame</li>
                        <li>Basic easing features</li>
                        <li>Advanced easing curve options</li>
                        <li>Create multiple “entities” (animation sets) per file</li>
                        <li>Onion skinning to see previous and up-coming key-frames</li>
                        <li>Basic IK (inverse kinematics) support</li>
                        <li>Full IK support and IK locking (forward kinematics) </li>
                        <li>Use animations within animations to make complex scenes easily</li>
                        <li>Advanced automated control features for animations within animations</li>
                        <li>Create character variations by swapping image sets (Character maps)</li>
                        <li>Trigger and preview sound effects at any point in the timeline</li>
                        <li>Lip-sync via Papagayo</li>
                        <li> Export animations as PNG images, strips, sheets or Gif Animations </li>
                        <li>Add custom watermarks while exporting images or Gifs</li>
                        <li>Automatically import sequential images as animated sprites</li>
                        <li>Create named collision rectangles per frame</li>
                        <li>Automatically import sequential images as animated sprites</li>
                        <li> Create named action points per frame and set their angle </li>
                        <li>Create horizontal and vertical guidelines on the canvas</li>
                        <li>Lock or hide individual objects to protect or hide things as you work</li>
                        <li>Set “animated” variables for your character anywhere in the timeline</li>
                        <li>Create “Triggers” anywhere in the timeline to initiate actions in-game</li>
                        <li>Set “Tags” to any part of the timeline to designate “state changes”</li>
                        <li>Merge separate Spriter projects into one (Great for teams making games)</li>
                        <li>Auto update detection</li>
                        <li>Auto save feature</li>
                        <li>Deformable sprites (image warping)   COMING SOON</li>
                        <li>Over 260 Free Spriter Animations (for use in your games royalty free)</li>
                        
                        
                    </ul>
                </div>
            </div>
            <div class="col-sm-2 col-2 col-xs-12 no-padding">
            <div class="features-table-free">
                	<ul>
                    	<h1>Free</h1>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        <li><i class="fa fa-times"></i></li>
                        
                        
                        
                    </ul>
                </div>
            
            </div>
             <div class="col-sm-2 col-2 col-xs-12 no-padding">
             	 <div class="features-table-paid">
                	<ul>
                    	<h1>Pro</h1>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        <li><i class="fa fa-check"></i></li>
                        
                        
                        
                        
                    </ul>
                </div>
             </div>
        </div>
    
    </section>			  
			  
		
		    	<jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
		
		  	</div>
		 
			<jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			
					  
		</body>
		
</html>
