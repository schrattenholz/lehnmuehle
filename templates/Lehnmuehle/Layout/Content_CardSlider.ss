<section class="$ColorSet.Class py-6 py-lg-7">
	<div class="container">
		<div class="row">
			<div class="col">
				<% if ShowTitle %>
				<h2 class="" data-aos="fade-left">$Title</h2>
				<% if $SubTitle %>
				<p data-aos="fade-left" data-aos-delay="250">$SubTitle</p>
				<% end_if %>
				<% end_if %>
				<% if $Content %>
				<div data-aos="fade-up" <% if ShowTitle %><% if $SubTitle %>data-aos-delay="500"<% else %>data-aos-delay="250"<% end_if %><% else %><% end_if %>>
				$Content
				</div>
				<% end_if %>
			</div>
			</div>
	</div>
	<div class="container">
		<div class="row mx-n3 ">
			<div class="col-12">
				<div class="swiper">
					<div class="swiper-container" data-options='{"slidesPerView": 1, "loop": true, "breakpoints": {"992": {"slidesPerView": 3}}}'>
						<div class="swiper-wrapper">
							<% loop  $LimitedEntries($LimitOfEntries).Sort("Date","DESC") %>
							<div class="swiper-slide ">
								<div class="card shadow lift">
									<picture>
										<!--<source srcset="assets/images/photos/photo-67.webp" type="image/webp">-->
										<source srcset="$DefaultImage.Fill(400,300).URL" type="image/jpg"> 
										<img src="$DefaultImage.Fill(400,300).URL" alt="$DefaultImage.Title" class="card-img-top">
									</picture>
									<div class="card-body">
										<p class="font-size-6 text-uppercase mb-0"><small class="font-weight-bold">$Created.Nice</small></p>
										<h3 class="h4 card-title mb-0">
											<% if $DeepLink %><a href="$DeepLink.Link" class="text-body stretched-link"><% end_if %>
												<% if $TeaserTitle %>$TeaserTitle<% else %>$Title<% end_if %></h3>
												<span class="font-weight-lighter">$CuttedText</span>
												<% if $DeepLink %><svg width="22" height="22" class="fill-secondary ml-2 mt-n1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><title>navigation-next-alternate</title><path d="M23.7,10.209a1,1,0,0,0,0-1.414L20.2,5.3A1,1,0,0,0,18.5,6v1.75a.249.249,0,0,1-.25.25H12.5a4.005,4.005,0,0,0-4,4v2a1.5,1.5,0,0,0,3,0V12a1,1,0,0,1,1-1h5.75a.249.249,0,0,1,.25.25V13a1,1,0,0,0,1.708.707Z"></path><path d="M16,12.5a1,1,0,0,0-1,1V18a.5.5,0,0,1-.5.5H2.5A.5.5,0,0,1,2,18V6a.5.5,0,0,1,.5-.5H15a1,1,0,1,0,2,0,2,2,0,0,0-2-2H2a2,2,0,0,0-2,2v13a2,2,0,0,0,2,2H15a2,2,0,0,0,2-2v-5A1,1,0,0,0,16,12.5Z"></path></svg>
											</a><% end_if %>
										</h3>
										$Content
									</div>
								</div>
							</div>
							<% end_loop %>
						</div>
			
						<div class="d-flex justify-content-end mt-3">
							<div class="swiper-btn swiper-btn-prev" tabindex="0" role="button" aria-label="Previous slide"></div>
							<div class="swiper-btn swiper-btn-next ml-3" tabindex="0" role="button" aria-label="Next slide"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>