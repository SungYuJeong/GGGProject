var bannerOffset = $( '.row-1' ).offset();

$( window ).scroll( function() {  //window에 스크롤링이 발생하면

      if ( $( document ).scrollTop() > bannerOffset.top ) {   // 위치 및 사이즈를 파악하여 미리 정한 css class를 add 또는 remove 합니다.

        $( '.row-1' ).addClass( 'topFixBannerFixed' );

      }

      else {

        $( '.row-1' ).removeClass( 'topFixBannerFixed' );

      }

 });

