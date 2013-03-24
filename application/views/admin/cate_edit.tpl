<div class='well' style='width:300px;margin:10px'>
	<form action='/admin/category/{$category_id}' method='post'>
	<label>
		<span>类别名称：</span><input name="category_name" type='text' value="{$category_name}" required/>
	</label>
	<label>
		<span>类别状态：</span>
		<select name="status">
			<option value='1' {if $status == '1'}checked="checked"{/if}>启用</option>
			<option value='0' {if $status == '0'}checked="checked"{/if}>禁用</option>
		</select>
	</label>
	<label>
		<center><input class='btn btn-primary' type='submit' value='确定'></center>
	</label>
</div>
