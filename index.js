const jetpack = require ( 'fs-jetpack' ) ;

const Username = process .env .USER ;

const Conf = jetpack .read ( 'conf.json' , 'json' ) ;

var Paths = Conf .paths
  , Assets = Conf .assets ;

// Handle user specific paths
function userPrefix ( path ) {
    return path [ 0 ] === '~' ? '/home/' + Username + path .substr ( 1 ) : path ;
}

Paths = Paths .map (( path ) => {
    return userPrefix ( path ) ;
});

Assets = Assets .map (( obj ) => {
    return {
        asset : obj .asset
      , path : userPrefix ( obj .path )
    };
});

// Create folders
Paths .forEach (( path ) => {
    console .log ( "Creating " + path ) ;
    jetpack .dir ( path ) ;
});

// Copy assets
Assets .forEach (( { asset , path } ) => {
    console .log ( "Copying " + asset ) ;
    jetpack .copy ( asset , path ) ;
});

