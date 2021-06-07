<style>
	.headerImage {
		min-height:200px;
		width: 100%;
		background-size: cover;
		background-position-y: center;
		background-position-x: center;
		background-repeat: no-repeat;
	}
@media (max-width: 575px) {
		.headerImage {
			min-height:200px;
			background-image:url('$MainImage.ScaleWidth(576).URL');
		}	
	}
@media (min-width: 576px) {
		.headerImage {
			min-height:200px;
			background-image:url('$MainImage.ScaleWidth(768).URL');
		}	
	}
	@media (min-width: 768px) {
		.headerImage {
			min-height:200px;
			background-image:url('$MainImage.ScaleWidth(992).URL');
		}	
	}
	@media (min-width: 992px) {
		.headerImage {
			min-height:300px;
			background-image:url('$MainImage.ScaleWidth(1200).URL');
		}	
	}
	@media (min-width: 1200px) { 
		.headerImage {
			min-height:400px;
			background-image:url('$MainImage.ScaleWidth(2000).URL');
		}
	}
</style>    
	<!-- Page Title (Dark)-->
    <div class="bg-dark py-4  <% if $MainImage %> headerImage d-flex align-items-end <% end_if %>"  >
      <div class="container d-lg-flex justify-content-between py-2 py-lg-3" >
        <div class="order-lg-2 mb-3 mb-lg-0 pt-lg-2">
          <% include BreadCrumbs Design="" %>
        </div>
        <div class="order-lg-1 pr-lg-4 text-center text-lg-left">
          <h1 class="h3 text-light mb-0">$MenuTitle.XML</h1>
        </div>
      </div>
    </div>