<div class='well' style='width:300px;height:400px;margin:10px'>
	<form action='/admin/picture/{if $picture_id}{$picture_id}{else}add{/if}' method='post'  enctype="multipart/form-data">
	<input name='topic_id' type='hidden' value='{$topic_id}'>
	<label>
		<span>图片类型：</span>
		<select name='img_type'>
			<option value='link'>自定义URL</option>
			<option value='upload'>手动上传</option>
		</select>
	</label>
	<label id='upload' style='display:none;'>
		<span>上传图片：</span>
		{if !$picture_id}
		<font size='1' color='#ccc'>可同时选中多张上传</font>
		{/if}
		<input type="file" name="upload_pic[]" {if !$picture_id}multiple="multiple"{/if} accept="image/gif, image/jpeg, image/x-png, image/x-ms-bmp">
	</label>
	<label id='link'>
		<span>图片URL：</span>
		<input type='text' name="img_url" value='{$pic.img_url}'>
	</label>
	{if $picture_id}
	<label>
		<span>图片预览：</span><img src='{$pic.img_url}' height='200px'/>
	</label>
	{/if}
	<label>
		<span>图片状态：</span>
		<select name="status">
			<option value='1' {if $pic.status == '1'}selected{/if}>启用</option>
			<option value='0' {if $pic.status == '0'}selected{/if}>禁用</option>
		</select>
	</label>
	<label>
		<center><input class='btn btn-primary' type='submit' value='确定'></center>
	</label>
</div>
<script>
	$(document).ready(function(){
		var img_type = $("[name='img_type']");
		img_type.change(function(){
			//console.log(img_type.val());
			$('#upload').toggle();
			$('#link').toggle();
		});
	});
</script>
