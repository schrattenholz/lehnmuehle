
      <li class="breadcrumb-item"><a class="text-nowrap" href="index.html"><i class="czi-home"></i>Home</a></li>
      <% loop $Pages %>
      <li class="breadcrumb-item text-nowrap"><% if $Last %><span class="text-light">$MenuTitle.XML</span><% else %><% if not Up.Unlinked %><a href="$Link" class="breadcrumb-$Pos"><% end_if %>$MenuTitle.XML<% if not Up.Unlinked %></a><% end_if %><% end_if %>
      </li>
     <% end_loop %>

 
 