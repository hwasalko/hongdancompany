<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="kr">

	<jsp:include page="/WEB-INF/jsp/include/inc_head.jsp"  />
	
	<body class="wide">
	 
			<jsp:include page="/WEB-INF/jsp/include/inc_body_loader.jsp"  />
			
			<div class="wrapper">
			
				  <jsp:include page="/WEB-INF/jsp/include/inc_body_header.jsp"  />
				
				
				  <section class="menu-top-banner page-title-center">
				      <div class="container">
				          <div class="page-title col-md-8">
				              <h1>Menu</h1>
				              <span>Your Taste is Our Goal</span>
				          </div>
				      </div>
				  </section>	
				
				  <section class="p-b-0" id="section-about">
				    <div class="container">
				        <div class="heading heading-center m-b-40" data-animation="fadeInUp">
				            <h2>WELCOME TO CANTEEN</h2>
				            <span class="lead">Create amam ipsum dolor sit amet, consectetur adipiscing elit.</span>
				        </div>
				        <div class="row" data-animation="fadeInUp">
				            <div class="col-md-12">
				                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean diam dolor, tincidunt sit amet imperdiet viverra, accumsan at sem. Integer felis enim, aliquam id blandit ut, imperdiet vel nulla. Pellentesque et ex blandit, vehicula dui nec, facilisis magna. Mauris scelerisque ipsum sit amet vulputate lobortis. Duis blandit, nibh ac posuere placerat, mi leo pellentesque arcu, ac dictum odio lorem a purus. Etiam ac ipsum eu dolor eleifend feugiat.</p>
				                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean diam dolor, tincidunt sit amet imperdiet viverra, accumsan at sem. Integer felis enim, aliquam id blandit ut, imperdiet vel nulla. Pellentesque et ex blandit, vehicula dui nec, facilisis magna. Mauris scelerisque ipsum sit amet vulputate lobortis. Duis blandit, nibh ac posuere placerat, mi leo pellentesque arcu, ac dictum odio lorem a purus. Etiam ac ipsum eu dolor eleifend feugiat.</p>
				            </div>
				        </div>
				    </div>
				  </section>
				
				  <section id="content" class="background-grey">
				      <div class="container portfolio">
				
				      <div class="filter-active-title">Show All</div>
				      <ul class="portfolio-filter" id="portfolio-filter" data-isotope-nav="isotope">
				          <li class="ptf-active" data-filter="*">Show All</li>
				          <li data-filter=".breakfast">Breakfast</li>
				          <li data-filter=".lunch">Lunch</li>
				          <li data-filter=".dinner">Dinner</li>
				          <li data-filter=".coffee">Coffee</li>
				          <li data-filter=".desert">Desert</li>
				      </ul>
				
				
				  <div id="isotope" class="isotope portfolio-items" data-isotope-item-space="3" data-isotope-mode="masonry" data-isotope-col="3" data-isotope-item=".portfolio-item">
				      <div class="portfolio-item desert breakfast">
				          <div class="portfolio-image effect social-links">
				              <img src="images/menus/1.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">Fast Skateboard</h4>
				          </div>
				          <div class="menu-price">
				              <p>$14</p>
				          </div>
				          <div class="portfolio-details">
				              <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
				          </div>
				      </div>
				      <div class="portfolio-item desert dinner">
				          <div class="portfolio-image effect social-links">
				              <img src="images/menus/1.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="images/menus/1.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">Working hard</h4>
				          </div>
				          <div class="menu-price">
				              <p>$14</p>
				          </div>
				          <div class="portfolio-details">
				              <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
				          </div>
				      </div>
				      <div class="portfolio-item desert dinner">
				          <div class="portfolio-image effect social-links">
				              <img src="images/menus/3.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="images/menus/3.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">The feather man</h4>
				          </div>
				          <div class="menu-price">
				              <p>$14</p>
				          </div>
				          <div class="portfolio-details">
				              <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
				          </div>
				      </div>
				      <div class="portfolio-item desert breakfast">
				          <div class="portfolio-image effect social-links">
				              <img src="images/menus/4.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="images/menus/4.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">The long line</h4>
				          </div>
				          <div class="portfolio-details">
				              <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
				          </div>
				      </div>
				      <div class="portfolio-item lunch dinner">
				          <div class="portfolio-image effect social-links">
				              <img src="images/menus/21.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="images/menus/21.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                   </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">Backwards</h4>
				          </div>
				          <div class="menu-price">
				              <p>$14</p>
				          </div>
				          <div class="portfolio-details">
				              <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
				          </div>
				      </div>
				      <div class="portfolio-item desert breakfast lunch">
				          <div class="portfolio-image effect social-links">
				              <img src="images/menus/5.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="images/menus/5.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                   </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">Disappointed horse</h4>
				          </div>
				          <div class="menu-price">
				              <p>$14</p>
				          </div>
				          <div class="portfolio-details">
				              <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
				          </div>
				      </div>
				      <div class="portfolio-item desert breakfast">
				          <div class="portfolio-image effect social-links">
				              <img src="images/menus/22.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="images/menus/22.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                   </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">Wire's</h4>
				          </div>
				          <div class="menu-price">
				              <p>$14</p>
				          </div>
				          <div class="portfolio-details">
				              <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
				          </div>
				      </div>
				      <div class="portfolio-item desert coffee">
				          <div class="portfolio-image effect social-links">
				              <img src="images/menus/6.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="images/menus/6.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">Forcing</h4>
				          </div>
				          <div class="menu-price">
				              <p>$14</p>
				          </div>
				          <div class="portfolio-details">
				              <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
				          </div>
				      </div>
				      <div class="portfolio-item desert coffee lunch">
				          <div class="portfolio-image effect social-links">
				              <img src="images/menus/7.jpg" alt="">
				              <div class="image-box-content">
				                  <p>
				                      <a href="images/menus/7.jpg" data-lightbox="image" title="Your image title here!"><i class="fa fa-expand"></i></a>
				                  </p>
				              </div>
				          </div>
				          <div class="portfolio-description">
				              <h4 class="title">No words</h4>
				          </div>
				          <div class="menu-price">
				              <p>$14</p>
				          </div>
				          <div class="portfolio-details">
				              <p>Nulla varius consequat magna, id molestie ipsum volutpat quis. Suspendisse consectetur fringilla luctus. Fusce id mi diam, non ornare orci.</p>
				          </div>
				      </div>
				  </div>
				
				  </div>
				      <hr class="space">
				  </section>
				
				  
				  <jsp:include page="/WEB-INF/jsp/include/inc_footer.jsp"  />
			
			</div>
			
			 <jsp:include page="/WEB-INF/jsp/include/inc_footer2.jsp"  />
			 
	</body>
</html>
