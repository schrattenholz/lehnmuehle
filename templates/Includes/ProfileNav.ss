<% loop $Parent.Children() %>
	 <a href="$Link" class="list-group-item list-group-item-action <% if $isCurrent %>active <% end_if %>">$MenuTitle.XML</a>
<% end_loop %>
<a class="list-group-item list-group-item-action" href="{$BaseHref}home/logoutUser">Abmelden</a>