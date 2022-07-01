.class public final Lccsancom/mbridge/msdk/mbnative/e/b;
.super Ljava/lang/Object;
.source "NativeReportUtils.java"


# direct methods
.method private static a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    if-nez p0, :cond_0

    .line 109
    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object p0

    .line 112
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    return-object v0

    .line 117
    :cond_1
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 118
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_2

    .line 119
    invoke-virtual {v1, p0}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 124
    :cond_2
    goto :goto_1

    .line 122
    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 125
    :goto_1
    return-object v0
.end method

.method private static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const-class v0, Lccsancom/mbridge/msdk/mbnative/e/b;

    monitor-enter v0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lccsancom/mbridge/msdk/mbnative/e/b$1;

    invoke-direct {v2, p1, p0}, Lccsancom/mbridge/msdk/mbnative/e/b$1;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 53
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x1

    .line 56
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 58
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->k()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    const/4 v6, 0x0

    .line 60
    const/4 v7, 0x0

    .line 61
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTracking()Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/i;->k()[Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;[Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    monitor-exit v0

    return-void

    .line 39
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/mbnative/d/a;)V
    .locals 12

    const-class v0, Lccsancom/mbridge/msdk/mbnative/e/b;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReport()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 25
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReport(Z)V

    .line 26
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/e/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/e/b;->c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lccsancom/mbridge/msdk/mbnative/e/b;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Ljava/util/List;

    move-result-object v1

    .line 29
    nop

    .line 1093
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1096
    :cond_0
    const/4 v3, 0x0

    .line 1097
    const/4 v10, 0x0

    .line 1098
    const/4 v4, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v11, v4, :cond_3

    .line 1099
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/lang/String;

    .line 1100
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1101
    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    move v8, v3

    move v9, v10

    invoke-static/range {v4 .. v9}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1098
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1094
    :cond_2
    :goto_1
    nop

    .line 30
    :cond_3
    invoke-static {p0, p1, p2}, Lccsancom/mbridge/msdk/mbnative/e/b;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isCallBackImpression()Z

    move-result p1

    if-nez p1, :cond_5

    .line 33
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCallBackImpression(Z)V

    .line 34
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result p0

    invoke-virtual {p3, p0}, Lccsancom/mbridge/msdk/mbnative/d/a;->onLoggingImpression(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_5
    monitor-exit v0

    return-void

    .line 23
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static declared-synchronized b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 9

    const-class v0, Lccsancom/mbridge/msdk/mbnative/e/b;

    monitor-enter v0

    .line 67
    if-eqz p0, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v1

    .line 69
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 70
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    .line 71
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    goto :goto_0

    .line 75
    :catchall_0
    move-exception p0

    .line 76
    :try_start_1
    const-string p1, "NativeReportUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 66
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    .line 77
    :cond_0
    nop

    .line 78
    :goto_1
    monitor-exit v0

    return-void
.end method

.method private static declared-synchronized c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 10

    const-class v0, Lccsancom/mbridge/msdk/mbnative/e/b;

    monitor-enter v0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/b;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/b;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/b;->c:Ljava/util/Map;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x1

    .line 87
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v7

    move-object v4, p1

    move-object v5, p0

    move-object v6, p2

    invoke-static/range {v4 .. v9}, Lccsancom/mbridge/msdk/click/a;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit v0

    return-void

    .line 81
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
