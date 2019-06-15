<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">   
    <script src="js/jquery-1.6.2.min.js" type="text/javascript"></script> 
    <script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
    <script src="js/jcarousellite_1.0.1.js" type="text/javascript"></script>
    <script src="js/jquery.galleriffic.js" type="text/javascript"></script>
    <script src="js/jquery.opacityrollover.js" type="text/javascript"></script> 
    <script src="login.jsp" type="text/javascript"></script> 
    <script type="text/javascript">
		$(document).ready(function() { 
			$(".jCarouselLite").jCarouselLite({
				  btnNext: ".next",
				  btnPrev: ".prev",		  
				  speed: 400,		  
				  vertical: false,
				  circular: true,
				  easing:'easeOutQuart',
				  visible: 4,
				  start: 0,
				  scroll: 1
			 });
		});
	</script>    
	<!--[if lt IE 7]>
        <div style=' clear: both; text-align:center; position: relative;'>
            <a href="http://www.microsoft.com/windows/internet-explorer/default.aspx?ocid=ie6_countdown_bannercode"><img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0"  alt="" /></a>
        </div>
	<![endif]-->
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
        <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
	<![endif]-->
</head>
<body id="page3">
	<!--==============================header=================================-->
    <header>
    	<div class="row-1">
        	<div class="main">
            	<div class="container_12">
                	<div class="grid_12">
                    	<nav>
                            <ul class="menu">
                                <li><a href="index.jsp">About Us</a></li>
                                <li><a href="SearchUser.jsp">Services</a></li>
                                <li><a class="active" href="catalogue.do">Catalogue</a></li>
                                <li><a href="list.do">Pricing</a></li>
                                <li><a href="Mypage.do">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="row-2">
        	<div class="main">
            	<div class="container_12">
                	<div style="display:inline" class="grid_9">
                    	<h1>
                            <a class="logo" href="index.jsp">G<strong>G</strong>G</a>
                            <span>roup</span>
                        </h1>
                    </div>
         
                    <div class="grid_3">
                    	<form id="search-form" method="post" enctype="multipart/form-data">
                            <fieldset>	
                               <div class="search-field">
	                                
                                    <select class="search-op" name="opt" >
										<option value="0">제목</option>
										<option value="1">내용</option>
										<option value="2">작성자</option>
									</select>
                                    <input type="text" maxlength="16" name="condition" />
                                    
                                    <a class="search-button" href="list.do"><span>search</span></a>	
                                </div>						
                            </fieldset>
                        </form>
                     </div>
                     <div class="clear"></div>
                </div>
            </div>
        </div>    	
        
        
    </header>
  
    
<!-- content -->
    <section id="content">

        <div class="bg-top">
        	<div class="bg-top-2">
                <div class="bg">
                    <div class="bg-top-shadow">
                 
                      <div class="main">
                           
                         <div class="box">
							                       
							                         
                                <div class="padding">
                                
                            
                                
                                
                                    <div class="container_12">
                                        <div class="wrapper">
                                            <div class="grid_12">
                                            	
                                            	<div class="indent-left p2">
                                                	<h3 class="p0">Purchase</h3>
                                                </div>
                                                
                                                 
                                                
                                                <article class="grid_3">
                                                    <div class="cate_button">
												    	<div class = "cate_word">
												  		  	<p class="listhead">List</p>
												  		  	<p><a href="catalogue.do?category=1">침실 가구</a></p>
												  		  	<p><a href="catalogue.do?category=2">거실 가구</a></p>
												  		  	<p><a href="catalogue.do?category=3">수납 가구</a></p>
												  		  	<p><a href="catalogue.do?category=4">주방 가구</a></p>
												  		  	<p><a href="catalogue.do?category=5">책상,책장</a></p>
												  		  	<p><a href="catalogue.do?category=6">의자</a></p>
												  		  	<p><a href="catalogue.do?category=7">기타 가구</a></p>
												  		 </div>
													</div>   
                                                </article>
                                                
 													<c:if test="${fn:length(articleList)==0}">
                                                  	 	<div class="wrapper p4" style="padding-bottom:200px;">
	                                                  	 	
	                                                        <div class="indent-left t2">
	                                                            <h3 style="margin-left:200px;">현재 가구가 없습니다!</h3>
	                                                        </div>
		                                                    
                                                  	 		
                                                  	 	</div>
                                                   	</c:if>                                                
                    
                                                   	<c:forEach items="${articleList}" var="article" varStatus="status" begin="${(spage-1)*6}" end="${(spage-1)*6+5}">
                                                   	<c:if test="${status.count==1}">
                                                  	 	<div class="wrapper p4 padd paddt">
                                                   	</c:if>
                                                   	<c:if test="${status.count%3==1 && status.count!=1}">
                                                  	 	</div>
                                                   		<div class="wrapper padd">
                                                   	</c:if>
                                                   	<c:choose>        
														<c:when test="${status.count%3==1}">
															<article class="grid_3 alpha ">
		                                                        <div class="indent-left">
		                                                            <figure class="frame2 p2"><img src="${article.img}" alt="" width="170" height="150" /></figure>
		                                                            <p class="color-4 prev-indent-bot font-sbj">${article.subject}</p>
		                                                            <p class="cnthei">
		                                                            <c:choose>
																	        <c:when test="${fn:length(article.content) gt 36}">
																	        <c:out value="${fn:substring(article.content, 0, 35)}">
																	        </c:out><span>...</span></c:when>
																	        <c:otherwise>
																	        <c:out value="${article.content}">
																	        </c:out></c:otherwise>
																	</c:choose>
																	</p>
		                                                            <div class="wrapper">
		                                                            	<span class="price fleft">&#8361;&nbsp;${article.price}</span>
		                                                                <a class="button fright" href="content.do?num=${article.num}">Read</a>
		                                                            </div>
		                                                        </div>
		                                                    </article>
														</c:when>
														<c:when test="${status.count%3==2}">
															<article class="grid_3">
		                                                        <div class="indent3">
		                                                            <figure class="frame2 p2"><img src="${article.img}" alt="" width="170" height="150"  /></figure>
		                                                            <p class="color-4 prev-indent-bot font-sbj">${article.subject}</p>
		                                                            <p class="cnthei">
		                                                            <c:choose>
																	        <c:when test="${fn:length(article.content) gt 36}">
																	        <c:out value="${fn:substring(article.content, 0, 35)}">
																	        </c:out><span>...</span></c:when>
																	        <c:otherwise>
																	        <c:out value="${article.content}">
																	        </c:out></c:otherwise>
																	</c:choose>
																	</p>
		                                                            <div class="wrapper">
		                                                            	<span class="price fleft">&#8361;&nbsp;${article.price}</span>
		                                                                <a class="button fright" href="content.do?num=${article.num}">Read</a>
		                                                            </div>
		                                                        </div>
		                                                    </article>
														</c:when>
														<c:when test="${status.count%3==0}">
															<article class="grid_3 omega">
		                                                        <div class="indent-right">
		                                                            <figure class="frame2 p2"><img src="${article.img}" alt="" width="170" height="150"  /></figure>
		                                                            <p class="color-4 prev-indent-bot font-sbj">${article.subject}</p>
		                                                            <p class="cnthei">
		                                                            <c:choose>
																	        <c:when test="${fn:length(article.content) gt 36}">
																	        <c:out value="${fn:substring(article.content, 0, 35)}">
																	        </c:out><span>...</span></c:when>
																	        <c:otherwise>
																	        <c:out value="${article.content}">
																	        </c:out></c:otherwise>
																	</c:choose>
																	</p>
		                                                            <div class="wrapper">
		                                                            	<span class="price fleft">&#8361;&nbsp;${article.price}</span>
		                                                                <a class="button fright" href="content.do?num=${article.num}">Read</a>
		                                                            </div>
		                                                        </div>
		                                                    </article>
														</c:when>
													</c:choose>
													</c:forEach>
                                                	</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           
                          <div class="bg">
                            <div class="gallery p3">
                            	
                                <div class="inner-2">
                                    <div class="wrapper">
                                        <span class="title t2 img-indent3" style="padding-right:80px; padding-left:40px;">${spage}</span>
                                        <div class="extra-wrap indent-top2">
                                        	   <br />
                                        	   <div id="pageForm">
											        <c:if test="${startPage != 1}">
											            <a href='catalogue.do?page=${startPage-1}&category=${category}'>[이전 ]</a>
											        </c:if>
											        
											        <c:forEach var="pageNum" begin="${startPage}" end="${endPage}">
											            <c:if test="${pageNum == spage}">
											                <div class="nowPage">${pageNum}</div>
											            </c:if>
											            <c:if test="${pageNum != spage}">
											                <div class="lastPage">
											                <a href='catalogue.do?page=${pageNum}&category=${category}'>${pageNum}</a>
											                </div>
											            </c:if>
											        </c:forEach>
											        
											        <c:if test="${endPage != maxPage }">
											            <a href='catalogue.do?page=${endPage+1 }&category=${category}'>[다음]</a>
											        </c:if>
											    </div>


                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel">
                                <h3 class="color-1 p2">Projects Archive</h3>
                                <a class="prev" href="#">Prev</a>
                                <a class="next" href="#">Next</a>
                                <div class="jCarouselLite">
                                    <ul id="carousel">
                                        <li><a href="#"><img src="images/page3-img1.jpg" alt="" /><span>2011</span></a></li>
                                        <li><a href="#"><img src="images/page3-img2.jpg" alt="" /><span>2010</span></a></li>
                                        <li><a href="#"><img src="images/page3-img3.jpg" alt="" /><span>2009</span></a></li>
                                        <li><a href="#"><img src="images/page3-img4.jpg" alt="" /><span>2008</span></a></li>
                                    </ul>
                                </div>
                            </div>
                           </div>
                        </div>
                      
                        
                    </div>
                </div>
            </div>	
        </div>
    </section>
    
	 <!--==============================footer=================================-->
    <footer>
        <div class="main">
        	<div class="container_12">
            	<div class="wrapper">
                	<div class="grid_4">
                    	<div>GGG &copy; 2019 <a class="link color-3" href="#">GGG Project</a></div>
                        <div><a rel="nofollow" target="_blank" href="https://github.com/jinhoon227/GGGProject">GGG OpenSource</a> using TemplateMonster.com</div>
                        <!-- {%FOOTER_LINK} -->
                    </div>
                    <div class="grid_4">
                    	<span class="phone-numb"><span>+1(800)</span> 123-1234</span>
                    </div>
                    <div class="grid_4">
                    	<ul class="list-services">
                        	<li><a href="https://github.com/jinhoon227/GGGProject"></a></li>
                            <li><a class="item-2" href="https://github.com/jinhoon227/GGGProject"></a></li>
                            <li><a class="item-3" href="https://github.com/jinhoon227/GGGProject"></a></li>
                            <li><a class="item-4" href="https://github.com/jinhoon227/GGGProject"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
  	<script src="./js/allui.js"></script> 
</body>
</html>
