.class public final Lccsansan/ad/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/ad/removeDownloadListener;


# direct methods
.method public static IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lccsansan/da/removeDownloadListener;
    .locals 7

    .line 1
    invoke-static {}, Lccsansan/ad/unifiedDownload;->removeDownloadListener()Lccsansan/ad/removeDownloadListener;

    move-result-object v0

    .line 2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lccsansan/ad/removeDownloadListener;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(J)Z
    .locals 4

    .line 10
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 14
    :cond_0
    invoke-static {v0}, Lccsansan/bw/setLoaderClassName;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v2, p0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static removeDownloadListener()Lccsansan/ad/removeDownloadListener;
    .locals 3

    .line 5
    sget-object v0, Lccsansan/ad/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ad/removeDownloadListener;

    if-nez v0, :cond_0

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 7
    new-instance v1, Lccsansan/ad/removeDownloadListener;

    invoke-static {v0}, Lccsansan/ad/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/da/removeDownloadListener;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lccsansan/ad/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;)V

    sput-object v1, Lccsansan/ad/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ad/removeDownloadListener;

    .line 9
    :cond_0
    sget-object v0, Lccsansan/ad/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ad/removeDownloadListener;

    return-object v0
.end method

.method public static unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;
    .locals 1

    .line 3
    invoke-static {}, Lccsansan/ad/unifiedDownload;->removeDownloadListener()Lccsansan/ad/removeDownloadListener;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lccsansan/ad/removeDownloadListener;->addDownloadListener(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    return-object p0
.end method
