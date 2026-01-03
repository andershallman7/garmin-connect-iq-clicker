import Toybox.Lang;
import Toybox.WatchUi;

class clickeerDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new clickeerMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

}