.class public Lccsansan/cd/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static removeDownloadListener:Lccsanandroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsansan/cd/removeDownloadListener;->removeDownloadListener()Lccsanandroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lccsansan/bq/getDownloadedList;->getDownloadingList()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 8
    :cond_1
    invoke-static {}, Lccsansan/cd/removeDownloadListener;->unifiedDownload()V

    .line 9
    invoke-static {p0}, Lccsansan/cd/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;)Lccsanandroid/location/Location;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lccsansan/cd/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lccsanandroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 17
    invoke-static {}, Lccsansan/bw/getErrorCode;->trackReportShow()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IncentiveDownloadUtils(DD)V
    .locals 4

    const-string v0, "test_location_gps"

    const-wide/16 v1, 0x0

    cmpl-double v3, p0, v1

    if-nez v3, :cond_0

    cmpl-double v3, p2, v1

    if-nez v3, :cond_0

    .line 12
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, v0, p1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/location/Location;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/location/Location;->getLongitude()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lccsanandroid/location/Location;->getLatitude()D

    move-result-wide v1

    cmpl-double p0, v1, v3

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static getDownloadingList(Ljava/lang/String;)V
    .locals 4

    .line 19
    const-string v0, "NUL"

    invoke-static {p0, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, v0, v1}, Lccsansan/cd/removeDownloadListener;->IncentiveDownloadUtils(DD)V

    return-void

    .line 23
    :cond_0
    invoke-static {p0}, Lccsansan/cd/unifiedDownload;->getCountryCode(Ljava/lang/String;)Lccsansan/cd/unifiedDownload;

    move-result-object p0

    if-nez p0, :cond_1

    .line 25
    const-string p0, "SAN"

    const-string v0, "countryCode not found, pls use #setTestLocation(double lat, double lng)"

    invoke-static {p0, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 28
    :cond_1
    iget-wide v0, p0, Lccsansan/cd/unifiedDownload;->lat:D

    iget-wide v2, p0, Lccsansan/cd/unifiedDownload;->lng:D

    invoke-static {v0, v1, v2, v3}, Lccsansan/cd/removeDownloadListener;->IncentiveDownloadUtils(DD)V

    return-void
.end method

.method private static removeDownloadListener()Lccsanandroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lccsansan/cd/removeDownloadListener;->removeDownloadListener:Lccsanandroid/util/Pair;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "test_location_gps"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, ","

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 9
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v3, 0x1

    .line 10
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 11
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lccsanandroid/util/Pair;

    move-result-object v0

    sput-object v0, Lccsansan/cd/removeDownloadListener;->removeDownloadListener:Lccsanandroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/cd/removeDownloadListener;->removeDownloadListener:Lccsanandroid/util/Pair;

    return-object v0
.end method

.method private static unifiedDownload()V
    .locals 4

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "location_refresh_interval"

    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Lccsansan/cd/IncentiveDownloadUtils;->getDownloadingList()Lccsansan/cd/IncentiveDownloadUtils;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccsansan/cd/IncentiveDownloadUtils;->getDownloadingList(J)V

    return-void
.end method
