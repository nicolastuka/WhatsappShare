package extension.whatsappshare;

import openfl.utils.JNI;
import cpp.Lib;
import openfl.utils.ByteArray;
import openfl.display.JPEGEncoderOptions;
import openfl.display.Bitmap;
import openfl.display.BitmapData;

class WhatsappShare {

    private static var __SendMessage:String->String->Bool = function(text:String, bmd:String) { return false; };

    public static function SendMessage(text:String, captura:openfl.display.BitmapData = null):Bool
    {
        try{
            var sharedImagePath:String = null;
            if(captura != null) sharedImagePath = saveBitmapData(captura);
            __SendMessage = JNI.createStaticMethod("whatsappshare.WhatsappShare", "SendMessage", "(Ljava/lang/String;Ljava/lang/String;)Z");
            return __SendMessage(text, sharedImagePath);
        }catch(e:Dynamic){
            trace("Error is: " + e);
            return false;
        }
    }

    public static function saveBitmapData(captura:BitmapData, fichero="share_image.jpg"):String {
        var path:String = "";
        #if (!lime_legacy)
            path = lime.system.System.documentsDirectory + "/" + fichero;
        #else
            path = openfl.utils.SystemPath.documentsDirectory + "/" + fichero;
        #end
        if (sys.FileSystem.exists(path)) {
            try {
                sys.FileSystem.deleteFile(path);
            } catch(e:Dynamic) {
                return null;
            }
        }
        var arr_bytes:ByteArray = captura.encode(captura.rect, new JPEGEncoderOptions());
        try {
            sys.io.File.saveBytes(path, arr_bytes);
        } catch(e:Dynamic) {
            return null;
        }
        return path;
    }

}
