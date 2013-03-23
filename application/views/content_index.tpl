{capture name="wrapper"}
<div style="float:left;width:1000px;margin:10px 20px;">
	<ul class="thumbnails">
		{foreach $topic as $t}
		<li class="span3">
			<a href="/topic/{$t.topic_id}" class="thumbnail">
				<img src="{$t.img_url}" alt="{$t.name}" title="{$t.name}">
			</a>
		</li>
		{/foreach}
	</ul>
</div>
{/capture}
{include file='index.tpl'}
