.class public Lccsansan/cm/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)Z
    .locals 1

    .line 18
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getNetworkId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lccsansan/cm/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 12

    .line 1
    invoke-static {p0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/cm/addDownloadListener;->addDownloadListener(Ljava/lang/String;)J

    move-result-wide v0

    .line 2
    invoke-static {p0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v2

    invoke-virtual {v2, p1}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)J

    move-result-wide v2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    cmp-long v8, v4, v2

    if-gez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 6
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "#isPlacementInPacing isLoadingInPacing = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " loadingInterval = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " diffLoadDuration = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AC.Pacing"

    invoke-static {v3, v2}, Lccsansan/cm/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_1

    return v1

    .line 11
    :cond_1
    invoke-static {p0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v2

    invoke-virtual {v2, p1}, Lccsansan/cm/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)J

    move-result-wide v4

    .line 12
    invoke-static {p0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lccsansan/cm/addDownloadListener;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v8

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v4

    cmp-long p0, v8, v6

    if-lez p0, :cond_2

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    cmp-long p0, v6, v8

    if-gez p0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    nop

    .line 17
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#isPlacementInPacing isLoadingInPacing = false isHourlyInPacing = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " showingInterval = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " diffShowingDuration = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lccsansan/cm/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    .line 19
    invoke-static {p0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsansan/cm/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 20
    invoke-static {p0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lccsansan/cm/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    cmp-long v8, v2, v6

    if-lez v8, :cond_0

    cmp-long v8, v4, v2

    if-gez v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 24
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "#isPlacementInPacing isLoadingInPacing = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " loadingInterval = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " diffDuration = "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AC.Pacing"

    invoke-static {v3, v2}, Lccsansan/cm/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_1

    return v1

    .line 29
    :cond_1
    invoke-static {p0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lccsansan/cm/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 30
    invoke-static {p0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lccsansan/cm/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    cmp-long p0, v8, v6

    if-lez p0, :cond_2

    cmp-long p0, v11, v8

    if-gez p0, :cond_2

    const/4 v0, 0x1

    .line 34
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#isSpotInPacing isLoadingInPacing = false isHourlyInPacing = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " showingInterval = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " diffShowingDuration = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lccsansan/cm/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
