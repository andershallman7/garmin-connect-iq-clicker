import Toybox.Lang;
import Toybox.WatchUi;

class clickerDelegate extends WatchUi.BehaviorDelegate {
    private var view as clickerView;

    function initialize(view as clickerView) {
        BehaviorDelegate.initialize();
        me.view = view;
    }

    function onKey(keyEvent as KeyEvent) as Boolean {
        var key = keyEvent.getKey();

        switch(key) {
            case WatchUi.KEY_UP:
                me.view.incrementCount();
                return true;
            
            case WatchUi.KEY_DOWN:
                me.view.decrementCount();
                return true;
            
            case WatchUi.KEY_START:
                me.view.resetCount();
                return true;
            
            case WatchUi.KEY_BACK:
                // Back button - exit the app
                WatchUi.popView(WatchUi.SLIDE_IMMEDIATE);
                return true;
            
            default:
                return false;
        }
    }

}