<div  class="$ColorSet.Class">
	<!-- Featured category -->
	<section class="container-fluid pr-md-0">
		<div class="row mr-0">
        <!-- Product grid (carousel)-->
		<div class="offset-md-2 d-none d-md-flex"></div>
		<div class="col-md-4 pt-4 pt-md-0 d-flex">
			<div style="align-self:center;">
				<h2 class="bg-headline-before bg-headline"><span>$Title</span></h2>
				<h3 class="text-light"><span>$SubHead</span></h3>
				$Content
			</div>
        </div>
		<div class="col-md-6 pt-4 pt-md-0 pr-md-0">
					<div class="row mr-0">
					<% if $LimitedEntries.Count>=4 %>
						<% loop $LimitedEntries.Limit(4) %> 
						  <div class="col-lg-6 col-6 px-0 px-sm-2 pr-md-0">
							<div class="card product-card card-static ">
								<img src="$DefaultImage.Fill(278,278).URL" alt="Product">
							</div>
						  </div>
						<% end_loop %>
					<% else %>
						<div class="col px-0 px-sm-2 pr-md-0">
							<div class="card product-card card-static  bg-transparent">
								<img src="$LimitedEntries.First.DefaultImage.ScaleWidth(1000).URL" alt="Product">
							</div>
						</div>
					<% end_if %>
					</div>
				</div>
		</div>
	</section>
</div>