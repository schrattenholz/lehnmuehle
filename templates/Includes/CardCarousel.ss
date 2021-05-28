<!-- Multiple items + Static controls outside + No dots + Loop (Responsive) -->
<div class="cz-carousel cz-controls-static cz-controls-outside">
<h2 class="h3 text-center">Aktuelle Angebote</h2>
  <div class="cz-carousel-inner  pt-4 mx-n2" data-carousel-options='{"items": 4, "nav": false, "responsive": {"0":{"items":1},"500":{"items":2, "gutter": 18},"768":{"items":3, "gutter": 20}, "1100":{"items":4,"gutter": 24}}}'>
<% loop $AllProducts %>
            <!-- Product-->
			
			
			
<!-- Item -->
    <div>
      <div class="card product-card card-static">
		<span class="badge badge-danger badge-shadow">Bis 20.06 - 10%</span>
        <button class="btn-wishlist btn-sm" type="button" data-toggle="tooltip" data-placement="left" title="Add to wishlist">
          <i class="czi-heart"></i>
        </button>
        <a class="card-img-top d-block overflow-hidden" href="$Link" alt="$MenuTitle.XML">
          <img src="$CoverImage.Fill(400,295).URL" alt="$MenuTitle.XML">
        </a>
        <div class="card-body py-2">
          <a class="product-meta d-block font-size-xs pb-1" href="$Link">$Parent.MenuTitle.XML</a>
          <h3 class="product-title font-size-sm"><a href="$Link">$MenuTitle.XML</a></h3>
          <div class="d-flex justify-content-between">
            <div class="product-price">
              <span class="text-accent">
			  <% if $GroupPreise %>
						ab <% if $GroupPreise.First.CaPrice %>ca. <% end_if %>$Top.formattedNumber($GroupPreise.First.Price) &euro;
						
					<% else %>
						<% if $CaPrice %>ca. <% end_if %>$formattedNumber($KiloPrice) &euro;
					<% end_if %></span>
            </div>
            <!--
			<div class="star-rating">
              <i class="sr-star czi-star-filled active"></i>
              <i class="sr-star czi-star-filled active"></i>
              <i class="sr-star czi-star-filled active"></i>
              <i class="sr-star czi-star-filled active"></i>
              <i class="sr-star czi-star"></i>
            </div>
			-->
          </div>
        </div>
      </div>
    </div>
	
	
	
           
<% end_loop %>
  </div>
</div>