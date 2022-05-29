package;

import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.input.FlxPointer;
import flixel.FlxG;
import flixel.FlxState;

class PlayState extends FlxState
{
    var pointer:FlxPointer;
    var mouse = FlxG.mouse;

    override function create()
    {
        super.create();

        mouse.visible = true;

        var blue = new FlxSprite();
        blue.makeGraphic(FlxG.width, FlxG.height, FlxColor.BLUE);
        add(blue);
    }

    override function update(elapsed:Float)
    {
        super.update(elapsed);

        if (mouse.justPressed)
        {
            trace(mouse.x);
            trace(mouse.y);
        }
    }
}