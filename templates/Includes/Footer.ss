    <!-- Footer-->
    <footer class="bg-darker pt-5" id="footer" name="footer">
      <div class="container">
        <div class="row pb-2  font-size-ms">
          <div class="col-md-2 col-sm-6">
            <div class="widget widget-links widget-light pb-2 mb-4">
              <h3 class="widget-title  text-light">Adresse</h3>
              <ul class="widget-list">
                $SiteConfig.BusinessName<br/>
								<li class="widget-list-item">$SiteConfig.MainContact</li>
								<li class="widget-list-item">$SiteConfig.Street</li>
								<li class="widget-list-item">$SiteConfig.ZIP $SiteConfig.City</li>
              </ul>
            </div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="widget widget-links widget-light pb-2 mb-4">
					<h3 class="widget-title  text-light">Info</h3>
					$SiteConfig.FooterText
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="widget widget-links widget-light pb-2 mb-4">
					<h3 class="widget-title  text-light">Kontakt</h3>
					<ul class="widget-list">
						<li class="widget-list-item"><i class="fa fa-phone-square" aria-hidden="true"></i><span class="sr-only">Telefonnummer</span></span> <a href="tel:$SiteConfig.Phone" >$SiteConfig.Phone</a></li>
						<li class="widget-list-item"><i class="fa fa-fax" aria-hidden="true"></i><span class="sr-only">Faxnummer</span></span> $SiteConfig.Fax</li>								
						<li class="widget-list-item"><i class="fa fa-envelope" aria-hidden="true" title="E-Mail-Adresse"></i><span class="sr-only">E-Mail-Adresse</span> $SiteConfig.Email</li>
						<li class="widget-list-item"><i class="fa fa-globe" aria-hidden="true"><span class="sr-only">Webseitenadresse</span></i> $SiteConfig.Website</li>
					</ul>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="widget widget-links widget-light pb-2 mb-4">
					<h3 class="widget-title  text-light">Links</h3>
					<ul class="list-unstyled">
						<li class="widget-list-item text-white opacity-70">DE-&Ouml;KO-006</li>
						<li class="widget-list-item"><a class="widget-list-link" href="{$BaseHref}informationen/datenschutz" >Datenschutz</a></li>
						<li class="widget-list-item"><a class="widget-list-link" href="{$BaseHref}informationen/impressum">Impressum</a></li>
						<li class="widget-list-item"><a class="widget-list-link" href="{$BaseHref}informationen/agb">AGB</a></li>
						<li class="widget-list-item"><a class="widget-list-link" href="{$BaseHref}informationen/widerrufsrecht">Widerrufsrecht</a></li>
						<li class="widget-list-item"><a class="widget-list-link" href="{$BaseHref}kontakt">Kontakt</a></li>
					</ul>
				</div>
			</div>
        </div>
      </div>
      <div class="pt-3 pb-3 bg-white">
        <div class="container">
            <div class="row font-size-xs opacity-50 text-center text-md-left">
              <div class="col-md-6 text-center text-md-left">
                Copyright $Now.Year, $SiteConfig.BusinessName, $SiteConfig.MainContact
              </div>
              <div class="col-md-6 text-center text-md-right">
                Entwickelt von <a href="https://sola-soft.de" target="_blank" >Sola-Soft</a>, Fabian Schrattenholz
              </div>
            </div>
          </div>
        </div>
    </footer>


