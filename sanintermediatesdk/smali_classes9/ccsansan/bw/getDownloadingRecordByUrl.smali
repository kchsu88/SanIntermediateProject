.class public Lccsansan/bw/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsanandroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {p0}, Lccsansan/bw/getDownloadingRecordByUrl;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {p1, p0}, Lccsanandroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 3
    const-string v1, "ad_logo_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdInfo()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method
