.class public Lccsansan/bw/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z
    .locals 1

    :try_start_0
    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/net/ConnectivityManager;

    .line 2
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/net/ConnectivityManager;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "NetworkUtils"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/net/ConnectivityManager;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->getAllNetworkInfo()[Lccsanandroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 20
    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->getAllNetworkInfo()[Lccsanandroid/net/NetworkInfo;

    move-result-object p0

    .line 21
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lccsanandroid/net/NetworkInfo;->getState()Lccsanandroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Lccsanandroid/net/NetworkInfo$State;->CONNECTED:Lccsanandroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 2
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const/high16 v1, 0x10000000

    .line 5
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 6
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :goto_1
    return-void
.end method

.method private static deleteDownItem(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public static getDownloadStatusByUrl(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->isConnected()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v0

    :catch_0
    move-exception p0

    return v0
.end method

.method public static getDownloadedList(Lccsanandroid/content/Context;)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    return v0
.end method

.method public static getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p0

    .line 2
    iget-object v0, p0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Lccsanandroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->getState()Lccsanandroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Lccsanandroid/net/NetworkInfo$State;->CONNECTED:Lccsanandroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    if-ne p0, v0, :cond_0

    goto :goto_1

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_1

    .line 18
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 4
    :catch_0
    move-exception p0

    const/4 v0, 0x0

    .line 18
    :goto_1
    new-instance p0, Lccsanandroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lccsanandroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedCount(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 6
    invoke-static {p0, v0}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Z)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->deleteDownItem(Lccsanandroid/content/Context;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;)V

    :goto_0
    return-void
.end method
