{capture name="wrapper"}
<div class="contents">
	<ul class="thumbnails">
		{foreach $topic as $t}
		{if $t.img_url}
		<li class="span3">
			<a href="/topic/{$t.topic_id}" class="thumbnail">
				<img src="{$t.img_url}" alt="{$t.name}" title="{$t.name}">
			</a>
		</li>
		{/if}
		{/foreach}
	</ul>
</div>
{/capture}
{include file='index.tpl'}
