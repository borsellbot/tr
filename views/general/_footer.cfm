<cfscript>
	site 	 		    = event.getSite();
	footer_description  = site.footer_description;
	footer_copyright    = site.footer_copyright;
	id                  = site.id;
	footerlinks 		= site.footer_links;
	socialmedia 	    = site.footer_socialmedia;
</cfscript>

<cfoutput>
	<!-- Footer -->
	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="12u">
					<!-- Contact -->
					<section class="contact">
						<header>
							<h3>Contact Us</h3>
						</header>
						<ul class="icons">
							<cfif !IsEmpty( socialmedia )>
								<cfloop list="#socialmedia#" item="item">
									#renderview(presideobject="social_media", view="/general/_footer_social_link", filter={ id = item })#
								</cfloop>
							</cfif>
						</ul>
					</section>
					
					<!-- Copyright -->
					<div class="copyright">
						<ul class="menu">
							<li>#footer_copyright#</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>

				</div>
			</div>
		</div>
	</div>
</cfoutput>