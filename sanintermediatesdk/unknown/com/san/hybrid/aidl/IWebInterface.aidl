package com.san.hybrid.aidl;

import com.san.hybrid.aidl.IWebCallback;

interface IWebInterface {
      String handleWebAction(String portal, String action, String callbackName, String jsonParams, int exeType, in IWebCallback callback);

      int getDownloadStatus(String downloadUrl);

}
