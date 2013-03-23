<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/sta/css/style.css">
<link rel="stylesheet" href="/sta/css/bootstrap.min.css">
<link rel="stylesheet" href="/sta/css/bootstrap-responsive.min.css">
<link rel="stylesheet" href="/sta/colorbox/colorbox.css" />
<script src="/sta/js/jquery.min.js"></script>
<script src="/sta/js/jquery.json.min.js"></script>
<script src="/sta/js/jquery.colorbox.min.js"></script>
<script src="/sta/js/bootstrap.min.js"></script>
<script src="/sta/js/mootools.js"></script>
<style>
td{ font-size:12px;}
</style>
</head>
{include file='libs/head.tpl' page_id=$page_id}
{$smarty.capture.wrapper}
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
{/literal}
</script>
<body>
</body>
</html>
