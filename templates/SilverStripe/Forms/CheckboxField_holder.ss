<div id="$HolderID" class="custom-control custom-checkbox<% if extraClass %> $extraClass<% end_if %>">
	$Field
    <label class="custom-control-label" for="$ID">$Title<% if $RightTitle %> $RightTitle<% end_if %></label>
	<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
	<% if $Description %><span class="description">$Description</span><% end_if %>
</div>
