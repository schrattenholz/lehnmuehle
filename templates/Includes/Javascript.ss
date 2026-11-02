<script type="text/javascript" src="$themedResourceURL('javascript/theme.min.js')"></script>
<script>
/* Mobiles Menue: der Text fuehrt zur Seite, der Pfeil klappt auf. Hover gibt es auf Touch nicht.
   Faengt den Klick vor theme.min.js (location.href) und Bootstrap ab; am Desktop greift nichts davon. */
(function () {
	var touchNav = window.matchMedia('(max-width: 991.98px), (hover: none) and (pointer: coarse)');
	function umschalten(li, knopf) {
		var offen = li.classList.contains('show');
		Array.prototype.forEach.call(li.parentNode.children, function (geschwister) {
			if (geschwister === li) { return; }
			geschwister.classList.remove('show');
			var m = geschwister.querySelector(':scope > .dropdown-menu');
			if (m) { m.classList.remove('show'); }
			var k = geschwister.querySelector(':scope > .nav-sub-toggle');
			if (k) { k.setAttribute('aria-expanded', 'false'); }
		});
		li.classList.toggle('show', !offen);
		var menue = li.querySelector(':scope > .dropdown-menu');
		if (menue) { menue.classList.toggle('show', !offen); }
		if (knopf) { knopf.setAttribute('aria-expanded', offen ? 'false' : 'true'); }
	}
	document.addEventListener('click', function (e) {
		if (!touchNav.matches || !e.target.closest) { return; }
		var knopf = e.target.closest('.navbar-nav .nav-sub-toggle');
		if (knopf) {
			e.preventDefault();
			e.stopPropagation();
			umschalten(knopf.parentNode, knopf);
			return;
		}
		var unter = e.target.closest('.navbar-nav .dropdown-menu > .dropdown > .dropdown-toggle');
		if (unter) {
			e.preventDefault();
			e.stopPropagation();
			umschalten(unter.parentNode, null);
			return;
		}
		if (e.target.closest('.navbar-nav .nav-link.dropdown-toggle')) {
			e.stopPropagation();
		}
	}, true);
})();
</script>
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
	<script type="text/javascript" src="$themedResourceURL('javascript/gmap3.min.js')"></script>
 <% end_if %>