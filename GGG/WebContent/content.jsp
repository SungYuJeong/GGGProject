<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>
   <title>게시판</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
   <style>
   
table.type {
   border-collapse: collapse;
   text-align: left;
   line-height: 1.5;
   border-left: 1px solid #ccc;
   margin: auto;
}

table.type thead th {
   padding: 10px;
   font-weight: bold;
   border-top: 1px solid #ccc;
   border-right: 1px solid #ccc;
   border-bottom: 2px solid #c00;
   background: #dcdcd1;
}

table.type th {
   padding: 10px;
   font-weight: bold;
   border-top: 1px solid #ccc;
   border-right: 1px solid #ccc;
   border-bottom: 2px solid #c00;
   background: #dcdcd1;
}

table.type tbody th {
   padding: 10px;
   font-weight: bold;
   vertical-align: top;
   border-right: 1px solid #ccc;
   border-bottom: 1px solid #ccc;
   background: #ececec;
}

table.type td {
   padding: 10px;
   vertical-align: top;
   border-top: 1px solid #ccc;
   border-right: 1px solid #ccc;
   border-bottom: 1px solid #ccc;
}

.delete {

   bottom: 30px;
   margin-left: auto;
}

button {
   width: 100px;
   background-color: #f8585b;
   border: none;
   color: #fff;
   padding: 15px 0;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   font-size: 15px;
   cursor: pointer;
   outline: none;
   
   </style>
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
                                <li><a href="SearchUser.jsp">Search User</a></li>
                                <li><a href="catalogue.do">Catalogue</a></li>
                                <li><a href="list.do">Pricing</a></li>
                                <li><a href="Mypage.do">My page</a></li>
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
                    <div style="position:absolute; top:115px; right:370px;">
                    <a href="login.jsp" style="text-decoration:none" onMouseOver="this.style.color='black'"  onMouseOut="this.style.color=''" ><p style="font-size:15pt">Login</p></a>
                    
                    </div>
                    <div class="grid_3">
                       <form id="search-form">
                            
                            <fieldset>   
                                <div class="search-field">
                                   
                                    <select class="search-op" name="opt" >
                              <option value="0">제목</option>
                              <option value="1">내용</option>
                              <option value="2">작성자</option>
                           </select>
                                    <input type="text" name="condition" />
                                    
                                    <a class="search-button" href="list.do"><span>search</span></a>   
                                </div>                  
                            </fieldset>
                        </form>
                     </div>
                     <div class="clear"></div>
                </div>
            </div>
        </div>       
    </header><div class="ic">More Website Templates  @ TemplateMonster.com - August22nd 2011!</div>
    
<!-- content -->
    <section id="content">
      <div style="text-align:right">
      사용자ID : ${id} <input type=button class="btn btn-info" value="로그아웃" OnClick="window.location='logout.do'">
      </div>
      <c:forEach items="${articleList}" var="article">
      <table class="table table-striped table-bordered table-hover" style="text-align:center">
         <caption style="text-align:center"></caption>
         <tr>
            <td>제목</td>
            <td style="text-align:left">${article.subject}</td>         
         </tr>
         <tr>
            <td>사진</td>
            <td style="text-align:left"><img src="${article.img}" alt="" width="250" height="150" /></td>         
         </tr>
         <tr>
            <td>작성자</td>
            <td style="text-align:left">${article.id}</td>                  
         </tr>
         <tr>
            <td>작성일자</td>
            <td style="text-align:left">${article.boarddate}</td>                  
         </tr>
         <tr>
            <td>조회수</td>
            <td style="text-align:left">${article.score}</td>                  
         </tr>   
         <tr>
            <td>내용</td>
            <td style="text-align:left">${article.content}</td>                  
         </tr>
         
      </table>
      <div style="text-align:right">
         <input type=button class="btn btn-danger" value="삭제하기" OnClick="window.location='delete.do?num=${article.num}'">
         <input type=button class="btn btn-warning" value="수정하기" OnClick="window.location='modifyform.do?num=${article.num}'">         
         <input type=button class="btn btn-secondary" value="돌아가기" OnClick="window.location='list.do'">
      </div>
      <hr />
      <div class="text-center">

      <p>
         <b>댓글 달기</b>
      </p>

      <table width="600px" class="type" >
         <tr>
      
         </tr>
         <tr>
            <th style="background:#dcdcd1">내용</th>
            <td><textarea id="comment" name="content" rows="1"
                  style="width: 100%; border: 0; resize: none;"></textarea></td>
         </tr>
      </table>
      <br />
      <div class="submit">
         <button onclick="myCreateFunction()">Submit</button>
      </div>

   </div>

   <br />
   <br />
   <br />




   <table width="600px" class="type" id="myTable">
      <thead>
         <tr style="width: 300px">
            <th scope="cols">작성자</th>
            <th scope="cols">내용</th>
         </tr>
      </thead>
      <tbody>

      </tbody>
   </table>


   <br>
   <div class="text-center">
      <div class="delete">
         <button onclick="myDeleteFunction()">Delete</button>
      </div>
   </div>
   <script>
      function myCreateFunction() {
         var table = document.getElementById("myTable");
         var row = table.insertRow(table.rows.length); //하단에추가
         var cell1 = row.insertCell(0);
         var cell2 = row.insertCell(1);
         cell1.innerHTML =  "${id}";
         cell2.innerHTML = document.getElementById("comment").value;
      }

      function myDeleteFunction() {
         var table = document.getElementById('myTable');
         if (table.rows.length < 2)
            return;
         table.deleteRow(table.rows.length - 1); //하단부터삭제
      }
   </script>
      </c:forEach>   
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
    
    
<!--
<body>
   <div style="text-align:right">
   사용자ID : ${id} <input type=button class="btn btn-info" value="로그아웃" OnClick="window.location='logout.do'">
   </div>
   <c:forEach items="${articleList}" var="article">
   <table class="table table-striped table-bordered table-hover" style="text-align:center">
      <caption style="text-align:center">게시판 내용</caption>
      <tr>
         <td>제목</td>
         <td style="text-align:left">${article.subject}</td>         
      </tr>
      <tr>
         <td>작성자</td>
         <td style="text-align:left">${article.id}</td>                  
      </tr>
      <tr>
         <td>작성일자</td>
         <td style="text-align:left">${article.boarddate}</td>                  
      </tr>
      <tr>
         <td>조회수</td>
         <td style="text-align:left">${article.score}</td>                  
      </tr>
      <tr>
         <td>email</td>
         <td style="text-align:left">${article.email}</td>                  
      </tr>      
      <tr>
         <td>내용</td>
         <td style="text-align:left">${article.content}</td>                  
      </tr>
      
   </table>
   <div style="text-align:right">
      <input type=button class="btn btn-danger" value="삭제하기" OnClick="window.location='delete.do?num=${article.num}'">
      <input type=button class="btn btn-warning" value="수정하기" OnClick="window.location='modifyform.do?num=${article.num}'">         
      <input type=button class="btn btn-secondary" value="돌아가기" OnClick="window.location='list.do'">
   </div>
   </c:forEach>      
</body>
 -->