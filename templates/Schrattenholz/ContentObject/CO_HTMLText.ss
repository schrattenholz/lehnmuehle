<div  class="$ColorSet.Class ">
	<section class="py-6 <% if $Pos==1 %>mt-6 py-lg-7 mt-lg-7<% end_if %>" id="<% if $AnchorID %>$AnchorID<% else %>$URLSegment_$ID<% end_if %>" >
		<div class="container">
			<div class="row  justify-content-center<% if $SeveralColsID %>no-gutters<% end_if %>">
				<div class="col-10">
					<% if $ShowTitle %>
						<h1 data-aos="fade-right" data-aos-delay="0">$Title</h1>
						<% if $SubTitle %><h2 class="font-weight-lighter" data-aos="fade-right" data-aos-delay="100">$SubTitle</h1><% end_if %>
					<% end_if %>
					<div <% if $ShowTitle %><% if $SubTitle %>data-aos-delay="500"<% else %>data-aos-delay="250"<% end_if %>data-aos="fade-left"<% else %>data-aos="fade-up"<% end_if %>>
					$Content
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
