package com.san.hybrid.aidl;

interface IWebOtherInterface {

    void statsPageIn(String pageName, String extra);

    void statsPageOut(String pageName, String extra);

    void statsWebShowResult(String portal, String firstUrl, String firstResult, String firstFailedMsg, String lastUrl, long duration, String extra);

    void statsPageStart(String portal, String url, long duration);

    void statsInterceptResourceResult(String portal, String url, String interceptEvent, String result, String errorMsg);

    void statsLifeCycleEvent(String url, String lifeCycleEvent);

    void queryWebDownload(String portal, String title, long fileSize, String downloadUrl);

    boolean isDownloadedUrl(String downloadUrl);

    int getDownloadStatus(String downloadUrl);

    String getUserId();

    String getToken();

    String getUserName();

    String getCountryCode();

}
