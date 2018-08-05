package whatsappshare;

import org.haxe.extension.Extension;
import android.content.Intent;
import android.net.Uri;
import android.content.pm.PackageManager;

public class WhatsappShare extends Extension
{

    public static boolean SendMessage(String text, String filepath)
    {
    	try
    	{
    		Intent intent = new Intent();
	      	intent.setAction(Intent.ACTION_SEND);
            if (filepath.equals(""))
            {
                intent.setType("text/plain");
                intent.putExtra(Intent.EXTRA_TEXT, text);
            }
            else
            {
                intent.setType("image/*");
                intent.putExtra(Intent.EXTRA_TEXT, text);
                intent.putExtra(Intent.EXTRA_STREAM, Uri.parse("file://" + filepath));
                intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION);
            }
	      	intent.setPackage("com.whatsapp");
	      	if (intent.resolveActivity(Extension.mainActivity.getPackageManager()) != null) {
	        	Extension.mainActivity.startActivity(intent);
                return true;
	    	}
    	}catch (Exception ex)
    	{
    		return false;
    	}
        return false;
    }

}
