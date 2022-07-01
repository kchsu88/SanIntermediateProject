.class public Lccsansan/bw/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 1

    .line 7
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ad"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z
    .locals 2

    const-string v0, "portal_key"

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1, v0}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    const-string p0, ""

    .line 6
    :cond_3
    :goto_1
    invoke-static {p0}, Lccsansan/bw/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
