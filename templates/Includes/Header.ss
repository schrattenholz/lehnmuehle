<!-- Navbar 3 Level (Light)-->
    <header class="box-shadow-sm">
      <!-- Topbar-->
	<!-- Topbar End -->
      <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
      <div class="navbar-sticky bg-white">
        <div class="navbar navbar-expand-lg navbar-light">
          <div class="container"><a class="navbar-brand d-none d-sm-block mr-3 flex-shrink-0 flex-grow-1" href="{$BaseHref}home" style="min-width: 7rem;"><img width="142" src="$OrderConfig.Logo.URL" alt="$SiteConfig.BusinessName"/></a><a class="navbar-brand d-sm-none mr-2" href="{$BaseHref}home" style="min-width: 4.625rem;"><img style="max-width:140px;" src="$OrderConfig.Logo.URL" alt="$SiteConfig.BusinessName"/></a>
                  <div class="collapse navbar-collapse" id="navbarCollapse">
			<% include Navigation %>
								</div>																																	  
            <div class="navbar-toolbar d-flex flex-shrink-0 align-items-center align-self-end">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse">
			  <span class="navbar-toggler-icon"></span>
			  </button>
				<a class="navbar-tool navbar-stuck-toggler" href="#">
				<span class="navbar-tool-tooltip">Expand menu</span>
                <div class="navbar-tool-icon-box">
					<i class="navbar-tool-icon czi-menu"></i>
				</div>
				</a>
				<!--
				<a class="navbar-tool d-none d-lg-flex" href="account-wishlist.html">
					<span class="navbar-tool-tooltip">Wunschlist</span>
					<div class="navbar-tool-icon-box">
						<i class="navbar-tool-icon czi-heart"></i>
					</div>
				</a>
				-->
				<div class="navbar-tool dropdown ml-3 user-menue">
					<a class="navbar-tool ml-1 ml-lg-0 mr-n1 mr-lg-2 " href="#signin-modal" data-target="#signin-modal" data-toggle="modal">
						<div class="navbar-tool-icon-box">
							<i class="navbar-tool-icon czi-user"></i>
						</div>
						<div class="navbar-tool-text ml-n3">
							<small><% if $CurrentMember %>$CurrentMember.ShortSalutation<% else %> Jetzt anmelden<% end_if %></small>
							Mein Konto
						</div>
					</a>
					<% if $CurrentMember %>
					
						<ul class="dropdown-menu">
							<% loop $OrderConfig.AcountRoot.Children %>
								<li class="dropdown <% if $isCurrent || $isSection %>active<% end_if %>"><a class="dropdown-item" href="$Link" title="$Title.XML" >$MenuTitle.XML</a>
							</li>
							<% end_loop %>
							<li class="dropdown">
								<a class="btn btn-primary btn-sm" style="margin:.425rem 1.3rem;" href="{$BaseHref}home/logoutUser">Abmelden</a>
							</li>
						</ul>
					
					<% end_if %>
				</div>
              <div class="navbar-tool dropdown ml-3 basket-nav-list">
                      $BasketNavList
			  </div>
			  <% if $SiteConfig.Facebook %>
			  <a class="navbar-tool-icon-box bg-secondary dropdown-toggle ml-3 d-none d-md-block" href="$SiteConfig.Facebook" id="facebook_icon">
				<i class="navbar-tool-icon czi-facebook"></i>
			</a>
			<% end_if %>
						  <% if $SiteConfig.Instagram %>
			  <a class="navbar-tool-icon-box bg-secondary dropdown-toggle ml-3 d-none d-md-block" href="$SiteConfig.Instagram" id="instagram_icon">
				<i class="navbar-tool-icon czi-instagram"></i>
			</a>
			<% end_if %>
            </div>
          </div>
        </div>
        <div class="navbar navbar-expand-lg navbar-light navbar-stuck-menu mt-n2 pt-0 pb-2">
          <div class="container">
            <div class="collapse navbar-collapse" id="navbarCollapse">
              <!-- Search-->
              <div class="input-group-overlay d-lg-none my-3">
                <div class="input-group-prepend-overlay"><span class="input-group-text"><i class="czi-search"></i></span></div>
                <input class="form-control prepended-form-control" type="text" placeholder="Search for products">
              </div>
			<% include DepartmentNavigation %>
             </div>
          </div>
        </div>
      </div>
    </header>