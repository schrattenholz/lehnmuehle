<div  class="$ColorSet.Class py-5">
<section class="py-6 mb-6 py-lg-7 mb-lg-7">
	<div class="container-fluid px-lg-0">
	<% if not $ImageLeft %>
		<div class="row align-items-center">
			<div class="col-lg-6 mb-5 mb-lg-0">
				<div class="py-12 py-lg-15">
					<div class="bg-image bg-cover mr-lg-5" style="background-image: url($Image.ScaleWidth(800).URL));">
					</div>
				</div>
			</div>
			<div class="col-lg-4">
				<% if $ShowTitle %>
						<h2  class="<% if $SubHead %>mb-0<% end_if %>">$Title</h2>
						<% if $SubHead %>
						<h6 class="font-size-lg font-weight-normal  pb-4">$SubHead</h6>
						<% end_if %>
					<% end_if %>
					$Content
			</div>
		</div>
	<% else %>
		<div class="row align-items-center">
			<div class="col-lg-4">
				<% if $ShowTitle %>
						<h2  class="<% if $SubHead %>mb-0<% end_if %>">$Title</h2>
						<% if $SubHead %>
						<h6 class="font-size-lg font-weight-normal  pb-4">$SubHead</h6>
						<% end_if %>
					<% end_if %>
					$Content
			</div>
			<div class="col-lg-6 mb-5 mb-lg-0">
				<div class="py-12 py-lg-15">
					<div class="bg-image bg-cover mr-lg-5" style="background-image: url($Image.ScaleWidth(800).URL));">
					</div>
				</div>
			</div>
		</div>
	
	<% end_if %>
	</div>
</section>
</div>