.class public Lccsansan/k/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static getDownloadingList(Lccsansan/cs/unifiedDownload;)Lccsansan/dj/IncentiveDownloadUtils;
    .locals 9

    .line 1
    sget-object v0, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/al/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/al/IncentiveDownloadUtils;->removeDownloadListener()J

    move-result-wide v3

    .line 3
    invoke-static {}, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/al/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/al/IncentiveDownloadUtils;->IncentiveDownloadUtils()I

    move-result v5

    .line 4
    invoke-static {}, Lccsansan/bt/getDownloadedRecordByUrl;->IncentiveDownloadUtils()I

    move-result v6

    .line 5
    invoke-static {}, Lccsansan/bt/getDownloadedRecordByUrl;->getDownloadingList()I

    move-result v7

    .line 6
    invoke-static {}, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener()Lccsansan/al/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/al/IncentiveDownloadUtils;->getDownloadingList()I

    move-result v8

    .line 7
    new-instance v0, Lccsansan/dj/IncentiveDownloadUtils;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lccsansan/dj/IncentiveDownloadUtils;-><init>(Lccsansan/cs/unifiedDownload;JIIII)V

    return-object v0

    .line 9
    :cond_0
    invoke-static {p0}, Lccsansan/cv/unifiedDownload;->removeDownloadListener(Lccsansan/cs/unifiedDownload;)Lccsansan/dj/IncentiveDownloadUtils;

    move-result-object p0

    return-object p0
.end method

.method public static removeDownloadListener(Lccsansan/cs/unifiedDownload;)Lccsansan/aw/getDownloadedRecordByUrl;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    if-ne p0, v0, :cond_0

    .line 2
    new-instance p0, Lccsansan/f/addDownloadListener;

    invoke-direct {p0}, Lccsansan/f/addDownloadListener;-><init>()V

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lccsansan/cv/unifiedDownload;->unifiedDownload(Lccsansan/cs/unifiedDownload;)Lccsansan/aw/getDownloadedRecordByUrl;

    move-result-object p0

    return-object p0
.end method
