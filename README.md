# WhatsappShare
Simple share text and image from Haxe to WhatsApp on ANDROID

# Installation

### Simple Example Use Extension:

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

