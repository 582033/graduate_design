{capture name="wrapper"}
<div class='well' style='width:80%; margin:auto'>
	<table border="0" cellpadding="3" cellspacing="1" class='table table-bordered table-striped table-hover'>
		<tr>
			<td>ID</td>
			<td>封面图</td>
			<td>状态</td>
			<td>设为封面</td>
			<td>操作</td>
		</tr>
		{foreach $pictures as $picture}
		<tr>
			<td>{$picture.id}</td>
			<td width='100px' height='100px'><img src='/thumb?url={$picture.img_url}&size=100x100' width='100px' height='100px'></td>
			<td>{if $picture.status == '1'}启用{else}禁用{/if}</td>
			<td>
				{if $picture.id == $cover_id}
				<input class='btn btn-danger' type='button' value='专辑封面'>
				{else}
				<input class='btn btn-primary' type='button' value='设为封面' onclick='setcover({$topic_id}, {$picture.id})'>
				{/if}
			</td>
			<td><input class='btn btn-primary' type='button' value='编辑' onclick=''></td>
		</tr>
		{/foreach}
	</table>
</div>
<script>
	function setcover(TopicId, PicId){
		location.href='/admin/setcover/'+TopicId+'/'+PicId;
	}
</script>
{/capture}
{include file='admin/index.tpl' page_id='picture'}
