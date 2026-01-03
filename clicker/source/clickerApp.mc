import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class clickerApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    function onStart(state as Dictionary?) as Void {
    }

    function onStop(state as Dictionary?) as Void {
    }

    function getInitialView() as [Views] or [Views, InputDelegates] {
        var view = new clickerView();
        var delegate = new clickerDelegate(view);
        return [ view, delegate ];
    }

}

function getApp() as clickerApp {
    return Application.getApp() as clickerApp;
}