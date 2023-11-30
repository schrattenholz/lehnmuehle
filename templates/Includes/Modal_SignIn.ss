 <!-- Sign in / sign up modal-->
    <div class="modal fade" id="signin-modal" tabindex="-1" role="dialog">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
		 <% if $CurrentMember %>
<div class="modal-header">
        <h5 class="modal-title">Abmelden</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p class="font-size-sm">Du bist als $CurrentMember.FirstName $CurrentMember.Surname angemeldet.</p>
      </div>
      <div class="modal-footer">
         <a href="{$Link}logoutUser" class="btn btn-light btn-sm">Jetzt Abmelden</a>
      </div>
    </div>
		  <% else %>
          <div class="modal-header">
		 
            <ul class="nav nav-tabs card-header-tabs" role="tablist">
              <li class="nav-item"><a class="nav-link active" href="#signin-tab" data-target="#signin-tab" data-toggle="tab" role="tab" aria-selected="true"><i class="czi-unlocked mr-2 mt-n1"></i>Anmelden</a></li>
              <li class="nav-item"><a class="nav-link" href="#signup-tab" data-target="#signup-tab" data-toggle="tab" role="tab" aria-selected="false"><i class="czi-user mr-2 mt-n1"></i>Registrieren</a></li>
            </ul>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body tab-content py-4">
            <form class="needs-validation tab-pane fade show active" autocomplete="off" novalidate id="signin-tab">
              <div class="form-group">
                <label for="si-email">E-Mail-Adresse</label>
                <input class="form-control" type="email" name="UserAccountEmail" id="UserAccountEmail" placeholder="hallo@sola-soft.de" required>
                <div class="invalid-feedback">Bitte geben Sie Ihre E-Mail-Adresse ein.</div>
              </div>
              <div class="form-group">
                <label for="si-password">Passwort*</label>
                <div class="password-toggle">
                  <input class="form-control" type="password" name="UserAccountPassword" id="UserAccountPassword" required>
                  <label class="password-toggle-btn">
                    <input class="custom-control-input" type="checkbox"><i class="czi-eye password-toggle-indicator"></i><span class="sr-only">Passwort anzeigen</span>
                  </label>
                </div>
              </div>
              <div class="form-group d-flex flex-wrap justify-content-between">
               <!-- <div class="custom-control custom-checkbox mb-2">
                  <input class="custom-control-input" type="checkbox" id="si-remember">
                  <label class="custom-control-label" for="si-remember">Mich erinnern</label>
                </div>
				-->
				<a class="font-size-sm" href="{$BaseHref}Security/lostpassword">Passwort vergessen?</a>
              </div>
              <button class="btn btn-primary btn-block btn-shadow" type="submit">Anmelden</button>
            </form>
            <form class="needs-validation tab-pane fade" autocomplete="off" novalidate id="signup-tab">
				<div class="form-group mt-3">		
						<!-- Inline radio buttons -->
						<% loop $CustomerGroups.Filter("SelectableForFrontendUser",1) %>
						<div class="custom-control custom-radio custom-control-inline">
						  <input class="custom-control-input" type="radio" id="CreateUserAccountCustomerGroup_$ID" name="CreateUserAccountCustomerGroup" value="$ID" <% if IsDefault%>checked="checked"<% end_if %>>
						  <label class="custom-control-label" for="CreateUserAccountCustomerGroup_$ID">$Title </label>
						</div>
						<% end_loop %>
				</div>
              <div class="form-group mt-3">
                <label for="su-name">Firmenname (ggf.)</label>
                <input class="form-control" type="text" id="Company" name="Company" placeholder="">
                <div class="invalid-feedback">Bitte gib deinen Firmennamen ein</div>
              </div>
				<div class="form-group mt-3">
				<p class="mb-1  font-size-sm">Anrede*</p>
				<div class="custom-control custom-radio custom-control-inline">
				  <input class="custom-control-input" type="radio" id="Frau" name="Gender" value="Frau" required>
				  <label class="custom-control-label" for="Frau">Frau</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input class="custom-control-input" type="radio" id="Herr" name="Gender" value="Herr" required>
				  <label class="custom-control-label" for="Herr">Herr</label>
				</div>
				</div>
              <div class="form-group row">
			  <div class="col-md-6">
                <label for="su-name">Vorname</label>
                <input class="form-control" type="text" id="FirstName" name="FirstName" placeholder="" pattern="[a-zA-ZöäüÖÄÜß \-]*">
				
                <div class="invalid-feedback">Bitte gib deinen Vornamen ein</div>
				</div>
				 <div class="col-md-6">
				 <label for="su-name">Nachname*</label>
                <input class="form-control" type="text" id="Surname" name="Surname" placeholder="" pattern="[a-zA-ZöäüÖÄÜß \-]*" required>
                <div class="invalid-feedback">Bitte gib deinen Nachnamen ein</div>
				</div>
              </div>
              <div class="form-group row">
				<div class="col-md-6">
					<label for="Phone">Telefon</label>
					<input class="form-control" type="text" id="PhoneNumber" name="PhoneNumber" placeholder=""
					oninput="this.value=onlyNumber(this.value);"
					required>
					<div class="invalid-feedback">Bitte gib deine Telefonnummer an.</div>
				</div>
				<script>
				function onlyNumber(val){
					console.log("val="+val.replace(/[^0-9.]/g, ''));
					return val.replace(/[^0-9.]/g, '');
				}
				</script>
				<div class="col-md-6">
					<label for="Email">E-Mail-Adresse*</label>
					<input class="form-control" type="email" id="Email" name="Email" placeholder="" required>
					<div class="invalid-feedback">Bitte gib eine E-Mail-Adresse an.</div>
				</div>
              </div>
              <div class="form-group row">
				<div class="col-md-6">
					<label for="ZIP">PLZ*</label>
					<input class="form-control" type="text" id="ZIP" name="ZIP" 
					oninput="this.value=onlyNumber(this.value);"
					placeholder="" pattern=".{4,5}" required="required">
					<div class="invalid-feedback">Bitte gib deine Postleitzahl an</div>
				</div>
				<div class="col-md-6">
					<label for="City">Ort*</label>
					<select class="form-control" type="dropdown" id="City" name="City"  required><option value="">Bitte PLZ eingeben</option></select>
					<div class="invalid-feedback">Bitte gib deinen Wohnort an.</div>
				</div>
              </div>
              <div class="form-group row">
				<div class="col-md-6">
					<label for="Street">Strasse/Nr*</label>
					<input class="form-control" type="text" id="Street" name="Street" placeholder="" required>
					<div class="invalid-feedback">Bitte gib deine Strasse und Hausnummer an</div>
				</div>

              </div>
              <div class="form-group">
                <label for="Password">Password*</label>
                <div class="password-toggle">
                  <input class="form-control" type="password" pattern="(?=.*[1-9])(?=.*[a-z])(?=.*[A-Z]).{8,}" id="CreateUserAccountPassword" name="CreateUserAccountPassword" required>
                  <label class="password-toggle-btn">
                    <input class="custom-control-input" type="checkbox"><i class="czi-eye password-toggle-indicator"></i><span class="sr-only">Anzeigen</span>
                  </label>
				  <div class="invalid-feedback">Das  Passwort muss 6 bis 12 Zeichen haben und aus Zahlen sowie Klein/Großbuchstaben bestehen.</div>
                </div>
              </div>
<div class="form-group">
                <label for="Password">Password-Wiederholung*</label>
                <div class="password-toggle">
                  <input class="form-control" type="password" pattern="(?=.*[1-9])(?=.*[a-z])(?=.*[A-Z]).{8,}" id="CreateUserAccountPasswordConfirm" name="CreateUserAccountPasswordConfirm" required>
                  <label class="password-toggle-btn">
                    <input class="custom-control-input" type="checkbox"><i class="czi-eye password-toggle-indicator"></i><span class="sr-only">Anzeigen</span>
                  </label>
				  <div id="CreateUserAccountPasswordConfirmFeedback" class="invalid-feedback">Die Passw&ouml;rter stimmen nicht &uuml;berein.</div>
                </div>
              </div>
			  <div class="form-group">
				<div class="custom-control custom-checkbox">
					<input class="custom-control-input" type="checkbox" id="privacypolicy" name="privacypolicy" required>
					<label class="custom-control-label" for="privacypolicy">Ich stimme zu, dass meine Daten zur Erstellung eines Nutzerkontos verarbeitet werden dürfen. Detailierte Informationen kannst du in unseren <a href="$OrderConfig.PrivacyPolicy.Link" target="_blank">Datenschutzrichtlinien</a> nachlesen.*</label>
				</div>
			  </div>
              <button id="registrationBtn" class="btn btn-primary btn-block btn-shadow" type="submit"><div style="width:1.2rem;height:1.2rem;" class="spinner-border text-size-xs text-darker d-none mr-2" role="status"></div>Registrieren</button>
            </form>
          </div>
		  <% end_if %>
        </div>
      </div>
    </div>