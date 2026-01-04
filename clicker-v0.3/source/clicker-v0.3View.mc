import Toybox.Graphics;
import Toybox.Lang;
import Toybox.WatchUi;

class clicker_v0_3View extends WatchUi.View {
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
            "Counter",
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
            dc.getHeight() - 125,
            Graphics.FONT_SMALL,
            "UP/DOWN: Change",
            Graphics.TEXT_JUSTIFY_CENTER
        );

        dc.drawText(
            dc.getWidth() / 2,
            dc.getHeight() - 90,
            Graphics.FONT_SMALL,
            "START: Reset",
            Graphics.TEXT_JUSTIFY_CENTER
        );
    }

    function onHide() as Void {
    }

    function incrementCount() as Void {
        if (count < maxCount) {
            count += 1;
            me.requestUpdate();
        }
    }

    function decrementCount() as Void {
        if (count > minCount) {
            count -= 1;
            me.requestUpdate();
        }
    }

    function resetCount() as Void {
        count = 0;
        me.requestUpdate();
    }

    function getcount() as Lang.Number {
        return count;
    }

}
