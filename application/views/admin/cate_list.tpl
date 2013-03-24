{capture name="wrapper"}
<div class='well' style='width:80%; margin:auto'>
	<table border="0" cellpadding="3" cellspacing="1" class='table table-bordered table-striped table-hover'>
		<tr>
			<td>类别ID</td>
			<td>类别名称</td>
			<td>操作</td>
		{foreach $category as $c}
		<tr>
			<td>{$c.category_id}</td>
			<td>{$c.category_name}</td>
			<td><input class='btn btn-primary' type='button' value='修改' onclick='open_url({$c.category_id})'></td>
		</tr>
		{/foreach}
	</table>
</div>
<script>
function open_url(id){
	$.colorbox({ 
		top:'50px',
		opacity: 0.5,
		scrolling: false,
		href:'/admin/category/'+id
	});
	//console.log("url:/admin/category/"+id);
}
</script>
{/capture}
{include file='admin/index.tpl' page_id='category'}
