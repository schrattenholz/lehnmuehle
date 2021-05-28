<!-- Primary menu-->
              <ul class="navbar-nav">
			  <% loop $Menu(1) %>
			  <% if $Children %>
                <li class="nav-item <% if $Children %> dropdown<% end_if %> <% if $isCurrent || $isSection %>active<% end_if %>"><a class="nav-link dropdown-toggle" href="#" title="$Title.XML" data-toggle="dropdown">$MenuTitle.XML</a>
                  <% if $Children && not $HideChildrenInMainNav %>
				  <ul class="dropdown-menu">
					<% loop $Children %>
						<% if $Children && not $HideChildrenInMainNav %>
							<li class="dropdown <% if $isCurrent || $isSection %>active<% end_if %>"><a class="dropdown-item dropdown-toggle" href="#" title="$Title.XML" data-toggle="dropdown">$MenuTitle.XML $ClassName</a>
							<% if $Children && not $HideChildrenInMainNav %>
							  <ul class="dropdown-menu">
								<% loop $Children  %>
								<li class="<% if $isCurrent || $isSection %>active<% end_if %>"><a class="dropdown-item" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
								<% end_loop %>
							  </ul>
							 <% end_if %>
							</li>
						<% else %>
							<li class="<% if $isCurrent || $isSection %>active<% end_if %>"><a class="dropdown-item" href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
						<% end_if %>
					<% end_loop %>
                  </ul>
				  <% end_if %>
                </li>
				<% else %>
					 <li class="nav-item <% if $isCurrent || $isSection %>active<% end_if %>"><a class="nav-link dropdown-toggle" href="$Link" title="$Title.XML" data-toggle="dropdown">$MenuTitle.XML</a></li>
				<% end_if %>
			  <% end_loop %>
              </ul>
			  
