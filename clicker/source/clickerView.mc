import Toybox.Graphics;
import Toybox.Lang;
import Toybox.WatchUi;

class clickerView extends WatchUi.View {
    private var count as Lang.Number = 0;
    private var maxCount = 99999;
    private var minCount = 0;

    function initialize() {
        View.initialize();
    }

    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    function onShow() as Void {
    }

    function onUpdate(dc as Dc) as Void {
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_WHITE);
        dc.clear();

        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_TRANSPARENT);
        
        dc.drawText(
            dc.getWidth() / 2,
            30,
            Graphics.FONT_MEDIUM,
            "IP Counter",
            Graphics.TEXT_JUSTIFY_CENTER
        );

        var countText = count.toString();
        dc.drawText(
            dc.getWidth() / 2,
            dc.getHeight() / 2 - 20,
            Graphics.FONT_NUMBER_MILD,
            countText,
            Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER
        );

        dc.setColor(Graphics.COLOR_DK_GRAY, Graphics.COLOR_TRANSPARENT);
        dc.drawText(
            dc.getWidth() / 2,
            dc.getHeight() - 60,
            Graphics.FONT_SMALL,
            "UP/DOWN: Change",
            Graphics.TEXT_JUSTIFY_CENTER
        );
        
        dc.drawText(
            dc.getWidth() / 2,
            dc.getHeight() - 40,
            Graphics.FONT_SMALL,
            "START: Reset",
            Graphics.TEXT_JUSTIFY_CENTER
        );
    }

    function onHide() as Void {
    }

    function incrementCount() as Void {
        if (count < maxCount) {
            count++;
            WatchUi.requestUpdate();
        }
    }

    function decrementCount() as Void {
        if (count > minCount) {
            count--;
            WatchUi.requestUpdate();
        }
    }

    function resetCount() as Void {
        count = 0;
        WatchUi.requestUpdate();
    }

    function getCount() as Lang.Number {
        return count;
    }

}
