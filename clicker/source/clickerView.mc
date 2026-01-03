import Toybox.Graphics;
import Toybox.WatchUi;

class clickerView extends WatchUi.View {
    private var count = 0;
    private var maxCount = 99999;
    private var minCount = 0;

    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_WHITE);
        dc.clear();

        // Set up font and colors
        dc.setColor(Graphics.COLOR_BLACK, Graphics.COLOR_TRANSPARENT);
        
        // Draw title
        dc.drawText(
            dc.getWidth() / 2,
            30,
            Graphics.FONT_MEDIUM,
            "IP Counter",
            Graphics.TEXT_JUSTIFY_CENTER
        );

        // Draw count in large text
        var countText = count.toString();
        dc.drawText(
            dc.getWidth() / 2,
            dc.getHeight() / 2 - 20,
            Graphics.FONT_NUMBER_MILD,
            countText,
            Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER
        );

        // Draw instructions
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

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
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

    function getCount() as Number {
        return count;
    }

}
