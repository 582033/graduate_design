<div style="float:left;width:200px;margin:10px 20px;">
<ul class="nav nav-pills nav-stacked" style="width:150px;">
	<li {if !$category_id || $category_id == ''}class='active'{/if}><a href="/">ALL</a></li>
	{foreach $category as $cate}
	<li {if $category_id eq $cate.category_id}class='active'{/if}><a href="/cate/{$cate.category_id}">{$cate.category_name}</a></li>
	{/foreach}
</ul>
</div>
