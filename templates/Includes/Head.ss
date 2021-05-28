<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<meta name="keywords" content="<% if $Keywords %>$Keywords<% else %> Biolandhof Sehnenmühle, Bioland, Rindfleisch, Schweinefeisch, Eier, Konserven, Hunsrück, regional<% end_if %>">
	<meta property="og:description" content="$Content.XML">
	<link rel=”canonical” href=”https://biolandhof-sehnenmuehle.de/$URLSegment”/>
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
		<meta property="og:image" content="$BaseHref$ThemeDir/images/default.jpg">
	<% end_if %>
	
	<!--[if lt IE 9]>

	<!-- Custom styles for this template -->
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('vendor.min') %>
	<% require themedCSS('theme.min') %>
	<link rel="shortcut icon" href="$BaseHref$ThemeDir/img/favicon/favicon.ico" />
	<link rel="apple-touch-icon" sizes="180x180" href="$BaseHref$ThemeDir/img/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="$BaseHref$ThemeDir/img/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="$BaseHref$ThemeDir/img/favicon/favicon-16x16.png">
	<link rel="manifest" href="$BaseHref$ThemeDir/img/favicon/favicon/manifest.json">
	<link rel="mask-icon" href="$BaseHref$ThemeDir/img/favicon/safari-pinned-tab.svg" color="#5bbad5">

</head>