<% include PageTitle_Light %>
	<section class="container pb-4 mb-md-3 mt-2 mt-sm-5">
		<div class="row"> 
			<div class="col-md-4 mb-4 align-self-start">
				<div class="d-flex flex-column h-100 justify-content-center bg-size-cover bg-position-center rounded-lg">
					<div class="py-4 my-2 px-4">
				  <!-- Contacts card: Shadow -->
						<div class="card border-0 box-shadow">
							<div class="card-body">
								<ul class="list-unstyled">
									   <li class="media mb-0">
										  <h4>
										<i class="czi-location"></i></span>
										</h4>
										   <div class="media-body  pl-3">
											   <address>
											$SiteConfig.Street <br/>
											$SiteConfig.ZIP $SiteConfig.City
												  
											   </address>
										   </div>
									   </li>
									<li class="media mb-0 pt-2">
									 <h4>
										   <i class="czi-phone"></i>
										</h4>
										<div class="media-body  pl-3">
										$SiteConfig.Phone
										</div>
									   </li>
									<% if $SiteConfig.Fax %>
									<li  class="media mb-0 pt-2">
									 <h4>
									   <i class="czi-document"></i>
									</h4>
									<div class="media-body pl-3">
									$SiteConfig.Fax
									</div>
									   </li>
									<% end_if %>
									   <li class="media mb-0 pt-2">
									 <h4>
										   <i class="czi-mail"></i>
										</h4>
										<div class="media-body pl-3">
										<a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a>
										</div>
									   </li>
									   <li class="media mb-0 pt-2">
									 <h4>
										   <i class="czi-globe"></i>
										</h4>
										<div class="media-body  pl-3">
										$SiteConfig.Website 
										</div>
									   </li>
									<li class="media mb-0 pt-2">
									 <h4>
										<i class="czi-delivery"></i>
										</h4>
										<div class="media-body pl-3">
										<a href="http://maps.google.com/maps?daddr=$SiteConfig.Street, $SiteConfig.City $SiteConfig.ZIP, $SiteConfig.Countr" target="_blank">Zum Routenplaner</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
						<aside class="col-md-8 mb-4">
				$Content
				<div class="mt-5">
				$Form
				</div>
			</aside>
		</div>
	</section>
	<div class="container-fluid px-0" id="map">
		<div class="row">
			<!-- Google Map -->
			<div class="col-12 google-map">				
				<div  id="map-canvas" data-address="$SiteConfig.Street, $SiteConfig.City $SiteConfig.ZIP, $SiteConfig.Country">
				</div>
			</div>
			<!-- End Google Map -->
		</div>
	</div>