.class public Lccsancom/san/mads/webview/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static unifiedDownload(Lccsanandroid/content/Context;Z)Lccsancom/san/mads/webview/getDownloadingList;
    .locals 1

    .line 1
    invoke-static {p0}, Lccsancom/san/bridge/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance p1, Lccsancom/san/mads/webview/getDownloadedList;

    invoke-direct {p1, p0}, Lccsancom/san/mads/webview/getDownloadedList;-><init>(Lccsanandroid/content/Context;)V

    return-object p1
.end method
