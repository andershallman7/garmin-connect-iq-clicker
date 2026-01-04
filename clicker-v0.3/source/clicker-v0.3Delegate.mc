import Toybox.Lang;
import Toybox.WatchUi;

class clicker_v0_3Delegate extends WatchUi.BehaviorDelegate {
    private var m_view as clicker_v0_3View;

    function initialize(view as clicker_v0_3View?) {
        BehaviorDelegate.initialize();
        me.m_view = view;
    }

    function onKey(keyEvent as KeyEvent) as Boolean {
        var key = keyEvent.getKey();

        switch(key) {
            case WatchUi.KEY_UP:
                me.m_view.incrementCount();
                return true;
            
            case WatchUi.KEY_DOWN:
                me.m_view.decrementCount();
                return true;
            
            case WatchUi.KEY_START:
                me.m_view.resetCount();
                return true;
            
            default:
                return false;
        }
    }

}