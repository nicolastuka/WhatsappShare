# WhatsappShare
Simple share text and image from Haxe to WhatsApp on ANDROID

# Installation

### Simple Example Use Extension (only text):

```haxe

import extension.whatsappshare.WhatsappShare;

class SimpleExample
{
    function AnyFuntion():Void
    {
        if (WhatsappShare.SendMessage("Hello! it´s a message from WhatsApp")
        {
            trace("It´s Working!");
        }
        else
        {
            trace("Not Working... :(");        
        }
    }
}
```

### Advanced Example Use Extension (text & image):

```
import extension.whatsappshare.WhatsappShare;

class SimpleExampleImage
{
    function AnyFuntion():Void
    {
        if (WhatsappShare.SendMessage("Hello! it´s a message from WhatsApp", openfl.Assets.getBitmapData("assets/images/image.png"))
        {
            trace("It´s Working!");
        }
        else
        {
            trace("Not Working... :(");        
        }
    }
}

```


### License

The MIT License (MIT) - LICENSE.md

Copyright © 2018 MilköGames (http://www.milkogames.xyz)

Author: Nicolás Capel
