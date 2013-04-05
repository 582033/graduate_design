<div class='well' style='width:600px;margin:10px'>
	<form action='/admin/topic/{if $topic.topic_id}{$topic.topic_id}/edit{else}add{/if}' method='post'>
	<label>
		<span>专辑名称：</span><input name="name" type='text' value="{$topic.name}" required/>
	</label>
	<label>
		<span>所属类别：</span>
		<select name="category_id">
			{foreach $category as $cate}
			<option value='{$cate.category_id}' {if $topic.category_id == $cate.category_id}selected{/if}>{$cate.category_name}</option>
			{/foreach}
		</select>
	</label>
	<label>
		<span>专辑状态：</span>
		<select name="status">
			<option value='1' {if $topic.status == '1'}selected{/if}>启用</option>
			<option value='0' {if $topic.status == '0'}selected{/if}>禁用</option>
		</select>
	</label>
	<label>
		<span>专辑内容：</span><textarea name='intro' style="width:500px; height:200px">{$topic.intro}</textarea>
	</label>
	<label>
		<center><input class='btn btn-primary' type='submit' value='确定'></center>
	</label>
</div>
