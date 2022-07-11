<!-- Nav tabs -->
<ul class="nav nav-tabs" role="tablist">
  <li class="nav-item">
											 
													
    <a href="#productinfo_tab" data-target="#productinfo_tab" class="nav-link active" data-toggle="tab" role="tab">
      <i class="czi-announcement"></i>
      Produktinfos
    </a>
  </li>
																							 
											 
							   
							
						  
						
	  
<% if $ProductDiscountScale($ID,$v).Count>0 %>
  <li class="nav-item">
    <a href="#discounts_tab" data-target="#discounts_tab" class="nav-link" data-toggle="tab" role="tab">
      <i class="czi-discount mr-2"></i>
      Rabatte
    </a>
  </li>
	 
																						   
<% end_if %>
<% if $DeliveryIsActive %>
  <li class="nav-item dropdown">
						
	  
						
											 
<a href="#deliveryInfo_tab" data-target="#deliveryInfo_tab" class="nav-link" data-toggle="tab" role="tab">
      <i class="czi-delivery mr-2"></i>
      Liefer/ Abholtermine
    </a>
																						   
  </li>
 <% end_if %>
</ul>
<!-- Tabs content -->
									
<div class="tab-content">
	<div class="tab-pane fade show active" id="productinfo_tab" role="tabpanel">
		$Content
	</div>
	<% if $ProductDiscountScale($ID,$v).Count>0 %>
	<div class="tab-pane fade" id="discounts_tab" role="tabpanel">
		<% include Schrattenholz\OrderProfileFeature\Includes\Product_Info_DiscountScale %>
	</div>
	<% end_if %>
	<% if $DeliveryIsActive %>
	<div class="tab-pane fade" id="deliveryInfo_tab" role="tabpanel">
		<% include Schrattenholz\OrderProfileFeature\Includes\Product_Info_ShippingOptions %>							  													  																
	</div>
<% end_if %>
</div>

		 
	  
					  