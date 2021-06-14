	<% include PageTitle_Light %>
	<div class="container main" role="main">

		<div class="<% if $HasQuadCarousel %>hellgrau <% end_if %>row fluid <% if $ContentObjects %>justify-content-md-end<% else %>justify-content-md-center <% end_if %> <% if not $HeadlineFullWidth %>py-4<% else %><% end_if %> ratio_$Ratio">
			<article class="col-12   pt-3 pl-lg-0 boxwidth content">
				$Content
				$Form
			</article>
			
		</div>
	</div>
	
	<% if $ContentObjects %>
		<section class="contentBlock pb-5">
			<div class="container">
			<% loop ContentObjects.Sort('SortID') %>
				<!-- prjctDescrColumn -->
				<article class="py-4 prjctDescrColumn hasMbBottom hasOver <% if $Even %> prjctDescrColumnOrderInverse <% end_if %>">
					<div class="row align-items-md-center">
						<div class="col-12 col-md-6 colImage <% if $Even %> order-md-2 <% end_if %>">
							<!-- prjctColumnImageWrap -->
							<div class="prjctColumnImageWrap alignleft rounded">
								<img class="d-block w-100 rounded" src="$Image.Fill(670,450).URL" alt="image description">
							</div>
						</div>
						<div class="col-12 col-md-6 colDescr <% if $Even %> order-md-1 <% end_if %>">
							<!-- prjctTextHolder -->
							<div class="bg-white hasShadow rounded prjctTextHolder position-relative">
								<!-- postTitleTextTag -->
								<strong class="d-block postTitleTextTag font-weight-normal text-uppercase">$Title</strong>
								<% if $SubHead %><h3 class="text-capitalize">$SubHead</h3><% end_if %>
								$Content
							</div>
						</div>
					</div>
				</article>
				<% end_loop %>
			</div>
		</section>
	<% end_if %>