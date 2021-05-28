	<% include PageTitle_Light %>
    <!-- Page Content-->
<div class="container pb-4 pb-sm-5">
      <!-- Categories grid-->
	<div class="<% if $HeaderImage %>spacer-white<% end_if %> bg-white py-5">
		<section class="container pb-4 mb-md-3 mt-2 mt-sm-5">
		  <div class="row">
			<div class="<% if $ContentObjects %>col-md-8<% else %> col-md-12<% end_if %> mb-4">
				<div class="pb-4 my-2 my-md-0 pb-md-5 text-center text-sm-left">
				  $Content
				   $Form
				</div>
			<div class="row pt-5">
			<% if $Children.Filter("ClassName","Schrattenholz\\Order\\ProductList") || $Children.Filter("ClassName","Schrattenholz\\Order\\Product")  %>
				<% loop $Children.Sort('Date','DESC') %>
				<!-- Catogory-->
				<div class="col-md-4 col-sm-6 mb-3">
				<div class="card border-0">
				<a class="d-block overflow-hidden rounded-lg" href="$Link">
					<img class="card-img" src="$CoverImage.Fill(400,266).URL" alt="$CoverImage.Filename">
				</a>
					<div class="card-body">
					<h2 class="h5"><a href="$Link">$MenuTitle.XML</a></h2>
					
					</div>
				</div>
				</div>
				<% end_loop %>
			<% else %>
				<div class="row mb-4" >
					<article class="card col-12  pl-0 pr-0 pl-sm-0 pr-sm-3">
					$NoEntryText 
					</article>
				</div>
			<% end_if %>
		  </div>
			</div>
			<div class="col-md-4 mb-4 align-self-start">

				$ContentObjects.Sort('SortID').First.renderIT

			</div>
		  </div>
		</section>
	</div>
</div>



