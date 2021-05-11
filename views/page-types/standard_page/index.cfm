<cfparam name="args.title"                  field="page.title"               editable="true" />
<cfparam name="args.main_content"           field="page.main_content"        editable="true" />

<cfscript>
	prc.body_class = "no-sidebar";
</cfscript>

<cfoutput>

	<!-- Main -->
	<div class="wrapper style1">
		<div class="container">
			<article id="main" class="special">
				<header>
					<h2>#args.title#</h2>
				</header>
				#args.main_content#
			</article>
		</div>
	</div>
	
</cfoutput>