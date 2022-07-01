.class public Lccsansan/dp/getDownloadingList;
.super Lccsansan/cw/getDownloadingList;
.source ""


# direct methods
.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static addDownloadListener(I)Ljava/lang/String;
    .locals 1

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dp/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    const-string p0, "http://api-test.myadsget.com/get_reservation_info"

    goto :goto_0

    :cond_0
    const-string p0, "http://api.myadsget.com/get_reservation_info"

    :goto_0
    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    const-string p0, "http://api-test.myadsget.com/v2/get_reservation_info"

    goto :goto_1

    :cond_2
    const-string p0, "http://api.myadsget.com/v2/get_reservation_info?version=3"

    .line 12
    :goto_1
    const-string v0, "reserve_url"

    invoke-static {v0, p0}, Lccsansan/cw/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadingList()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dp/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string v0, "http://api-test.myadsget.com/san/force_get_ad"

    goto :goto_0

    :cond_0
    const-string v0, "http://api.myadsget.com/san/force_get_ad?version=3"

    :goto_0
    return-object v0

    .line 4
    :cond_1
    const-string v1, "ad_request"

    const-string v2, ""

    invoke-static {v1, v2}, Lccsansan/cw/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, "http://api-test.myadsget.com/san/get_ads"

    goto :goto_1

    :cond_3
    const-string v0, "http://api.myadsget.com/san/get_ads?version=3"

    :goto_1
    return-object v0
.end method

.method public static removeDownloadListener()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "config"

    const-string v1, ""

    invoke-static {v0, v1}, Lccsansan/cw/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/dp/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://api-test.myadsget.com/san/config"

    goto :goto_0

    :cond_1
    const-string v0, "http://api.myadsget.com/san/config?version=3"

    :goto_0
    return-object v0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "app_l"

    const-string v1, ""

    invoke-static {v0, v1}, Lccsansan/cw/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Lccsansan/dp/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "https://adcs-test.myappsget.com/p/at?version=3"

    goto :goto_0

    :cond_1
    const-string p0, "http://adcs.myappsget.com/p/at?version=3"

    :goto_0
    return-object p0
.end method
