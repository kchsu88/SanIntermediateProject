.class public Lccsansan/di/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsansan/dt/removeDownloadListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->trackReportClick()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lccsansan/ab/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v2

    const-string v3, "__VIEWID__"

    invoke-static {v1, v3, v2}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static addDownloadListener(Ljava/util/List;)Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;",
            ">;)",
            "Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    if-eqz v2, :cond_1

    .line 12
    invoke-virtual {v2}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AUTO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v2}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/di/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v3

    if-lt v3, v1, :cond_1

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private static removeDownloadListener(Ljava/lang/String;)I
    .locals 2

    .line 16
    const-string v0, "AUTO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 18
    :cond_0
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static unifiedDownload(Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "AUTO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    const-string v0, "p"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 5
    :try_start_0
    array-length v2, p0

    sub-int/2addr v2, v0

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    return v1
.end method

.method public static unifiedDownload(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->trackReportClick()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lccsansan/ab/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unifiedDownload(Ljava/util/List;)Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;",
            ">;)",
            "Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v1, 0x7fffffff

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AUTO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v2}, Lccsansan/dt/getPackageNameByRecord$removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/di/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)I

    move-result v3

    if-gt v3, v1, :cond_1

    move-object v0, v2

    move v1, v3

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method
