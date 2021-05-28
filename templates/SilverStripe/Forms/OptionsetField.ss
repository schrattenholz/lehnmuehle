
	<% loop $Options %>
		<div class="custom-control custom-radio $Class">
			<input id="$ID"  class="custom-control-input" name="$Up.name" type="radio" value="$Value"<% if $isChecked %> checked<% end_if %><% if $isDisabled %> disabled<% end_if %> <% if $Up.Required %>required<% end_if %> />
			<label for="$ID" class="custom-control-label">$Title</label>
		</div>
	<% end_loop %>

