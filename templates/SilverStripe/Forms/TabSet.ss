<ul $getAttributesHTML("class") class="ss-tabset $extraClass nav nav-tabs" role="tablist">
	<% loop $Tabs %>
		<li class="$FirstLast  $MiddleString $extraClass nav-item">
		  <a href="#$id" data-target="#$id"  data-toggle="tab" id="tab-$id" class="nav-link <% if $First %>active<% end_if %>">$Title</a>
		</li>
	<% end_loop %>
</ul>

<div class="tab-content">
	<% loop $Tabs %>
		<% if $Tabs %>
			$FieldHolder
		<% else %>
			<div id="{$Up.name}_{$name}" class="tab-pane fade <% if First %>show active<% end_if %>" role="tabpanel">
				<% loop $Fields %>
					$FieldHolder
				<% end_loop %>
			</div>
		<% end_if %>
	<% end_loop %>
</div>

