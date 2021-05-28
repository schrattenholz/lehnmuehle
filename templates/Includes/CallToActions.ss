
<style>
#calltoactions{
	position:fixed;
	top:50%;
	right:0;
	z-index:1000;
}
.calltoaction{
	padding-right:1rem;
	margin-bottom:1rem;
	background-color:transparent;
	display:none;
	border-top:0 solid #93ad94;
	border-bottom:0 solid #93ad94;
	border-left:0 solid #93ad94;
}
.calltoaction p{
	margin:0;
}
</style>
<div id="calltoactions" class="d-none d-sm-block">
<% if $HasCallToActions %>
	<% loop $CallToActions.Sort('SortID') %>
		$renderIt
	<% end_loop %>
<% end_if %>
</div>
