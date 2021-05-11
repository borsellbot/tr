component output=false {

	public void function configure( bundle ) output=false {
		// See sticker docs here: http://sticker.readthedocs.org/en/latest/
		bundle.addAsset( id="jq-jquery"        , path="/js/jquery.min.js" );
		bundle.addAsset( id="jq-validate" 	   , url="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js");
		bundle.addAsset( id="jq-dropotron"     , path="/js/jquery.dropotron.min.js" );
		bundle.addAsset( id="jq-scrolly"       , path="/js/jquery.scrolly.min.js" );
		bundle.addAsset( id="jq-onvisible"     , path="/js/jquery.onvisible.min.js" );
		bundle.addAsset( id="js-skel"     	   , path="/js/skel.min.js" );
		bundle.addAsset( id="js-util"     	   , path="/js/util.js" );
		bundle.addAsset( id="js-helios-main"   , path="/js/main.js" );
		bundle.addAsset( id="css-helios-main"  , path="/css/main.css" );

		bundle.asset( "jq-jquery" ).dependents( "jq-*" );

	}
}