<!DOCTYPE html>
<html lang="en">
<head>
    <title></title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/grid.css" type="text/css" media="screen"> 
    <script src="js/jquery-1.6.2.min.js" type="text/javascript"></script>
    <script src="js/jquery.galleriffic.js" type="text/javascript"></script>
    <script src="js/jquery.opacityrollover.js" type="text/javascript"></script>      
	<style>
		.button{
				width:200px;
				
				background-color: #8BC4BD;
				border: none;
				color:#fff;
				padding: 15px 0;
				text-align: center;
				text-decoration: none;
				font-size: 15px;
				margin: 4px;
				cursor: pointer;
			}
		.button:hover {
				color:black;
				background-color: #CEF6F5;

			}
			.content {
			text-align: center;
			font-size: 15px;
			font-weight: bold;
			 font-family: Montserrat, sans-serif;
		}
		.window {
		font-family: Montserrat, sans-serif;
		font-size: 2em;
		}
		#thumbs {
	
		}
		
	</style>
</head>
<body id="page1">
	<!--==============================header=================================-->
    <header>
    	<div class="row-1">
        	<div class="main">
            	<div class="container_12">
                	<div class="grid_12">
                    	<nav>
                            <ul class="menu">
                                <li><a href="index.jsp">About Us</a></li>
                                <li><a class="active" href="services.jsp">Search User</a></li>
                                <li><a href="catalogue.jsp">Catalogue</a></li>
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
                	<div class="grid_9">
                    	<h1>
                            <a class="logo" href="index.jsp">G<strong>G</strong>G</a>
                            <span>roup</span>
                        </h1>
                    </div>
                    <div class="grid_3">
                    	<form id="search-form" method="post" enctype="multipart/form-data">
                            <fieldset>	
                                <div class="search-field">
                                    <input name="search" type="text" />
                                    <a class="search-button" href="#" onClick="document.getElementById('search-form').submit()"><span>search</span></a>	
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
        <div class="bg-top">
        	<div class="bg-top-2">
                <div class="bg">
                    <div class="bg-top-shadow">
                        <div class="main">
                            <div class="gallery p3">
                            	<div class="wrapper indent-bot">
                            		
                					<input class = "button" type="button" value= "Find my location" id="getLocation" />
                					
                                     <div id="gallery" class="content">
                          		
                                     <script>
                                     var Searching =0;
                                      function myMap() {  
                                    	
                                    	  var mark1 = new google.maps.LatLng(36.6308239, 127.4552541);
                                    	  var mark2 = new google.maps.LatLng(36.6322724, 127.4548716);
                                    	  var mark3 = new google.maps.LatLng(36.632832, 127.4557401);
                                    	  var mark4 = new google.maps.LatLng(36.632000, 127.4557000);
                                    	  var mark5 = new google.maps.LatLng(36.6328694, 127.4404191);
                                    	  //var A = ${article.subject};
                                    	  var mapCanvas = document.getElementById("gallery");
                                    	  var myCenter = new google.maps.LatLng(36.6322724, 127.4548716);
                                    	  var mapOptions = {
                                    	  	center: {lat: 37.5867139, lng: 126.9747627}, 
                                    	    zoom: 15
                                    	  };
                                    	  var map = new google.maps.Map(mapCanvas, mapOptions);
                                    	  
                              
                                    	 
                                      	  
                                    	 
                                    	  
                                    		 function successCallback(position) { 
                                    			
                                    			 let pos = { 
                                    					 
                                    					 lat: position.coords.latitude, 
                                    					 lng: position.coords.longitude 
                                    			}; 
                                    			
                                    			 map.setCenter(pos);
                                    			 var Searching =1;
                                    			 var myPosition = new google.maps.Marker({
                                               		position: {lat : position.coords.latitude, lng: position.coords.longitude},
                                               	    animation:google.maps.Animation.BOUNCE,
                                               		icon: 'my.png'	
                                               	  });
                                               	  myPosition.setMap(map);
                                               	 var marker1 = new google.maps.Marker({
                                             		position:mark1,
                                             	    animation:google.maps.Animation.BOUNCE,
                                             		icon: 'cbnu.png'	
                                             	  });
                                             	  marker1.setMap(map);
                                             	  
                                             	  google.maps.event.addListener(marker1,'click',function() {
                                   					var infowindow = new google.maps.InfoWindow({
                                   					content:'<div class="window">'+'<b>White Chare</b><br/>User : ykkim6872'+'<br/><img src="images/thumb-1.jpg" width="300px" height="200px">'
                                   					});
                                   				  infowindow.open(map,marker1);
                                   					});
                                             	  var marker2 = new google.maps.Marker({
                                               		position:mark2,
                                               	    animation:google.maps.Animation.BOUNCE,
                                               		icon: 'cbnu.png'	
                                               	  });
                                               	  marker2.setMap(map);
                                               	  
                                               	 google.maps.event.addListener(marker2,'click',function() {
                                    					var infowindow = new google.maps.InfoWindow({
                                    					content:'<div class="window">'+'<b>WhiteDesk</b><br/>User : ykkim6872'+'<br/><img src="images/thumb-2.jpg" width="300px" height="200px">'
                                    					});
                                    				  infowindow.open(map,marker2);
                                    					});
                                               	var marker3 = new google.maps.Marker({
                                             		position:mark3,
                                             	    animation:google.maps.Animation.BOUNCE,
                                             		icon: 'cbnu.png'	
                                             	  });
                                             	  marker3.setMap(map);
                                             	  
                                             		 google.maps.event.addListener(marker3,'click',function() {
                                         					var infowindow = new google.maps.InfoWindow({
                                         					content:'<div class="window">'+'<b>Stend Light</b><br/>User : ykkim6872'+'<br/><img src="images/thumb-3.jpg" width="300px" height="200px">'
                                         					});
                                         				  infowindow.open(map,marker3);
                                         					});
                                             	  var marker4 = new google.maps.Marker({
                                               		position:mark4,
                                               	    animation:google.maps.Animation.BOUNCE,
                                               		icon: 'cbnu.png'	
                                               	  });
                                               	  marker4.setMap(map);
                                               	  
                                              	 google.maps.event.addListener(marker4,'click',function() {
                                     					var infowindow = new google.maps.InfoWindow({
                                     					content:'<div class="window">'+'<b>Wood bed</b><br/>User : ykkim6872'+'<br/><img src="images/thumb-4.jpg" width="300px" height="200px">'
                                     					});
                                     				  infowindow.open(map,marker4);
                                     					});
                                               	var marker5 = new google.maps.Marker({
                                             		position:mark5,
                                             	    animation:google.maps.Animation.BOUNCE,
                                             		icon: 'cbnu.png'	
                                             	  });
                                             	 // marker5.setMap(map);
                                             	  
                                             		 google.maps.event.addListener(marker5,'click',function() {
                                         					var infowindow = new google.maps.InfoWindow({
                                         					content:'<div>'+'E'+'<br/><img src="gagu5.PNG" width="100px" height="100px">'
                                         					});
                                         				 // infowindow.open(map,marker5);
                                         					});
                                             		 
                                             		var myUniversity = new google.maps.Circle({
                                             		    center: {lat : position.coords.latitude, lng: position.coords.longitude},
                                             		    radius: 900,
                                             		    strokeColor: "#A94F13",
                                             		    strokeOpacity: 0.8,
                                             		    strokeWeight: 2,
                                             		    fillColor: "#A94F13",
                                             		    fillOpacity: 0.1
                                             		  });
                                             		  myUniversity.setMap(map);
                                             	
                                             		 setTimeout( function(){
                                             			alert("Your location has been confirmed.");
                                             		
                                           			}, 800);
                                             		
                                             		
                                    			 } 
                                    		 
                                    		 function errorCallback(error) { 
                                    			 alert("Error: " + error.message);
                                    			 
                                    			 } 
                                    		 document.getElementById("getLocation").onclick = function () { 
                                    		
                                    			 navigator.geolocation.getCurrentPosition(successCallback, errorCallback);
                                    			 };

                                    		
                                    	}
											</script>
											
											<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKcWWf_FRem_YaXzPXaoO1gugwVhKZlls&callback=myMap">
											</script>
											          
                                       <div class="wrapper">
                                           <div class="slideshow-container">
                                                <div id="slideshow" class="slideshow"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="thumbs" class="navigation" >
                                    	
                                    	<img id ="Searching" src="Searching.gif" width="200px" height="200px" style="display: none "/>
                                    	<img id ="Searching2" src="checking.png" width="320px" height="260px" />
                                    	<a id ="server" style="display: none ">GPS Server running ...<br/><br/>If the icon stops, the GPS is disconnected.<br/> Press the f5 button.</a>
                                    	<script>
                                    
	                                    	$(document).ready(function () {
	                                            $("#getLocation").click(function () {
	                                                $("#Searching").show("fast");
	                                            });
	                                            $("#getLocation").click(function () {
	                                                $("#server").show("fast");
	                                            });
	                                            $("#getLocation").click(function () {
	                                                $("#Searching2").hide("fast");
	                                            });
	                                        });
                                    
                                    	</script>
                                    	
                                    	<br/>        
                                    </div>
                                </div>
                                <div class="inner">
                                    <div class="wrapper" >
                                        <img src="introduce.png" width="850px" height="150px"/>
                                        
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
    
    <script type="text/javascript">
			$(window).load(function() {
			// We only want these styles applied when javascript is enabled
			$('div.navigation').css({'width' : '320px', 'float' : 'right'});
			$('div.content').css('display', 'block');
	
			// Initially set opacity on thumbs and add
			// additional styling for hover effect on thumbs
			var onMouseOutOpacity = 0.5;
			$('#thumbs ul.thumbs li span').opacityrollover({
				mouseOutOpacity:   onMouseOutOpacity,
				mouseOverOpacity:  0.0,
				fadeSpeed:         'fast',
				exemptionSelector: '.selected'
			});
			
			// Initialize Advanced Galleriffic Gallery
			var gallery = $('#thumbs').galleriffic({
				delay:                     7000,
				numThumbs:                 12,
				preloadAhead:              6,
				enableTopPager:            false,
				enableBottomPager:         false,
				imageContainerSel:         '#slideshow',
				controlsContainerSel:      '',
				captionContainerSel:       '',
				loadingContainerSel:       '',
				renderSSControls:          true,
				renderNavControls:         true,
				playLinkText:              'Play Slideshow',
				pauseLinkText:             'Pause Slideshow',
				prevLinkText:              'Prev',
				nextLinkText:              'Next',
				nextPageLinkText:          'Next',
				prevPageLinkText:          'Prev',
				enableHistory:             true,
				autoStart:                 7000,
				syncTransitions:           true,
				defaultTransitionDuration: 900,
				onSlideChange:             function(prevIndex, nextIndex) {
					// 'this' refers to the gallery, which is an extension of $('#thumbs')
					this.find('ul.thumbs li span')
						.css({opacity:0.5})
				},
				onPageTransitionOut:       function(callback) {
					this.find('ul.thumbs li span').css({display:'block'});
				},
				onPageTransitionIn:        function() {
					this.find('ul.thumbs li span').css({display:'none'});
				}
			});
		});
	</script>
</body>
</html>
