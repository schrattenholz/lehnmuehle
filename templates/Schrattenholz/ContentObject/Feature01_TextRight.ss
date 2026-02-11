<div  class="$ColorSet.Class py-5">
	<!-- Featured category -->
	<section class="container ">
		<div class="row">
        <!-- Product grid (carousel)-->
		 <div class="col-md-6 pt-4 pt-md-0">
			<div class="row mx-n2">
			<% if $LimitedEntries.Count>=4 %>
				<% loop $LimitedEntries.Limit(4) %> 
				  <div class="col-lg-6 col-6 px-0 px-sm-2 mb-sm-3">
					<div class="card product-card card-static ">
						<img src="$DefaultImage.Fill(278,278).URL" alt="Product">
					</div>
				  </div>
				<% end_loop %>
			<% else %>
				<div class="col px-0 px-sm-2 mb-sm-3">
					<div class="card product-card card-static bg-transparent">
						<img src="$LimitedEntries.First.DefaultImage.Fill(278,278).URL" alt="Product">
					</div>
				</div>
			<% end_if %>
			</div>
		</div>
		<div class="col-md-6 pt-4 pt-md-0 d-flex">
			<div style="align-self:center;">
				<h2 class="bg-headline"><span>$Title</span></h2>
				$Content
			</div>
        </div>
		</div>
	</section>
</div>