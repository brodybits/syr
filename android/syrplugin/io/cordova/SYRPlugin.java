package io.cordova;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import syrnativeandroid.MainActivity;

import android.util.Log;

import android.os.Looper;

public class SYRPlugin extends CordovaPlugin {

  @Override
  public boolean execute(String c, org.json.JSONArray args, CallbackContext cb) throws org.json.JSONException {
    Log.i("SYRPlugin", "c: " + c);

    (new android.os.Handler(Looper.getMainLooper())).post(new Runnable() {
        @Override
        public void run() {
            MainActivity.start(cordova.getActivity());
        }
    });

    return true;
  }
}
