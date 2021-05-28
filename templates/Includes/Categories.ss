<!-- Popular categories-->
    <section class="container position-relative pt-3 pt-lg-0 pb-5 mt-lg-n10" style="z-index: 10;">
      <div class="row">
        <div class="col-xl-8 col-lg-9">
          <div class="card border-0 box-shadow-lg">
            <div class="card-body px-3 pt-grid-gutter pb-0">
              <div class="row no-gutters pl-1">
				<% loop $OrderConfig.ProductRoot.Children.Limit(3) %>
					<div class="col-sm-4 px-2 mb-grid-gutter">
						<a class="d-block text-center text-decoration-none mr-1" href="$Link">
							<img class="d-block rounded mb-3" src="$CoverImage.Fill(500,500).URL" alt="$MenuTitle.XML">
							<h3 class="font-size-base pt-1 mb-0">$MenuTitle.XML</h3>
						</a>
					</div>
				<% end_loop %>
              </div>
            </div>
          </div>
        </div>
		
      </div>
    </section>