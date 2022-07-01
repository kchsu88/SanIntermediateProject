.class public Lccsansan/k/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/k/deleteDownItem$getDownloadingList;
    }
.end annotation


# direct methods
.method public static addDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/k/deleteDownItem$getDownloadingList;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lccsansan/k/deleteDownItem;->getDownloadingList(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lccsansan/k/deleteDownItem$getDownloadingList;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1
    sget-object v0, Lccsansan/k/deleteDownItem$unifiedDownload;->getDownloadingList:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p0, p1, v2}, Lccsansan/k/deleteDownItem;->addDownloadListener(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/k/deleteDownItem$getDownloadingList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    return v1

    :cond_0
    return p1
.end method

.method public static getDownloadingList(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lccsansan/k/deleteDownItem$getDownloadingList;
    .locals 2

    if-nez p4, :cond_7

    const/4 p4, 0x0

    .line 3
    invoke-static {p4}, Lccsansan/bw/getLocalExtras;->getDownloadingList(Z)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p3}, Lccsansan/k/deleteDownItem;->getDownloadingList(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "rwd_c_d"

    goto :goto_0

    :cond_1
    const-string p3, "c_d"

    .line 12
    :goto_0
    invoke-static {}, Lccsansan/bl/addDownloadListener;->addDownloadListener()Z

    move-result p4

    const/4 v0, 0x1

    xor-int/2addr p4, v0

    invoke-static {p3, p4}, Lccsansan/bq/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result p3

    .line 13
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 14
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#getXzType openCdnXz = "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "XzUtils"

    invoke-static {v1, p4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p4, 0x7

    if-ne p0, p4, :cond_3

    .line 17
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    if-eqz p3, :cond_3

    .line 18
    sget-object p0, Lccsansan/k/deleteDownItem$getDownloadingList;->XZ_CENTER:Lccsansan/k/deleteDownItem$getDownloadingList;

    return-object p0

    :cond_3
    if-ne p0, v0, :cond_4

    .line 21
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 22
    sget-object p0, Lccsansan/k/deleteDownItem$getDownloadingList;->XZ_GP:Lccsansan/k/deleteDownItem$getDownloadingList;

    return-object p0

    .line 25
    :cond_4
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz p3, :cond_5

    .line 26
    sget-object p0, Lccsansan/k/deleteDownItem$getDownloadingList;->XZ_CENTER:Lccsansan/k/deleteDownItem$getDownloadingList;

    return-object p0

    .line 27
    :cond_5
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 28
    sget-object p0, Lccsansan/k/deleteDownItem$getDownloadingList;->XZ_GP:Lccsansan/k/deleteDownItem$getDownloadingList;

    return-object p0

    .line 30
    :cond_6
    sget-object p0, Lccsansan/k/deleteDownItem$getDownloadingList;->OTHER:Lccsansan/k/deleteDownItem$getDownloadingList;

    return-object p0

    .line 31
    :cond_7
    :goto_1
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    .line 32
    sget-object p0, Lccsansan/k/deleteDownItem$getDownloadingList;->XZ_GP:Lccsansan/k/deleteDownItem$getDownloadingList;

    return-object p0

    .line 34
    :cond_8
    sget-object p0, Lccsansan/k/deleteDownItem$getDownloadingList;->OTHER:Lccsansan/k/deleteDownItem$getDownloadingList;

    return-object p0
.end method

.method public static getDownloadingList(Ljava/lang/String;)Z
    .locals 1

    .line 35
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
