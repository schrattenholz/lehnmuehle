<div  class=" bg-white py-5">
	<!-- Featured category -->
	<section class="container">
		<div class="row">
			<!-- Product grid (carousel)-->
			<div class="col pt-4 pt-md-0 d-flex">
				<div style="align-self:center;">
				<h2 class="mb-4"><span>$Title</span></h2>
					$Content
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col pt-4 pt-md-0">
				<div class="row no-gutters justify-content-between">
					<% loop $LimitedEntries.Limit($Limit) %>
						<!-- Card contentbased -->
						<div class="card text-left overflow-hidden <% if not $CoverImage %><% if not $Last %>mr-5<% end_if %> flex-fill <% end_if %><% if $ColorSetID %>colorSet{$ColorSetID} <% end_if %>" >
						<% if $DeepLink %><a href="$DeepLink.Link"><% end_if %>
						  <div class="card-body <% if $CoverImage %>p-0<% end_if %>">
						   $CoverImage.Fill(300,300)
						  <% if $CoverImage %>
						  <div class="position-absolute text-left" style="bottom:1rem;">
						  <% end_if %>

							<h5 class="card-title px-3 mb-0">$Title</h5>
							<p class="card-text font-size-sm px-3">$ReadMore</p>
						  <% if $CoverImage %>
						 </div>
						  <% end_if %>
						  </div><% if $DeepLink %></a><% end_if %>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div>
	</section>
</div>