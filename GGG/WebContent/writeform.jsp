<%@ page language="java" contentType="text/html; charset=euc-kr"
   pageEncoding="euc-kr"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>BOARD 테이블 레코드 삽입</title>

<style>
* {
   box-sizing: border-box;
}

body {
   background: #ecf0f1;
   font-family: "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans",
      "DejaVu Sans", Verdana, sans-serif;
}

.page-wrap {
   max-width: 75rem;
   margin: 0 auto;
}

h1 {
   font-size: 24px;
   font-weight: normal;
   margin: 0.4em 0;
   color: #8e44ad;
   font-size: 1.5rem;
   letter-spacing: -1px;
   margin: 1.25rem 0;
}

%
label-movement {
   color: #8e44ad;
   top: -2.25rem;
   transition: all 0.125s cubic-bezier(0.2, 0, 0.03, 1);
}

.styled-input {
   float: left;
   width: 33.3333%;
   margin: 2rem 0 1rem;
   position: relative; label { color : #999;
   padding: 1rem;
   position: absolute;
   top: 0;
   left: 0;
   transition: all 0.25s cubic-bezier(0.2, 0, 0.03, 1);
   pointer-events: none;
}

&
.wide { // Full width textarea fields width:100%;
   
}

}
.styled-input input, .styled-input textarea {
   padding: 1rem 1rem;
   border: 0;
   width: 100%;
   font-size: 1rem; ~ span { // Border Effect display : block;
   width: 0;
   height: 3px;
   background: #8e44ad;
   position: absolute;
   bottom: 0;
   left: 0;
   transition: all 0.125s cubic-bezier(0.2, 0, 0.03, 1);
}

&
:focus { // Trigger the effects outline:0; ~ label { // Move Label
   @extend %label-movement;
   
}

~
span { // Expand across width:100%;
   transition: all 0.125s cubic-bezier(0.2, 0, 0.03, 1);
}

}
&
:valid ~ label /*, &.not-empty ~ label*/ { // Keep label above field
   after its filled out @extend %label-movement;
   
}

}
textarea { // Mods needed for multiline inputs width:100%;
   min-height: 15em;
}

.styled-input input:focus ~ label, .styled-input textarea:focus ~ label,
   input:valid ~ label, textarea:valid ~ label {
   font-size: 0.75em;
   color: #8e44ad;
   top: -2.25rem;
   -webkit-transition: all 0.125s ease;
   transition: all 0.125s ease;
}

.styled-input {
   float: left;
   width: 33.3333%;
   margin: 2rem 0 1rem;
   position: relative;
}

.styled-input label {
   color: #999;
   padding: 1rem;
   position: absolute;
   top: 0;
   left: 0;
   -webkit-transition: all 0.25s ease;
   transition: all 0.25s ease;
   pointer-events: none;
}

.styled-input.wide {
   width: 100%;
}

.styled-input input, .styled-input textarea {
   padding: 1rem 1rem;
   border: 0;
   width: 100%;
   font-size: 1rem;
}

.styled-input input ~ span, .styled-input textarea ~ span {
   display: block;
   width: 0;
   height: 3px;
   background: #8e44ad;
   position: absolute;
   bottom: 0;
   left: 0;
   -webkit-transition: all 0.125s ease;
   transition: all 0.125s ease;
}

.styled-input input:focus, .styled-input textarea:focus {
   outline: 0;
}

.styled-input input:focus ~ span, .styled-input textarea:focus ~ span {
   width: 100%;
   -webkit-transition: all 0.075s ease;
   transition: all 0.075s ease;
}

textarea {
   width: 100%;
   min-height: 15em;
   color: #999;
}

#white_back {
   maring-top: 100px;
   background: rgba(255, 255, 255, 0.3);
   margin: auto;
   width: 800px;
   height: 800px;
   padding-top: 100px;
}

.container {
   width: 100%;
   margin: 0 auto;
}

.container .row {
   float: left;
   clear: both;
   width: 100%;
}

.container .col {
   float: left;
   margin: 0 0 1.2em;
   padding-right: 1.2em;
   padding-left: 1.2em;
}

.container .col.one, .container .col.two, .container .col.three,
   .container .col.four, .container .col.five, .container .col.six,
   .container .col.seven, .container .col.eight, .container .col.nine,
   .container .col.ten, .container .col.eleven, .container .col.twelve {
   width: 100%;
}

@media screen and (min-width: 767px) {
   .container {
      width: 100%;
      max-width: 1080px;
      margin: 0 auto;
   }
   .container .row {
      width: 100%;
      float: left;
      clear: both;
   }
   .container .col {
      float: left;
      margin: 0 0 1em;
      padding-right: .5em;
      padding-left: .5em;
   }
   .container .col.one {
      width: 8.33%;
   }
   .container .col.two {
      width: 16.66%;
   }
   .container .col.three {
      width: 24.99%;
   }
   .container .col.four {
      width: 50%;
   }
   .container .col.five {
      width: 41.65%;
   }
   .container .col.six {
      width: 49.98%;
   }
   .container .col.seven {
      width: 58.31%;
   }
   .container .col.eight {
      width: 66.64%;
   }
   .container .col.nine {
      width: 74.97%;
   }
   .container .col.ten {
      width: 83.3%;
   }
   .container .col.eleven {
      width: 91.65%;
   }
   .container .col.tweleve {
      width: 100%;
   }
}
/********************
GENERIC BUTTON STYLES
********************/
.btn {
   font-size: 18px;
   white-space: nowrap;
   padding: .8em 1.5em;
   font-family: Open Sans, Helvetica, Arial, sans-serif;
   line-height: 18px;
   display: inline-block;
   zoom: 1;
   color: #fff;
   text-align: center;
   position: relative;
   -webkit-transition: border .25s linear, color .25s linear,
      background-color .25s linear;
   transition: border .25s linear, color .25s linear, background-color .25s
      linear;
}

/*SEA GREEN BUTTON STYLES*/
.btn.btn-sea {
   background-color: #08bc9a;
   border-color: #08bc9a;
   -webkit-box-shadow: 0 3px 0 #088d74;
   box-shadow: 0 3px 0 #088d74;
}

.btn.btn-sea:hover {
   background-color: #01a183;
}

.btn.btn-sea:active {
   top: 3px;
   outline: none;
   -webkit-box-shadow: none;
   box-shadow: none;
}
/*DARK BUTTON STYLES*/
.btn.btn-orange {
   background-color: #f59e00;
   border-color: #f59e00;
   -webkit-box-shadow: 0 3px 0 #b37401;
   box-shadow: 0 3px 0 #b37401;
}

.btn.btn-orange:hover {
   background-color: #dd9003;
}

.btn.btn-orange:active {
   top: 3px;
   outline: none;
   -webkit-box-shadow: none;
   box-shadow: none;
}

/*CONCRETE BUTTON STYLES*/
.btn.btn-concrete {
   background-color: #7e8c8d;
   border-color: #7e8c8d;
   -webkit-box-shadow: 0 3px 0 #4e5b5c;
   box-shadow: 0 3px 0 #4e5b5c;
}

.btn.btn-concrete:hover {
   background-color: #6a7879;
}

.btn.btn-concrete:active {
   top: 3px;
   outline: none;
   -webkit-box-shadow: none;
   box-shadow: none;
}

.file-upload {
   background-color: #ffffff;
   width: 100%;
   margin: 0 auto;
   padding: 20px;
}

.file-upload-content {
   display: none;
   text-align: center;
}

.file-upload-input {
   position: absolute;
   margin: 0;
   padding: 0;
   width: 100%;
   height: 100%;
   outline: none;
   opacity: 0;
   cursor: pointer;
}

.image-upload-wrap {
   margin-top: 20px;
   border: 4px dashed #1FB264;
   position: relative;
}

.image-dropping, .image-upload-wrap:hover {
   background-color: #1FB264;
   border: 4px dashed #ffffff;
}

.image-title-wrap {
   padding: 0 15px 15px 15px;
   color: #222;
}

.drag-text {
   text-align: center;
}

.drag-text h3 {
   font-weight: 100;
   text-transform: uppercase;
   color: #15824B;
   padding: 60px 0;
}

.file-upload-image {
   max-height: 200px;
   max-width: 200px;
   margin: auto;
   padding: 20px;
}

.remove-image {
   width: 200px;
   margin: 0;
   color: #fff;
   background: #cd4535;
   border: none;
   padding: 10px;
   border-radius: 4px;
   border-bottom: 4px solid #b02818;
   transition: all .2s ease;
   outline: none;
   text-transform: uppercase;
   font-weight: 700;
}

.remove-image:hover {
   background: #c13b2a;
   color: #ffffff;
   transition: all .2s ease;
   cursor: pointer;
}

.remove-image:active {
   border: 0;
   transition: all .2s ease;
}

.select-box {
  cursor: pointer;
  width: 100%;
  
}

.select-box select,
.select-box label {
  color: #414141;
  display: block;
  font: 400 17px/2em 'Source Sans Pro', sans-serif;
}

.select-box select {
  width: 100%;
  position: absolute;
  top: 0;
  padding: 5px 0;
  height: 40px;
  opacity: 0;
  -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=0)";
  background: none transparent;
  border: 0 none;
}
.select-box1 {
  background: white;
}

.select-box label {
  position: relative;
  padding: 5px 10px;
  cursor: pointer;
}
.select-box open .select-box label::after {
   content: "▲";
}
.select-box label::after {
  content: "▼";
  font-size: 12px;
  right: 0;
  top: 0;
  padding: 5px 15px;
  border-left: 5px solid #fff;
}
</style>
<script>
   function readURL(input) {
      if (input.files && input.files[0]) {

         var reader = new FileReader();

         reader.onload = function(e) {
            $('.image-upload-wrap').hide();

            $('.file-upload-image').attr('src', e.target.result);
            $('.file-upload-content').show();

            $('.image-title').html(input.files[0].name);
         };

         reader.readAsDataURL(input.files[0]);

      } else {
         removeUpload();
      }
   }

   function removeUpload() {
      $('.file-upload-input').replaceWith($('.file-upload-input').clone());
      $('.file-upload-content').hide();
      $('.image-upload-wrap').show();
   }
   $('.image-upload-wrap').bind('dragover', function() {
      $('.image-upload-wrap').addClass('image-dropping');
   });
   $('.image-upload-wrap').bind('dragleave', function() {
      $('.image-upload-wrap').removeClass('image-dropping');
   });
   
   $("select").on("click" , function() {
        
        $(this).parent(".select-box").toggleClass("open");
        
      });

      $(document).mouseup(function (e)
      {
          var container = $(".select-box");

          if (container.has(e.target).length === 0)
          {
              container.removeClass("open");
          }
      });


      $("select").on("change" , function() {
        
        var selection = $(this).find("option:selected").text(),
            labelFor = $(this).attr("id"),
            label = $("[for='" + labelFor + "']");
          
        label.find(".label-desc").html(selection);
          
      });
</script>
</head>
<body>
   <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
   <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
   <!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
   <script src="js/bootstrap.min.js"></script>
   <script class="jsbin"
      src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
   <div id="white_back">
      <div style="text-align: right">
         사용자ID : ${id} <input type=button class="btn btn-sea" value="로그아웃"
            OnClick="window.location='logout.do'">
      </div>

      <div class="page-wrap">
         <h1>게시판 작성</h1>
         <form id="inform" action="/board/write.do" method="post">
            <div class="styled-input">
               <input type="text" name="subject" required /> <label>제목을 입력하세요</label> <span></span>
            </div>
            <div class="styled-input">
               <input type="text" name="price" required /> <label>가격(원)</label> <span></span>
            </div>
            <div class="styled-input">
               <div class="select-box">
                   <label for="select-box1" class="label select-box1"><span class="label-desc">가구종류를 선택하세요.</span> </label>
                  <select name = "furniture"  id="select-box1"  >
                     <option value ="BedFurniture">침실가구</option>
                     <option value ="LivingFurniture">거실가구</option>
                     <option value ="StorageFurniture">수납가구</option>
                     <option value ="KitchenFurniture">주방가구</option>
                     <option value ="Desk">책상,책장</option>
                     <option value ="Chair">의자</option>
                     <option value ="OtherFurniture">기타</option>
                  </select>
               </div>
            </div>
            <div class="styled-input wide">
               <textarea name="content" form="inform"
                  placeholder="&#13;&#10;&#13;&#10;구입일자, 브랜드, 사영감 등 상품정보를 자세히 입력하면 거래를 더욱 원할하게 할 수 있습니다."
                  required></textarea>
               <label>상품정보를 입력해주세요. </label> <span></span>
            </div>
            <br style="clear:both;"/>
            <div class="file-upload">
               <div class="image-upload-wrap">
                  <input class="file-upload-input" type='file'
                     onchange="readURL(this);" accept="image/*" name="img" required />
                  <div class="drag-text">
                     <h3>Drag and drop a file or select add Image</h3>
                  </div>
               </div>
            </div>
            <div class="file-upload-content">
               <img class="file-upload-image" src="#" alt="your image" />
               <div class="image-title-wrap">
                  <button type="button" onclick="removeUpload()"
                     class="remove-image">
                     Remove <span class="image-title">Uploaded Image</span>
                  </button>
               </div>
            </div>
            <br style="clear:both;"/>
            <div>
               <input type=submit class="btn btn-orange" value="등록"
                  Onclick="javascript:writeCheck();"> <input type=button
                  class="btn btn-concrete" value="취소"
                  OnClick="window.location='list.do'">
            </div>
         </form>
      </div>
   </div>
</body>
</html>