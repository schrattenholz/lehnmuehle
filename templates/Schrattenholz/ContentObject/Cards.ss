<div  class="$ColorSet.Class py-5">
	<!-- Featured category -->
	<section class="container">
		<div class="row">
			<!-- Product grid (carousel)-->
			<div class="offset-md-2 col-md-8 pt-4 pt-md-0 d-flex">
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
					 <div class="col-lg-3 col-3 px-0 px-sm-2 pr-md-0">
						<!-- Card contentbased -->
						<div class="card border-primary text-left overflow-hidden <% if not $DefaultImage %><% if not $Last %>mr-5<% end_if %> flex-fill <% end_if %><% if $ColorSetID %>colorSet{$ColorSetID} <% end_if %>" >
						<% if $DeepLink || $Link %><a href="<% if $DeepLink %>$DeepLink.Link<% else_if $Link %>$Link<% end_if %>"><% end_if %>
						  <div class="card-body <% if $DefaultImage %>p-0<% end_if %>">
						   $DefaultImage.Fill(800,500)
						  <% if $DefaultImage %>
						  <div class="text-left bg-darker p-3" style="bottom:1rem;">
						  <% end_if %>

							<h5 class="font-weight-light card-title px-3 mb-0 text-light">$Title</h5>
							<p class="card-text font-size-sm px-3 mb-5">$Top.ReadMore</p>
						  <% if $DefaultImage %>
						 </div>
						  <% end_if %>
						  </div><% if $DeepLink || $Link %></a><% end_if %>
						</div>
						</div>
					<% end_loop %>
				</div>
			</div>
		</div>
	</section>
</div>