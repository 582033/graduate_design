<div style="float:left;width:200px;margin:10px 20px;">
<ul class="nav nav-tabs nav-stacked" style="width:150px;">
	<li {if $page_id eq 'partner'}class='active'{/if}><a href="/">ALL</a></li>
	{foreach $category as $cate}
	<li {if $page_id eq 'partner'}class='active'{/if}><a href="/cate/{$cate.category_id}">{$cate.category_name}</a></li>
	{/foreach}
</ul>
</div>
