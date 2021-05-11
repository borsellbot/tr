<cfscript>
	body     = renderView();
	mainNav  = renderViewlet( "core.navigation.mainNavigation" );
	metaTags = renderView( "/general/_pageMetaForHtmlHead" );
	adminBar = renderView( "/general/_adminToolbar" );

	header   = renderView( view="/general/_header" );
	footer   = renderView( view="/general/_footer" 	   );

	//event.include( "css-bootstrap" );

	event.include( assetId="jq-jquery"                        )
         .include( assetId="jq-dropotron"              		  )
         .include( assetId="jq-scrolly"              		  )
         .include( assetId="jq-onvisible"              		  )
         .include( assetId="js-skel"              			  )
         .include( assetId="js-util"              			  )
         .include( assetId="js-helios-main"              	  )

         .include( assetId="css-helios-main"                  );

</cfscript>

<cfoutput><!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
		#metaTags#

		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="/assets/img/wig-favicon.png" type="image/x-icon">

		#event.renderIncludes( "css" )#
		#event.renderIncludes( "js", "top" )#

		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
	</head>

<body class="#( prc.body_class ?: 'homepage' )#">
	<div id="page-wrapper">
		#header#
		#body#
		#footer#
		#adminBar#

		#event.renderIncludes( "js" )#
	</div>

</body>
</html></cfoutput>