
<% if $CrumbsList(false) %>
<nav aria-label="Breadcrumb" class="breadcrumbs d-none d-lg-flex">
<div class="d-flex justify-content-center justify-content-lg-start"><i class="czi-view-grid align-self-center text-primary"></i></div>
	<ol <% if $ClassName=="Schrattenholz\Order\Product" %> style="background:transparent;padding:0;" <%end_if %>  itemscope itemtype="http://schema.org/BreadcrumbList" class="breadcrumb breadcrumb$Design flex-lg-nowrap justify-content-center justify-content-lg-start">
		<% loop $CrumbsList(false) %>
			<li class="nav-item <% if $getPage.Children && $getPage.ClassName="Schrattenholz\Order\ProductList"  %>dropdown<% end_if %> text-nowrap" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">

				<% if not $Last && not $First %>
					<a class="breadcrumb-link breadcrumb-$Pos text-white nav-link <% if $getPage.Children && $getPage.ClassName="Schrattenholz\Order\ProductList" %>dropdown-toggle<% end_if %>" <% if $getPage.Children && $getPage.ClassName="Schrattenholz\Order\ProductList"  %>data-toggle="dropdown" <% end_if %>itemtype="http://schema.org/Thing" itemprop="item" href="$Link"<% if $Last %> aria-current="page"<% end_if %>>
						<span itemprop="name">$Title</span>
					</a>
					<% if $getPage.Children && $getPage.ClassName="Schrattenholz\Order\ProductList"  %>
					<ul class="dropdown-menu">
					<% loop $getPage.Children %>
					<li><a class="dropdown-item" href="$Link"><% if $SummaryTitle %>$SummaryTitle<% else %>$Title<% end_if %></a></li>
					<% end_loop %>
					</ul>
					<% end_if %>
					<meta itemprop="position" content="$Pos" />
				<% end_if %>
	   		</li>
	    <% end_loop %>
	</ol>
</nav>
<% end_if %>


