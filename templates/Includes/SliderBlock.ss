<!-- bannerSliderBlock -->
			<section class="bannerSliderBlock bannerSlider w-100 slickSlider text-center text-white">
				<!-- bannerSliderSlide -->
				<% loop $RevoLayers.Sort('SortID') %>
				<div class="bannerSliderSlide">
					<!-- bannerSlideHolder -->
					<div class="container bannerSlideHolder position-relative">
						<div class="align">
							<!-- bannerSlideHeader -->
							<header class="bannerSlideHeader">
								<h1 class="text-uppercase fwSemiBold fontBase">$Col01</h1>
								<p>$Col01_2</p>
							</header>
							<!-- btnHolder -->
							<footer class="btnHolder d-flex flex-wrap justify-content-center">
								<a href="javascript:void(0);" class="btn btnThemeOutine text-uppercase" data-hover="Learn More">
									<span class="d-block btnText">Learn More</span>
								</a>
								<a href="contact2.html" class="btn btnTheme text-uppercase" data-hover="Contact Us">
									<span class="d-block btnText">Contact Us</span>
								</a>
							</footer>
						</div>
					</div>
					<!-- bannerBlockSlideBg -->
					<span class="bgCover bannerBlockSlideBg d-block position-absolute" style="background-image: url($BackgroundImage.URL);">
						<img class="sr-only" src="$BackgroundImage.URLg" alt="image description">
					</span>
				</div>
				<% end_loop %>
			</section>