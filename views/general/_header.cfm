<cfscript>
	site 	   		= event.getSite();
	logo_text  		= !IsEmpty(site.logo_title) ? site.logo_title : "helios";
	logo_subheading = !IsEmpty(site.logo_subtitle) ? site.logo_subtitle : "by HTML5 UP";
    mainNav    		= renderViewlet( event="core.navigation.mainNavigation", args={ depth = 2  });
</cfscript>

<cfoutput>
	
	<!-- Header -->
	<div id="header">
		<!-- Inner -->
		<div class="inner">
			<header>
				<h1>
					<a href="/">
						#logo_text#
					</a>
				</h1>
			</header>
		</div>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				#mainNav#
			</ul>
		</nav>
		
	</div>
	
</cfoutput>