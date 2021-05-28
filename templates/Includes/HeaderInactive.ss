<!-- Navbar 3 Level (Light)-->
    <header class="box-shadow-sm">
      <!-- Topbar-->
      <div class="topbar topbar-dark bg-dark">
        <div class="container">
          <div class="topbar-text dropdown d-md-none"><a class="topbar-link dropdown-toggle" href="#" data-toggle="dropdown">Kontakt</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="tel:$Phone"><i class="czi-support text-muted mr-2"></i>$SiteConfig.Phone</a></li>  
			  <li><a class="dropdown-item" href="mailto:$SiteConfig.Email"><i class="czi-mail text-muted mr-2"></i>$SiteConfig.Email</a></li>
			  <li><a class="dropdown-item" href="{$BaseHref}eplr-eulle/"><i class="czi-star text-muted mr-2"></i>EPLR EULLE</a></li>
              <!--<li><a class="dropdown-item" href="order-tracking.html"><i class="czi-location text-muted mr-2"></i>Order tracking</a></li>-->
            </ul>
          </div>
          		  <div class="topbar-text text-nowrap d-none d-md-inline-block ml-3"><i class="czi-star"></i><span class="text-muted mr-1">Förderung</span><a class="topbar-link" href="{$BaseHref}eplr-eulle/">EPLR EULLE</a></div>
          <div class="topbar-text text-nowrap d-none d-md-inline-block"><i class="czi-support"></i><span class="text-muted mr-1">Telefon</span><a class="topbar-link" href="tel:$SiteConfig.Phone">$SiteConfig.Phone</a></div>		  
		  <div class="topbar-text text-nowrap d-none d-md-inline-block ml-3"><i class="czi-mail"></i><span class="text-muted mr-1">E-Mail</span><a class="topbar-link" href="mailto:$SiteConfig.Email">$SiteConfig.Email</a></div>
          <!--
		  <div class="cz-carousel cz-controls-static d-none d-md-block">
            <div class="cz-carousel-inner" data-carousel-options="{&quot;mode&quot;: &quot;gallery&quot;, &quot;nav&quot;: false}">
              <div class="topbar-text">Free shipping for order over $200</div>
              <div class="topbar-text">We return money within 30 days</div>
              <div class="topbar-text">Friendly 24/7 customer support</div>
            </div>
          </div>
		  -->
         <!--
		 <div class="ml-3 text-nowrap"><a class="topbar-link mr-4 d-none d-md-inline-block" href="order-tracking.html"><i class="czi-location"></i>Order tracking</a>
            <div class="topbar-text dropdown disable-autohide"><a class="topbar-link dropdown-toggle" href="#" data-toggle="dropdown"><img class="mr-2" width="20" src="{$ThemeDir}/img/flags/en.png" alt="English"/>Eng / $</a>
              <ul class="dropdown-menu dropdown-menu-right">
                <li class="dropdown-item">
                  <select class="custom-select custom-select-sm">
                    <option value="usd">$ USD</option>
                    <option value="eur">€ EUR</option>
                    <option value="ukp">£ UKP</option>
                    <option value="jpy">¥ JPY</option>
                  </select>
                </li>
                <li><a class="dropdown-item pb-1" href="#"><img class="mr-2" width="20" src="{$ThemeDir}/img/flags/fr.png" alt="Français"/>Français</a></li>
                <li><a class="dropdown-item pb-1" href="#"><img class="mr-2" width="20" src="{$ThemeDir}/img/flags/de.png" alt="Deutsch"/>Deutsch</a></li>
                <li><a class="dropdown-item" href="#"><img class="mr-2" width="20" src="{$ThemeDir}/img/flags/it.png" alt="Italiano"/>Italiano</a></li>
              </ul>
            </div>
          </div>
		  -->
        </div>
      </div>
      <!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
      <div class="navbar-sticky bg-light">
        <div class="navbar navbar-expand-lg navbar-light">
          <div class="container"><a class="navbar-brand d-none d-sm-block mr-3 flex-shrink-0 flex-grow-1" href="{$BaseHref}home" style="min-width: 7rem;"><img width="142" src="$OrderConfig.Logo.URL" alt="$SiteConfig.BusinessName"/></a><a class="navbar-brand d-sm-none mr-2" href="{$BaseHref}home" style="min-width: 4.625rem;"><img style="max-width:140px;" src="$OrderConfig.Logo.URL" alt="$SiteConfig.BusinessName"/></a>


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
              <% include Navigation %>
            </div>
          </div>
        </div>
      </div>
    </header>