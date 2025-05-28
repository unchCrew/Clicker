package;

import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
    override public function create():Void
    {
        super.create();
        
        // Set background color
        FlxG.cameras.bgColor = FlxColor.fromRGB(20, 20, 30);
        
        // Title text
        var title = new FlxText(0, 100, FlxG.width, "Clicker Game", 48);
        title.setFormat(null, 48, FlxColor.WHITE, CENTER);
        title.setBorderStyle(OUTLINE, FlxColor.BLACK, 2);
        add(title);
        
        // Play button
        var playButton = new FlxButton(0, 0, "Start Game", clickPlay);
        playButton.setCenter(FlxG.width / 2, FlxG.height / 2);
        playButton.setGraphicSize(200, 60);
        playButton.updateHitbox();
        playButton.label.setFormat(null, 24, FlxColor.WHITE);
        playButton.makeGraphic(200, 60, FlxColor.fromRGB(50, 150, 255));
        playButton.onOver.callback = function() {
            playButton.makeGraphic(200, 60, FlxColor.fromRGB(80, 180, 255));
        };
        playButton.onOut.callback = function() {
            playButton.makeGraphic(200, 60, FlxColor.fromRGB(50, 150, 255));
        };
        add(playButton);
    }
    
    private function clickPlay():Void
    {
        FlxG.switchState(new PlayState());
    }
}
