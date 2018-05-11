using Toybox.Application as App;

/**
* ENTRY POINT
*/
class mainApp extends App.AppBase
{
	public var controller;
	public var model;
	
    function initialize() {
        AppBase.initialize();        
        controller = new $.mainAppController();
        model = new $.workoutModel();
    }

    // onStart() is called on application start up
    function onStart(state) {
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
    }

    // Return the initial view of your application here
    function getInitialView() {
        //return [ new selectWorkoutView(), new selectWorkoutDelegate() ];
        
        //TEMPORARY SHORTCUT
        controller.start();
        return [ new doWorkoutView(), new doWorkoutDelegate() ];
    }
}