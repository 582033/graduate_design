<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/sta/css/style.css">
<link rel="stylesheet" href="/sta/css/bootstrap.min.css">
<link rel="stylesheet" href="/sta/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="/sta/css/colorbox.css" />
<script src="/sta/js/jquery.min.js"></script>
<script src="/sta/js/jquery.json.min.js"></script>
<!--<script src="/sta/js/jquery.masonry.min.js"></script>-->
<script src="/sta/js/jquery.colorbox.min.js"></script>
<script src="/sta/js/bootstrap.min.js"></script>
<style>
td{ font-size:12px;}
</style>
</head>
{include file='libs/head.tpl' page_id=$page_id}
{$smarty.capture.wrapper}
<script src="/sta/js/mootools.js"></script>
<script>
{literal}
window.addEvent('domready', function(){
	var Tips2 = new Tips($$('img'), {
		initialize:function(){
			this.fx = new Fx.Style(this.toolTip, 'opacity', {duration: 500, wait: false}).set(0);
		},
		onShow: function(toolTip) {
			this.fx.start(1);
		},
		onHide: function(toolTip) {
			this.fx.start(0);
		}
	});
}); 
jQuery(document).ready(function() {
	var $container = jQuery('.contents');
	$container.imagesLoaded( function(){
	  $container.masonry({
		itemSelector : '.box'
	  });
	})
    var sideNav = jQuery('.nav').parent(),
        sideNavPos = sideNav.offset(),
        sideNavHeight = sideNav.height(),
        winHeight = jQuery(window).height(),
		scrollTop;

    jQuery(window).scroll(function() {
		sideNavScroll();
    });
    function sideNavScroll() {
		scrollTop = jQuery(this).scrollTop();
		console.log(scrollTop);
		if (scrollTop > 140) {
			sideNav.css({
			'position': 'fixed',
			'margin': '10px 20px'
			});
		}
		else {
			sideNav.css({
			'position': 'absolute',
			'margin': '150px 20px'
 			});
		}
    }
});
{/literal}
</script>
<body>
</body>
</html>
