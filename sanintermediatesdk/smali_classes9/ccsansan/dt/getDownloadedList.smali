.class public Lccsansan/dt/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Lccsansan/dt/getDownloadStatusByUrl;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/dt/getDownloadStatusByUrl;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static addDownloadListener(Lccsansan/dt/getDownloadStatusByUrl;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils()I

    move-result p0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x11

    if-eq p0, v1, :cond_1

    const/16 v1, 0x16

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1b

    if-eq p0, v1, :cond_1

    const/16 v1, 0x1c

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->getDownloadingList(Lccsansan/dt/getDownloadStatusByUrl;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getDownloadingList(Lccsansan/dt/getDownloadStatusByUrl;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/16 v2, 0xf

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->addDownloadListener(Lccsansan/dt/getDownloadStatusByUrl;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static removeDownloadListener(Lccsansan/dt/getDownloadStatusByUrl;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils()I

    move-result p0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->removeDownloadListener(Lccsansan/dt/getDownloadStatusByUrl;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
