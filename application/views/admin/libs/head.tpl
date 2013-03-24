<div style='float:right;padding-right:20px;margin:2px;'>
	用户名:<font color='red'><b>{$username}</b></font>&nbsp;
	<input class="btn btn-mini btn-info" type="button" onclick="window.location='/admin/logout'" value="退出登录">
</div>
<ul class="nav nav-tabs">
	<li {if $page_id eq 'category'}class='active'{/if}><a href="/admin/category">类别管理</a></li>
	<li {if $page_id eq 'topic'}class='active'{/if}><a href="/admin/topic">专辑管理</a></li>
</ul>
