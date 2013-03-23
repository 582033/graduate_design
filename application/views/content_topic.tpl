{capture name="wrapper"}
<div style="float:left;width:1000px;margin:10px 20px;">
	<h1>{$topic.name}</h1>
	<p>{$topic.created_at|date_format:"%Y/%m/%d"}</p>
	<p>{$topic.intro}</p>
 	<p>
		{foreach $topic.pictures as $pic}
		<img src="{$pic.img_url}">
		<p></p>
		{/foreach}
	</p>
</div>
{/capture}
{include file='index.tpl'}
