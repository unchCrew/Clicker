package;

import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.text.FlxText;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.tweens.FlxTween;

class PlayState extends FlxState
{
    var score:Int = 0;
    var scoreText:FlxText;
    var clickButton:FlxButton;
    
    override public function create():Void
    {
        super.create();
        
        // Set background color
        FlxG.cameras.bgColor = FlxColor.fromRGB(20, 20, 30);
        
        // Score display
        scoreText = new FlxText(0, 50, FlxG.width, "Score: 0", 36);
        scoreText.setFormat(null, 36, FlxColor.WHITE, CENTER);
        scoreText.setBorderStyle(OUTLINE, FlxColor.BLACK, 2);
        add(scoreText);
        
        // Click button
        clickButton = new FlxButton(0, 0, "Click Me!", onClick);
        clickButton.setCenter(FlxG.width / 2, FlxG.height / 2);
        clickButton.setGraphicSize(200, 80);
        clickButton.updateHitbox();
        clickButton.label.setFormat(null, 24, FlxColor.WHITE);
        clickButton.makeGraphic(200, 80, FlxColor.fromRGB(255, 100, 100));
        clickButton.onOver.callback = function() {
            clickButton.makeGraphic(200, 80, FlxColor.fromRGB(255, 130, 130));
        };
        clickButton.onOut.callback = function() {
            clickButton.makeGraphic(200, 80, FlxColor.fromRGB(255, 100, 100));
        };
        add(clickButton);
    }
    
    private function onClick():Void
    {
        score++;
        scoreText.text = "Score: " + score;
        
        // Button scale animation
        FlxTween.tween(clickButton.scale, {x: 1.1, y: 1.1}, 0.1, {
            onComplete: function(_) {
                FlxTween.tween(clickButton.scale, {x: 1.0, y: 1.0}, 0.1);
            }
        });
    }
}
