<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<%-- Kein meta keywords mehr: das Feld $Keywords existiert in diesem Projekt
	     gar nicht, die Bedingung war also immer falsch und ausgeliefert wurde
	     stets der Fallback -- die Stichworte eines *anderen* Hofes
	     (Biolandhof Sehnenmuehle). Suchmaschinen werten meta keywords ohnehin
	     nicht aus; statt den Text zu korrigieren faellt das Tag weg. --%>
	<meta property="og:description" content="$Content.XML">
	<%-- Canonical zeigte auf biolandhof-sehnenmuehle.de, also auf eine fremde
	     Domain -- fuer Suchmaschinen die Ansage "der eigentliche Inhalt steht
	     woanders". Zusaetzlich waren die Anfuehrungszeichen typografisch (”),
	     wodurch das Tag vermutlich ohnehin ignoriert wurde. Jetzt die
	     absolute Adresse der Seite selbst. --%>
	<link rel="canonical" href="$AbsoluteLink">
	<meta property="og:type" content="website">
	<meta property="og:url" content="<% if $Link=="/home/" %>$BaseHref<% else %>$BaseHref$Link<% end_if %>">
	<meta property="og:title" content="$MenuTitle.XML">
	<% if $Slides.Count>0 %>
		<% loop $Slides.Sort('SortID') %>
		<meta property="og:image" content="{$BaseHref}$BackgroundImage.URL">
		<% end_loop %>
	<% else_if $CoverImage %>
		<meta property="og:image" content="{$BaseHref}$CoverImage.URL">
	<% else %>
		<meta property="og:image" content="$BaseHref$themedResourceURL('images/default.jpg')">
	<% end_if %>
	
	<!--[if lt IE 9]>

	<!-- Custom styles for this template -->
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('vendor.min') %>
	<% require themedCSS('theme.min') %>
	<link rel="shortcut icon" href="$BaseHref$themedResourceURL('img/favicon/favicon.ico')" />
	<link rel="apple-touch-icon" sizes="180x180" href="$BaseHref$themedResourceURL('img/favicon/apple-touch-icon.png')">
	<link rel="icon" type="image/png" sizes="32x32" href="$BaseHref$themedResourceURL('img/favicon/favicon-32x32.png')">
	<link rel="icon" type="image/png" sizes="16x16" href="$BaseHref$themedResourceURL('img/favicon/favicon-16x16.png')">
	<link rel="manifest" href="$BaseHref$themedResourceURL('img/favicon/favicon/manifest.json')">
	<link rel="mask-icon" href="$BaseHref$themedResourceURL('img/favicon/safari-pinned-tab.svg')" color="#5bbad5">

	<% include SchemaOrg %>
</head>