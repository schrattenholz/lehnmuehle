<!-- Toolbar for handheld devices-->
	<div class="cz-handheld-toolbar">
		<div class="d-table table-fixed w-100 bg-primary">
		<% if $ClassName=="Schrattenholz\Order\ProductList" || $ClassName=="Schrattenholz\Order\Product"  || $ClassName=="Schrattenholz\Order\CollectedProduct" %>
			<% if $ClassName=="Schrattenholz\Order\Product"  || $ClassName=="Schrattenholz\Order\CollectedProduct" %>
				<a class="d-table-cell cz-handheld-toolbar-item" href="<% if $Parent.ClassName="Schrattenholz\Order\CollectedProduct" %>$Parent.Parent.Link <% else %>$Parent.Link<% end_if %>" data-target="#shop-toList">
					<span class="cz-handheld-toolbar-icon text-alert">
						<i class="czi-filter-alt"></i>
					</span>
					<span class="cz-handheld-toolbar-label text-alert">Produktmen&uuml;</span>
				</a>
			<% else %>
				<a class="d-table-cell cz-handheld-toolbar-item" href="#shop-sidebar" data-target="#shop-sidebar" data-toggle="sidebar">
					<span class="cz-handheld-toolbar-icon text-alert">
						<i class="czi-filter-alt"></i>
					</span>
					<span class="cz-handheld-toolbar-label text-alert">Produktmen&uuml;</span>
				</a>
			<% end_if %>
		<% end_if %>
			<a class="d-table-cell cz-handheld-toolbar-item" href="#navbarCollapse" data-target="#navbarCollapse" data-toggle="collapse" onclick="window.scrollTo(0, 0)">
				<span class="cz-handheld-toolbar-icon">
					<i class="czi-menu"></i>
				</span>
				<span class="cz-handheld-toolbar-label">Navigation</span>
			</a>
			<a class="d-table-cell cz-handheld-toolbar-item" href="$OrderConfig.Basket.Link">
				<span class="cz-handheld-toolbar-icon">
				<i class="czi-cart"></i>
				<span class="badge badge-primary badge-pill ml-1">$ListCount</span>
				</span>
				<span class="cz-handheld-toolbar-label">
					$Top.formattedNumber($Basket.TotalPrice.Price) &euro;
				</span>
			 </a>
      </div>
    </div>