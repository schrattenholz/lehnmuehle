	<% include Slider %>
	<% include CallToActions %>
   <!-- Banners-->
<div class="spacer-light bg-light pt-5">
    <section class="container">
      <div class="row">
        <div class="col-md-7 mb-4">
              $Content
        </div>
        <div class="col-md-5 mb-4">

			$ContentObjects.Sort('SortID').First.renderIT

          </div>
      </div>
    </section>
</div>
<% loop ContentObjects.Sort('SortID') %>
	<% if not $First %>
			
			$renderIT
			
		<% end_if %>
	<% end_loop %>


