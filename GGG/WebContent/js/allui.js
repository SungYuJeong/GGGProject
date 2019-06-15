var bannerOffset = $( '.row-1' ).offset();

$( window ).scroll( function() {  //window에 스크롤링이 발생하면

      if ( $( document ).scrollTop() > bannerOffset.top ) {   // 위치 및 사이즈를 파악하여 미리 정한 css class를 add 또는 remove 합니다.

        $( '.row-1' ).addClass( 'topFixBannerFixed' );

      }

      else {

        $( '.row-1' ).removeClass( 'topFixBannerFixed' );

      }

 });

$(window).scroll(function(){ 
    var height = $(document).scrollTop(); //실시간으로 스크롤의 높이를 측정
    if(height > 570){
    	$('.cate_button').removeClass('fixedBtn'); 
    	 $('.cate_button').addClass('fixedBtn2'); 
    }
    else if(height > 160 && height <=570){ 
      $('.cate_button').addClass('fixedBtn'); 
      $('.cate_button').removeClass('fixedBtn2'); 
    }else if(height > 0 && height <= 160){ 
      $('.cate_button').removeClass('fixedBtn'); 
      $('.cate_button').addClass('cate_button2'); 	

    }else if(height <= 0){
    	$('.cate_button').removeClass('cate_button2'); 	
 	
    }
   
      
  });

