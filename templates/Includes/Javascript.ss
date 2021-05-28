<script type="text/javascript" src="$ThemeDir/javascript/theme.min.js"></script>
<script>

$.fn.serializeObject = function()
{
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
	console.log("="+this.value);
        if (o[this.name] !== undefined) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};
</script>
 <% if $ClassName=="UserDefinedForm" %>
     <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCueUA7hwyCVelrxdBpnil1ptUx9GocvZw"></script>
	<script type="text/javascript" src="$ThemeDir/javascript/gmap3.min.js"></script>
 <% end_if %>