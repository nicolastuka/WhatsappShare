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

class SimpleExampleImagen
{
    function AnyFuntion():Void
    {
        if (WhatsappShare.SendMessage("Hello! it´s a message from WhatsApp", openfl.Assets.getBitmapData("assets/images/logo.png"))
        {
            trace("It´s Working!");
        }
        else
        {
            trace("Not Working... :(");        
        }
    }
}
