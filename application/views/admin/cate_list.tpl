{capture name="wrapper"}
<div class='well' style='width:80%; margin:auto'>
	<input class='btn btn-info' type='button' value='新增类别' onclick="open_url('{$c.category_id}', 'add')"><p></p>
	<table border="0" cellpadding="3" cellspacing="1" class='table table-bordered table-striped table-hover'>
		<tr>
			<td>类别ID</td>
			<td>类别名称</td>
			<td>状态</td>
			<td>操作</td>
		{foreach $category as $c}
		<tr>
			<td>{$c.category_id}</td>
			<td>{$c.category_name}</td>
			<td>{if $c.status == '0'}禁用{else}启用{/if}</td>
			<td><input class='btn btn-{if $c.status == '0'}danger{else}primary{/if}' type='button' value='修改' onclick="open_url('{$c.category_id}')"></td>
		</tr>
		{/foreach}
	</table>
</div>
<script>
function open_url(id, type){
	var url;
	url = "/admin/category/"+id;
	if (type == 'add') url = "/admin/category/add";
	$.colorbox({ 
		top:'50px',
		opacity: 0.5,
		scrolling: false,
		href: url
	});
	//console.log("url:/admin/category/"+id);
}
</script>
{/capture}
{include file='admin/index.tpl' page_id='category'}
