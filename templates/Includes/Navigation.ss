<!-- Primary menu-->
              <ul class="navbar-nav">
			  <% loop $Menu(1) %>
			  <% if $Children && not $HideChildrenInMainNav %>
                <li class="nav-item <% if $Children  && $Top.OrderConfig.ProductRoot.ID!=$ID %> dropdown<% end_if %> <% if $isCurrent || $isSection %>active<% end_if %>"><a class="nav-link <% if $First %>pl-0 <% end_if %> <% if $Children  && $Top.OrderConfig.ProductRoot.ID!=$ID %>dropdown-toggle<% end_if %>" href="<% if $URLSegment=="home" || $URLSegment=="" %>$BaseHref/home<% else %>$Link<% end_if %>" title="$Title.XML" data-toggle="<% if $Children  && not $Top.OrderConfig.ProductRoot.ID!=$ID %>dropdown<% end_if %>">$MenuTitle.XML</a>
                  <% if $Children && not $HideChildrenInMainNav  %>
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
					 <li class="nav-item <% if $isCurrent || $isSection %>active<% end_if %>"><a class="nav-link <% if $First %>pl-0 <% end_if %>" href="<% if $URLSegment=="home" || $URLSegment=="" %>{$BaseHref}home/<% else %>$Link<% end_if %>" title="$Title.XML">$MenuTitle.XML</a></li>
				<% end_if %>
			  <% end_loop %>
              </ul>
			  
