
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
 <html>
<head>
<title>게시판</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
  <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
  <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen">   
  

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

<body id="page4">
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
                                <li><a href="catalogue.do">Catalogue</a></li>
                                <li><a class="active" href="list.do">Pricing</a></li>
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
                	<div class="grid_9">
                    	<h1>
                            <a class="logo" href="index.jsp">G<strong>G</strong>G</a>
                            <span>roup</span>
                        </h1>
                    </div>
                    <div class="grid_3">
                    	<form id="search-form">
                   			
                            <fieldset>	
                                <div class="search-field">
	                                
                                    <select class="search-op" name="opt" >
										<option value="0" selected>제목</option>
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
                                                	<h3 class="p0">Latest Income</h3>
                                                </div>
                                                
                                                   	<c:forEach items="${articleList}" var="article" varStatus="status" end="5">
                                                   	<c:if test="${status.count==1}">
                                                  	 	<div class="wrapper p4">
                                                   	</c:if>
                                                   	<c:if test="${status.count%3==1 && status.count!=1}">
                                                  	 	</div>
                                                   		<div class="wrapper">
                                                   	</c:if>
                                                   	<c:choose>        
														<c:when test="${status.count%3==1}">
															<article class="grid_4 alpha">
		                                                        <div class="indent-left">
		                                                            <figure class="frame2 p2"><img src="${article.img}" alt="" width="250" height="150" /></figure>
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
		                                                                <a class="button fright" href="content.do?num=${article.num}">Read More</a>
		                                                            </div>
		                                                        </div>
		                                                    </article>
														</c:when>
														<c:when test="${status.count%3==2}">
															<article class="grid_4">
		                                                        <div class="indent3">
		                                                            <figure class="frame2 p2"><img src="${article.img}" alt="" width="250" height="150"  /></figure>
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
																	</p class="cnthei">
		                                                            <div class="wrapper">
		                                                            	<span class="price fleft">&#8361;&nbsp;${article.price}</span>
		                                                                <a class="button fright" href="content.do?num=${article.num}">Read More</a>
		                                                            </div>
		                                                        </div>
		                                                    </article>
														</c:when>
														<c:when test="${status.count%3==0}">
															<article class="grid_4 omega">
		                                                        <div class="indent-right">
		                                                            <figure class="frame2 p2"><img src="${article.img}" alt="" width="250" height="150"  /></figure>
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
		                                                                <a class="button fright" href="content.do?num=${article.num}">Read More</a>
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
                            </div>
                        </div>
                    </div>
                </div>
            </div>	
        </div>
         <div class="bg-bot">
        	<div class="main">
            	<div class="container_12">
                	<div class="wrapper">
                    	<article class="grid_4">
                        	<h3 class="p2" >Hot Furniture</h3>
                            <div class="wrapper">
                            	<figure class="img-indent frame2"><img src="${maxScore.img}" alt="" width="120" height="150"  /></figure>
                                <p class="prev-indent-bot color-4 font-sbj">${maxScore.subject}</p>
                                <p class="prev-indent-bot">
                                 <c:choose>
								        <c:when test="${fn:length(maxScore.content) gt 36}">
								        <c:out value="${fn:substring(maxScore.content, 0, 35)}">
								        </c:out><span>...</span></c:when>
								        <c:otherwise>
								        <c:out value="${maxScore.content}">
								        </c:out></c:otherwise>
								</c:choose>
                                </p>
                                <a class="button" href="content.do?num=${maxScore.num}">View More</a>
                            </div>
                        </article>
                        <article class="grid_4">
                        	<h3 class="prev-indent-bot2">Our Pricing</h3>
                            <div class="wrapper">
                            	<div class="grid_4 alpha">
                                	<div class="indent-right2">
                                		<ul class="price-list">
                                			<c:forEach items="${articleList}" var="article" varStatus="status" end="5">
	                                			 <c:choose>
												        <c:when test="${status.count==5}">
												  			<li class="last"><span>&#8361;${article.price}</span><a href="content.do?num=${article.num}">${article.subject}</a><strong>&nbsp;</strong></li>
												    	</c:when>
												        <c:otherwise>
													        <li><span>&#8361;${article.price}</span><a href="content.do?num=${article.num}">${article.subject}</a><strong>&nbsp;</strong></li>
														</c:otherwise>
												</c:choose>
                                			</c:forEach>
                             			</ul>                
                                    </div>
                                </div>    
                               </div>
                         </article>
                          <article class="grid_4">
                        	
                            <div class="wrapper">
                            <div style="text-align:right"><a class="button" OnClick="window.location='writeform.jsp'">판매하기</a></div>
                            	<div class="grid_4 omega">
                                	<div class="indent-right2">
                                		<ul class="price-list">
                                			<c:forEach items="${articleList}" var="article" varStatus="status" begin="6" end="11">
	                                			<c:choose>
												        <c:when test="${status.count==11}">
												  			<li class="last"><span>&#8361;${article.price}</span><a href="content.do?num=${article.num}">${article.subject}</a><strong>&nbsp;</strong></li>
												    	</c:when>
												        <c:otherwise>
													        <li><span>&#8361;${article.price}</span><a href="content.do?num=${article.num}">${article.subject}</a><strong>&nbsp;</strong></li>
														</c:otherwise>
												</c:choose>
                                			</c:forEach>
                             			</ul>                
                                    </div>
                                </div>    
                             </div>
                         </article>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script> 
  <script src="./js/allui.js"></script> 
</body>
</html>