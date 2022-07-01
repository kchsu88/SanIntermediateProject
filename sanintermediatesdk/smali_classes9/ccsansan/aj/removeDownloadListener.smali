.class public Lccsansan/aj/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/aj/removeDownloadListener$removeDownloadListener;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/aj/removeDownloadListener$removeDownloadListener;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 9
    :cond_1
    invoke-static {p0}, Lccsansan/bd/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;)Lccsansan/bd/addDownloadListener;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    .line 10
    invoke-virtual {p0}, Lccsansan/bd/addDownloadListener;->addDownloadListener()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_3

    .line 11
    invoke-virtual {p0}, Lccsansan/bd/addDownloadListener;->addDownloadListener()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_2

    return p1

    :cond_2
    return v0

    .line 16
    :cond_3
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->removeDownloadListener()J

    move-result-wide v1

    .line 17
    invoke-virtual {p0}, Lccsansan/bd/addDownloadListener;->addDownloadListener()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long p0, v1, v3

    if-gez p0, :cond_4

    return v0

    :cond_4
    return p1
.end method

.method static synthetic removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsansan/aj/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/aj/IncentiveDownloadUtils;->getDownloadingRecordByUrl()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-static {p0, p1}, Lccsansan/aj/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
