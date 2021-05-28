
	<div class="container-fluid main" role="main">
		<div class="row fluid <% if $SidebarObjects %>justify-content-md-end<% else %>justify-content-md-center <% end_if %> py-4 contact">
			<article class="col-12col-12 col-md-6  pt-3 pl-lg-0 ratio_left">
                        <div class="contact-info">
                            <ul class="unstyled">
                                <li>
                                    <span class="pull-left img-circle"><i class="fa fa-map-marker"></i></span>
                                    <div class="info-text">
                                        <address>
										$SiteConfig.Street <br/>
										$SiteConfig.ZIP $SiteConfig.City
                                           
                                        </address>
                                    </div>
                                </li>
								<li>
                                    <span class="img-circle"><i class="fa fa-phone"></i></span> $SiteConfig.Phone
                                </li>
								<% if $SiteConfig.Fax %>
								<li>
                                    <span class="img-circle"><i class="fa fa-print"></i></span> $SiteConfig.Fax
                                </li>
								<% end_if %>
                                <li>
                                    <span class="img-circle"><i class="fa fa-envelope-o"></i></span> <a href="mailto:$SiteConfig.Email">$SiteConfig.Email</a>
                                </li>
                                <li>
                                    <span class="img-circle"><i class="fa fa-globe"></i></span>$SiteConfig.Website 
                                </li>
								<% if $SiteConfig.OpeningHours  %>
                                <li>
                                    <span class="pull-left img-circle"><i class="fa fa-clock-o"></i></span>
                                    <div class="info-text">
                                        <address>
										$SiteConfig.OpeningHours                                           
                                        </address>
                                    </div>
                                </li>
								<% end_if %>
								<li>
									<span class="img-circle"><i class="fa fa-road"></i></span> <a href="http://maps.google.com/maps?daddr=$SiteConfig.Street, $SiteConfig.City $SiteConfig.ZIP, $SiteConfig.Countr" target="_blank">Zum Routenplaner</a>
								</li>
							</ul>
					</div>
			</article>
			
			<aside class="col-12 col-md-6 pr-lg-0 pt-3 ratio_right ">
				$Content
								$Form
			</aside>
		
		</div>
		<div class="row fluid <% if $SidebarObjects %>justify-content-md-end<% else %>justify-content-md-center <% end_if %> py-4 contact">
                <!-- Google Map -->
                <div class="google-map">
                    
                    <div  id="map-canvas" data-address="$SiteConfig.Street, $SiteConfig.City $SiteConfig.ZIP, $SiteConfig.Country"></div>
                    
                </div>
                <!-- End Google Map -->
				</div>
	</div>