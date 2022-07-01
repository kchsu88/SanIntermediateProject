.class public Lccsansan/bq/resume;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Ljava/util/List;Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;JZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;",
            "Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;",
            "JZ)",
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;->SERIAL_STRICT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadMode;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-static {p0}, Lccsansan/bq/resume;->addDownloadListener(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0, p2, p3, p4}, Lccsansan/bq/resume;->getDownloadingList(Ljava/util/List;JZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static addDownloadListener(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/san/ads/AdInfo;

    .line 7
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->hasFinished()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static getDownloadingList(Ljava/util/List;JZ)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;JZ)",
            "Ljava/util/List<",
            "Lccsancom/san/ads/AdInfo;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/32 v2, 0x7fffffff

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/san/ads/AdInfo;

    .line 15
    invoke-virtual {v7}, Lccsancom/san/ads/AdInfo;->hasSucceed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v7}, Lccsancom/san/ads/AdInfo;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, 0x1

    .line 21
    :cond_1
    invoke-virtual {v7}, Lccsancom/san/ads/AdInfo;->isIdle()Z

    move-result v8

    if-nez v8, :cond_2

    goto :goto_0

    .line 25
    :cond_2
    invoke-virtual {v7}, Lccsancom/san/ads/AdInfo;->getMinIntervalToStart()J

    move-result-wide v8

    if-eqz p3, :cond_4

    if-nez v4, :cond_4

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    cmp-long v10, v5, v2

    if-nez v10, :cond_3

    move-wide v5, v8

    .line 28
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v12, p1, v8

    cmp-long v14, v10, v12

    if-gtz v14, :cond_5

    cmp-long v10, v5, v2

    if-eqz v10, :cond_6

    cmp-long v10, v8, v5

    if-gtz v10, :cond_6

    .line 33
    :cond_5
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    :goto_1
    return-object v0
.end method
