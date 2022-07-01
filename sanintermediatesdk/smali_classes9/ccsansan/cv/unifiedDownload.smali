.class public Lccsansan/cv/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static removeDownloadListener(Lccsansan/cs/unifiedDownload;)Lccsansan/dj/IncentiveDownloadUtils;
    .locals 9

    .line 1
    sget-object v0, Lccsansan/cv/unifiedDownload$addDownloadListener;->addDownloadListener:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    .line 5
    invoke-static {}, Lccsansan/cl/unifiedDownload;->removeDownloadListener()J

    move-result-wide v3

    .line 6
    invoke-static {}, Lccsansan/cl/unifiedDownload;->addDownloadListener()I

    move-result v5

    .line 8
    invoke-static {}, Lccsansan/cl/unifiedDownload;->resume()I

    move-result v6

    .line 9
    invoke-static {}, Lccsansan/cl/unifiedDownload;->getDownloadedCount()I

    move-result v7

    .line 10
    invoke-static {}, Lccsansan/cl/unifiedDownload;->getDownloadingList()I

    move-result v8

    .line 13
    new-instance v0, Lccsansan/dj/IncentiveDownloadUtils;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lccsansan/dj/IncentiveDownloadUtils;-><init>(Lccsansan/cs/unifiedDownload;JIIII)V

    return-object v0
.end method

.method public static unifiedDownload(Lccsansan/cs/unifiedDownload;)Lccsansan/aw/getDownloadedRecordByUrl;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cv/unifiedDownload$addDownloadListener;->addDownloadListener:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    .line 5
    new-instance p0, Lccsansan/cv/getDownloadedList;

    invoke-direct {p0}, Lccsansan/cv/getDownloadedList;-><init>()V

    return-object p0
.end method
