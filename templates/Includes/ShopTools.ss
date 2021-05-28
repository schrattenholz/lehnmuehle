			<div id="search-field-box" class="input-group-overlay d-none d-lg-flex mx-4 align-self-end " style="max-width:20rem;">
			
              <input id="search-field" class="form-control appended-form-control " type="text" placeholder="Suche und finde">
              <div class="input-group-append-overlay"><span class="input-group-text"><i class="czi-search"></i></span></div>
				<ul class="dropdown-menu w-100 fade d-block" id="search-field-list" style="visibility:hidden;" >
				</ul>
			
            </div>
            <div class="navbar-toolbar d-flex flex-shrink-0 align-items-center align-self-end">
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse">
			  <span class="navbar-toggler-icon"></span>
			  </button>
				<a class="navbar-tool navbar-stuck-toggler" href="#">
				<span class="navbar-tool-tooltip">Men&uuml; anzeigen</span>
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
							<small><% if $CurrentMember %>Hallo, $CurrentMember.FirstName<% else %> Jetzt anmelden<% end_if %></small>
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
            </div>