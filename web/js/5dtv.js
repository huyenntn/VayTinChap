var screenWidth = $(window).width();
var screenHeight = $(window).height();

$(function() {	
	//----------------------Banner
	  var owlOne = $("#owl-one");
	  //var owlMulti = $("#owl-multi");
	  var owlMulti = $("#owl-demo");
	  var owlMulti2 = $("#owl-demo-2");
	  var owlMulti3 = $("#owl-demo-3");
	  var owlMulti4 = $("#owl-demo-4");	  
	  
	  owlOne.owlCarousel({
		  navigation : false, // Show next and prev buttons
		  slideSpeed : 300,
		  paginationSpeed : 400,
		  singleItem:true,
		  items:1,
		  responsive:{
				0:{
					dots:false
				},
				769:{
					dots:true
				}
			}		  
  		});	
	
	 owlMulti.owlCarousel({
			loop:false,
			margin:20,
			lazyLoad:true,
			pagination: false,
			responsive:{
				0:{
					nav:false,
					stagePadding: 0,
					items:3,
					margin:10,
					stagePadding: 10
				},
				769:{
					nav:false,
					stagePadding: 10,
					margin:10,
					items:6
				},
				980:{
					stagePadding: 40,
					nav:true,
					items:8
				}
			}
		});
		
	 owlMulti2.owlCarousel({
			loop:false,
			margin:20,
			lazyLoad:true,
			pagination: false,
			responsive:{
				0:{
					nav:false,
					stagePadding: 0,
					items:3,
					margin:10,
					stagePadding: 10
				},
				769:{
					nav:false,
					stagePadding: 10,
					margin:10,
					items:6
				},
				980:{
					stagePadding: 40,
					nav:true,
					items:8
				}
			}
		});	
		
     owlMulti3.owlCarousel({
			loop:false,
			margin:20,
			lazyLoad:true,
			pagination: false,
			responsive:{
				0:{
					nav:false,
					stagePadding: 0,
					items:3,
					margin:10,
					stagePadding: 10
				},
				769:{
					nav:false,
					stagePadding: 10,
					margin:10,
					items:6
				},
				980:{
					stagePadding: 40,
					nav:true,
					items:8
				}
			}
		});
		
 	 owlMulti4.owlCarousel({
			loop:false,
			margin:20,
			lazyLoad:true,
			pagination: false,
			responsive:{
				0:{
					nav:false,
					stagePadding: 0,
					items:3,
					margin:10,
					stagePadding: 10
				},
				769:{
					nav:false,
					stagePadding: 10,
					margin:10,
					items:6
				},
				980:{
					stagePadding: 40,
					nav:true,
					items:8
				}
			}
		});		
	 
	 //----------------------Set height for button
	forNextAndPrev();
	
	//----------------------Show hide content
	dropDownContent();
	
	//----------------------Check class 
	checkAndAdd();
	
	//----------------------Search my clip
	searchMyclip();
	
	//----------------------Set height player and resolve scroll
	scrollAndCrop();
	
	//----------------------Resize screen window
	$(window).resize(function() {
  		screenWidth = $(window).width();
		screenHeight = $(window).height();
		
		scrollAndCrop();	
		//heightButton();
   	    forNextAndPrev();	
		
		if (screenWidth >= 980) {
			$("div[off-canvas$='reveal']").attr("off-canvas","slidebar-1 top reveal");
		} else {
			$("div[off-canvas$='reveal']").attr("off-canvas","slidebar-1 left reveal");
		}	
	});
	
	//Disable zoom in ios 10
	document.addEventListener('gesturestart', function (e) {
    	e.preventDefault();
 });
 $(".item-link a").click(function() {
     if (window.innerWidth < 500) {
         $("#hamburger").click();
     }
 })
});	

//1.----------------------Resize image
function resizeImage() {
	//----------------------Call functions set height for images
	$('.ratio-image-16-9 img').each(function(index, element) {
       setHeightImage16x9($(this));
    });
	
	$('.ratio-image-2-3 img').each(function(index, element) {
       setHeightImage2x3($(this));
    });
	
	$('.ratio-image-4-4 img').each(function(index, element) {
       setHeightImage4x4($(this));
    });	
	
	$('.ratio-image-4-3 img').each(function(index, element) {
       setHeightImage4x3($(this));
    });
	
}
	
//2.----------------------Thi?t l?p width cho tên c?a list channel; tên video
	function setWidth(){
		var screenWidth = $(window).width();
		var leftWidth = $(".list-schedule .list-group-item .time").width();
		var rightWith = $(".list-schedule .list-group-item .more").width();
		var rightWithIcon = $(".list-schedule .list-group-item .icon-right").width();		
		//Tính chi?u r?ng c?a item list channel
		var itemWidth = screenWidth - (leftWidth + rightWith + rightWithIcon);
		$(".list-schedule .list-group-item .name").css({"width":itemWidth});
		
		//Tính chi?u r?ng c?a name video
		var itemWidthName = screenWidth - ($(".top-player .pull-right").outerWidth() + 20);//20 là padding c?a element cha
		$(".top-player .name").css({"width":itemWidthName});

	}
	
//3.----------------------Thi?t l?p min-height div ch?a n?i dung
	function setMinHeight(){		
		$("#closedMenu").css("min-height",screenHeight);
		
		$(".close-menu").on("click touchend mouseup", function (e) {
			$(".left-menu .content").css("display","none");
			//alert("ok");
		});
		
		//$(".close-menu").click(function(e) {
         //   $(".left-menu .content").css("display","none");
		   // alert("xx");
       // });
		
	}	
	
//4.----------------------Slide item
	
//5.----------------------Selectpicker for schedule
	function datePicker(classD,widthD){
		if($(classD).size() > 0){
			$(classD).selectpicker({
			  width: widthD	,
			  style: 'btn-sm date-select'
			});	
		}
	}

//6.----------------------Selectpicker for schedule
	function searchMyclip(){
		$(".btn-search").click(function() {
			var heightBody = $(window).height();
			$(".popup-search").toggle(0, function(){
				$(".container").css({"height": 0, "overflow": "hidden"});
			});
			
			$(".box-search-suggess").css("height", heightBody - 40);
		});
		
		$("#closeBox").click(function() {
			$(".popup-search").hide(20);
			$(".container").css({"height": "inherit", "overflow": "inherit"});
		});
		
		$(".ipt-search").focus(function() {
			$(".box-search-suggess").toggle(50);
		});		
		
		$("#clearSuggess").click(function() {
			$(".box-search-suggess").hide();
		});	
	
	}
	
//7.----------------------Thi?t l?p height cho khung live cam
	function setHeightLiveCam(){
		var screenHeight = $(window).height();
		var height01 = $(".mdl-live-cam .item-typing").outerHeight();
		var height02 = $(".mdl-live-cam .top-control").outerHeight();
		var height03 = $(".mdl-live-cam .title").outerHeight();
		var heightObject = $(".mdl-live-cam .scroll-content").outerHeight();		
		var chatHeight = screenHeight - (height01 + height02 + height03 + 10);
		
		$(".mdl-live-cam").css({"height":screenHeight});
		
		//Ki?m tra ?i?u ki?n tr??c khi thi?t l?p chi?u cao cho khung chat
		if(heightObject > chatHeight){
			$(".mdl-live-cam .chat-control .scroll-content").css({"height":chatHeight});
		}
	}	
	
//8.----------------------Thi?t l?p height cho banner theo t? l? 16/9
	function setHeightBanner(){
		var screenWidth = $(window).width();
		var heightBanner = ((screenWidth*9) / 16) + 2;
		$("#carousel-banner").css("height",heightBanner);
		$("#carousel-banner .owl-item").css("width",screenWidth);
		
		//$("#carousel-banner .owl-item ").css("width","100%");		
		//$("#carousel-banner .owl-item img").css("width",screenWidth);				
		$("#carousel-banner").css("overflow","hidden");
	}
	
//9.----------------------Thi?t l?p height cho images theo t? l? 16/9
	function setHeightImage16x9(item){
		item.css("height","auto");
		var imageWidth = item.width();
		var imageHeight = ((imageWidth*9) / 16);
		item.css("height",imageHeight);
	}
	
//10.----------------------Thi?t l?p height cho images theo t? l? 2/3
	function setHeightImage2x3(item){
		item.css("height","auto");
		var imageWidth = item.width();
		var imageHeight = ((imageWidth*3) / 2);
		item.css("height",imageHeight);
	}
	
//11.----------------------Thi?t l?p height cho images theo t? l? 4/4
	function setHeightImage4x4(item){
		item.css("height","auto");
		var imageWidth = item.width();
		item.css("height",imageWidth);
	}
	
//12.----------------------Thi?t l?p height cho images theo t? l? 4/3
	function setHeightImage4x3(item){
		item.css("height","auto");
		var imageWidth = item.width();
		var imageHeight = ((imageWidth*3) / 4);
		item.css("height",imageHeight);
	}
		
//13.----------------------Thi?t l?p height cho images theo t? l? 4/4
	function paddingModule(){
		var sw = $(window).width();
		var marginLeft = (sw - $(".list-dramas .content").width()) / 2;
	}
	
//14.---------------------	Thi?t l?p fix menu khi scroll menu
	function fixToTop(class1,class2,topPosition) {
		$(window).scroll(function(e){

			$(class1).css("height","auto");
			$(class2).removeClass("scroll-content-fixed");
				
			var heightScreen = $(window).height();
			var heightEmbed  = $(class2).height();
			var heightBody   = $('body').height();
			
			if((heightScreen > (heightEmbed * 2)) && (heightBody > heightScreen)){
				if ($(window).scrollTop() > topPosition) { 	
						$(class1).css("height",heightEmbed);
						$(class2).addClass("scroll-content-fixed");
				} else {					
						$(class2).removeClass("scroll-content-fixed");
				}
			}
		  });
	}
	
//15.--------------------------Menu config--------------
	function menuConfig(){	
		//C?u hình menu, ??u tiên cho phép ch?y menu ? trên web
		if (screenWidth >= 980) {
			$("div[off-canvas$='reveal']").attr("off-canvas","slidebar-1 top reveal");
		} else {
			$("div[off-canvas$='reveal']").attr("off-canvas","slidebar-1 left reveal");
		}
		
		// Create a new instance of Slidebars
		var controller = new slidebars();
	
		// Events
		$( controller.events ).on( 'opening', function ( event, id ) {
			$(".close-menu").css("display","block");
			$("html").css("overflow", "hidden");
			$("body").css("overflow", "hidden");
			$(".container").css("min-height", $(window).height());
		} );
	
		$( controller.events ).on( 'closed', function ( event, id ) {
			$(".close-menu").css("display","none");
			$("html").css("overflow", "auto");
			$("body").css("overflow", "auto");			
			$(".container").css("min-height", "auto");
		} );
	
		// Initialize Slidebars
		controller.init();
	
		// Left Slidebar controls	
		$( '.js-toggle-left-slidebar' ).on( 'click', function ( event ) {
			event.stopPropagation();
			controller.toggle( 'slidebar-1' );
		} );
		
		// Close any
		$( controller.events ).on( 'opened', function () {
			$( '[canvas="container"]' ).addClass( 'js-close-any-slidebar' );
		} );
	
		$( controller.events ).on( 'closed', function () {
			$( '[canvas="container"]' ).removeClass( 'js-close-any-slidebar' );
			$(".left-menu .content").css("display","block");
		} );
	
		$( 'body' ).on( 'click', '.js-close-any-slidebar', function ( event ) {
			event.stopPropagation();
			controller.close();
		} );
		
		$( 'body' ).on( 'click', '.close-menu-small', function ( event ) {
			event.stopPropagation();
			controller.close();
		} );
		
		$(".close-menu").on("mousedown mouseup click touchend", function ( event ) {
			event.stopPropagation();
			controller.close();	
		});
	}
	
//16.--------------------------Thi?t l?p hieght cho tab	
	function setHeightTab(){
		var heightTab = $(window).height() - 180;
		$(".left-menu .tab").css("height",heightTab);
		$(".left-menu .tab-container").css("height",heightTab);
		//alert("Height: " + heightTab);
	}
	
//17.----------------------Popup 
	function openPopup(){
		
		//popup piracy
		$("#piracy").click(function (e) {
			$(".overlay-popup").fadeIn();
		});
		
		$("#piracy-ok").click(function (e) {
			$(".overlay-popup").css("display","none");
		});
		
		$("#piracy-cancel").click(function (e) {		
			$(".overlay-popup").css("display","none");
		});
		
		//popup share
		$("#share").click(function (e) {
			$(".overlay-popup-2").fadeIn();
		});
		
		$(".close-popup-share").click(function (e) {
			$(".overlay-popup-2").css("display","none");
		});
		
		//popup share
		$("#episode").click(function (e) {
			$(".overlay-popup-3").fadeIn();
		});
		
		//popup default
		$("#popup").click(function (e) {
			$(".overlay-popup-4").fadeIn();
		});
		
		$(".popup-close").click(function (e) {
			$(".overlay-popup-4").css("display","none");
		});
		
		$(document).bind( "mouseup touchend", function(e){
		  	var container = $(".overlay-popup .wrap");
			var containerShare = $(".overlay-popup-2 .wrap");
			var containerEpisode = $(".overlay-popup-3 .wrap");
			var containerDefault = $(".overlay-popup-4 .wrap");
				if (!container.is(e.target) // if the target of the click isn't the container...
					&& container.has(e.target).length === 0) { // ... nor a descendant of the container 
					$(".overlay-popup").fadeOut();
				}
				
				if (!containerShare.is(e.target) // if the target of the click isn't the container...
					&& containerShare.has(e.target).length === 0) { // ... nor a descendant of the container 
					$(".overlay-popup-2").fadeOut();
				}
				
				if (!containerEpisode.is(e.target) // if the target of the click isn't the container...
					&& containerEpisode.has(e.target).length === 0) { // ... nor a descendant of the container 
					$(".overlay-popup-3").fadeOut();
				}
				
				if (!containerDefault.is(e.target) // if the target of the click isn't the container...
					&& containerDefault.has(e.target).length === 0) { // ... nor a descendant of the container 
					$(".overlay-popup-4").fadeOut();
				}
		});
	}

//18.-----------------------Crop description
	function cropDescription(){
		$(".crop-fire").click(function(e) {
           $(".crop-description").toggleClass("crop-open"); 
        });	
	}
	
//19.-----------------------setWidthTitle
	function setWidthTitle(){
		var widthTitle = $(".container").width() - $(".owl-dots").width();
		$("#carousel-banner .title-banner").css("width",widthTitle);
		//alert("Hello!" + widthTitle);
	}	
	
//20.-----------------------setWithSinger	
	function setWithSinger(){
		var widthSinger = $(".mdl-list-videos .place-holder-video").width() - $(".mdl-list-videos .place-holder-video .viewer").outerWidth() - 40;
		$(".mdl-list-videos .place-holder-video .text-singer").css("max-width",widthSinger);
	}
	
//21.-----------------------Close open support
	function openSupport(){
		//$(".mdl-support .title").click(function(e) {
			//$(".mdl-support-content").css("display","none");
			//$(this).siblings(".mdl-support-content").toggle();
			//$(".fa-angle-down").removeClass("fa-angle-up");
			//$(this).siblings(".fa-angle-down").toggleClass(".fa-angle-up");
       // });	
	}

//22.-----------------------Accordion
	function myAccordion(){
		$( "#accordion" ).accordion({
		  collapsible: true,
		  heightStyle: "content",
		  animate: {
				duration: 200
			}
		});		
	}
	
//23.-----------------------scrollDisplay
	function scrollDisplay(){
		
	var lastScrollTop = 20;
	// element should be replaced with the actual target element on which you have applied scroll, use window in case of no target element.
	window.addEventListener("scroll", function(){ // or window.addEventListener("scroll"....
	   var st = window.pageYOffset || document.documentElement.scrollTop; // Credits: "https://github.com/qeremy/so/blob/master/so.dom.js#L426"
	   if (st > lastScrollTop){
		  // downscroll code
		  $(".scroll-display").fadeOut();
	   } else {
		  // upscroll code
		  $(".scroll-display").fadeIn();
	   }
	   lastScrollTop = st;
	}, false);
	
	}

//24.-----------------------changeColor	
	function changeColor() {
		$(window).scroll(function(){
			$('.navbar-fixed-top').removeClass("change-color");
			if($(window).scrollTop() > 0){
				$('.navbar-fixed-top').addClass("change-color");
			}else {
				$('.navbar-fixed-top').removeClass("change-color");	
			}
		  });
	}	

//25.-----------------------Crop body for scroll left menu
	function cropBody(){
		var screenW = $(window).width();
		var screenH = $(window).height();
		if(screenW >= 980){
			$(".js-toggle-left-slidebar").bind("click", function(){
				$("body").css("height",screenH);
				$("body").css("overflow","hidden");
			});
			
			$(".close-menu-small").bind("click", function(){
				$("body").css("height","auto");
			});
		}
	}
	
//26.-----------------------Set height player	
	function scrollAndCrop(){
		var heightContent = $(".mdl-player .player-left").height();	
		var widthContent = $(".mdl-player .player-right").width() + 17;//17px is think of scroll
		
		$(".mdl-player .player-right").css("height", heightContent);
		$(".mdl-player .overscroll").css("height", heightContent);
		$(".mdl-player .overscroll").css("width", widthContent);
	}
	
//27.-----------------------Show submenu-accuont	
	function dropDownContent(){
		var flag = false;
		var flagTwo = false;
		var triggerAccount = $(".link-account");
		var triggerMenu = $("#hamburger");		
		
		//Dropdown account
		triggerAccount.click(function(){
			if(flag === false){
				//Do something
				$(".link-account").addClass("select-sub-account");
				flag = true;
			}else {
				//Do something
				$(".link-account").removeClass("select-sub-account");
				flag = false;
			}
			$(".link-account .sub-account").toggle(200);
		});
		
		//Dropdown menu
		triggerMenu.click(function(){
			if(flagTwo === false){
				//Do something
				$(".mdl-header").removeClass("navbar-fixed-top");
				$("body").css("padding-top","0");
				flagTwo = true;
			}else {
				//Do something
				$(".mdl-header").addClass("navbar-fixed-top");
				$("body").css("padding-top","55px");
				flagTwo = false;
			}
			$(".mdl-header .menu-top").toggle();
		});	
	}	
	
//28.-----------------------Check class	
	function checkAndAdd(){
		if($(".mdl-header").hasClass("navbar-fixed-top")){
			$("body").css("padding-top","55px");
		}
	}		
	
	
//29.-----------------------Set position for button	
	function forNextAndPrev(){
		var nextButton = $(".mdl-list .owl-next");
		var prevButton = $(".mdl-list .owl-prev");
		var heightItem = $(".mdl-list .image").height();
		var topItem = heightItem + 67;
		 
		 nextButton.css("height",heightItem);
		 prevButton.css("height",heightItem);
		 
		 nextButton.css("line-height",heightItem+"px");
		 prevButton.css("line-height",heightItem+"px");
		 
		 nextButton.css("top","-"+ topItem +"px");
		 prevButton.css("top","-"+ topItem +"px");		 
		 		 
		 //alert("Height is " + heightItemA);
			
		 //owlMulti.on('changed.owl.carousel', function(event) {
			//	  var index = event.item.index;
				  //alert("Index is " + index);
			//	  if (index == 1) {
					//$(".owl-prev").css("display","none"); 
			//	  } else {
					//$(".owl-prev").css("display","block"); 	  
			//	  }
			//});	
	}	