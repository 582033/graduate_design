{capture name="wrapper"}
<div class='well' style='width:80%; margin:auto'>
	<table border="0" cellpadding="3" cellspacing="1" class='table table-bordered table-striped table-hover'>
		<tr>
			<td>ID</td>
			<td>专辑名</td>
			<td>封面图</td>
			<td>创建时间</td>
			<td>状态</td>
			<td>图片</td>
			<td>操作</td>
		</tr>
		{foreach $topics as $topic}
		<tr>
			<td>{$topic.topic_id}</td>
			<td>{$topic.name}</td>
			<td><img src='/thumb?url={$topic.img_url}&size=100x100' width='100px' height='100px'></td>
			<td>{$topic.created_at}</td>
			<td>{if $topic.status == '1'}启用{else}禁用{/if}</td>
			<td><input class='btn btn-{if $topic.status == '0'}danger{else}primary{/if}' type='button' value='管理' onclick='pic_management({$topic.topic_id})'></td>
			<td><input class='btn btn-{if $topic.status == '0'}danger{else}primary{/if}' type='button' value='修改' onclick='topic_edit({$topic.topic_id});'></td>
		</tr>
		{/foreach}
	</table>
</div>
<script>
	function pic_management(id){
		location.href='/admin/topic/'+id;
	}
	function topic_edit(id){
		$.colorbox({ 
			top:'50px',
			opacity: 0.5,
			scrolling: false,
			href:'/admin/topic/'+id+'/edit'
		});
	}
</script>
{/capture}
{include file='admin/index.tpl' page_id='topic'}
