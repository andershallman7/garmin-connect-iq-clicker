import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class clicker_v0_3App extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as [Views] or [Views, InputDelegates] {
        var view = new clicker_v0_3View();
        var delegate = new clicker_v0_3Delegate(view);
        return [ view, delegate ];
    }

}

function getApp() as clicker_v0_3App {
    return Application.getApp() as clicker_v0_3App;
}