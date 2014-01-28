package;

import flixel.util.FlxSpriteUtil;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxMath;

/**
 * A FlxState which can be used for the game's menu.
 */
class MenuState extends FlxState
{
	/**
	 * Function that is called up when to state is created to set it up. 
	 */
	override public function create():Void
	{
		// Set a background color
		FlxG.cameras.bgColor = 0xffccecd8;
		// Show the mouse (in case it hasn't been disabled)
		#if !FLX_NO_MOUSE
		FlxG.mouse.show();
		#end

        this.createMenu();

        // Bottom image
		var image = new FlxSprite(-95, 0, 'assets/images/center_bottom.png');
		image.y = FlxG.height - image.frameHeight;
		image.scale = new flixel.util.FlxPoint(1, 1);
		this.add(image);

		super.create();
	}

	/**
    * Creates the menu of the application
    **/
    private function createMenu() : Void
    {
        var btnPlay: FlxButton = new FlxButton(0, 0, 'Play');
        btnPlay.makeGraphic(200, 50, 0xff5aaed4);
        FlxSpriteUtil.screenCenter(btnPlay, true, true);
        btnPlay.y = btnPlay.y - 100;
        btnPlay.label.size = 30;
        this.add(btnPlay);

        var btnQuit : FlxButton = new FlxButton(0, 0, 'Leave', function() {
            this.destroy();
        });

        btnQuit.makeGraphic(200, 50, 0xff5aaed4);
        FlxSpriteUtil.screenCenter(btnQuit, true, true);
        btnQuit.label.size = 30;

        this.add(btnQuit);
    }

	/**
	 * Function that is called when this state is destroyed - you might want to 
	 * consider setting all objects this state uses to null to help garbage collection.
	 */
	override public function destroy():Void
	{
		super.destroy();
	}

	/**
	 * Function that is called once every frame.
	 */
	override public function update():Void
	{
		super.update();
	}
}
