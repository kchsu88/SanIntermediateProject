.class public Lccsancom/mbridge/msdk/videocommon/download/c;
.super Ljava/lang/Object;
.source "DownLoadManager.java"


# static fields
.field private static a:Lccsancom/mbridge/msdk/videocommon/download/c;


# instance fields
.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:Z

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/download/k;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 9

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->c:Z

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v2, 0x5

    const/16 v3, 0xf

    const-wide/16 v4, 0xf

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 45
    return-void
.end method

.method public static getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;
    .locals 2

    .line 48
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/download/c;->a:Lccsancom/mbridge/msdk/videocommon/download/c;

    if-nez v0, :cond_1

    .line 49
    const-class v0, Lccsancom/mbridge/msdk/videocommon/download/c;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/download/c;->a:Lccsancom/mbridge/msdk/videocommon/download/c;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lccsancom/mbridge/msdk/videocommon/download/c;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/videocommon/download/c;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/videocommon/download/c;->a:Lccsancom/mbridge/msdk/videocommon/download/c;

    .line 53
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 55
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/download/c;->a:Lccsancom/mbridge/msdk/videocommon/download/c;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/c;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/k;

    move-result-object p1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 88
    return-object p1

    .line 90
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 7

    .line 526
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_5

    .line 528
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 530
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 531
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 532
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 533
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/videocommon/download/k;

    .line 534
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    nop

    .line 1542
    const/4 v3, 0x2

    :try_start_0
    const-string v4, "com.mbridge.msdk.videocommon.d.a"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1544
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v4

    .line 1545
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v5

    .line 1544
    invoke-virtual {v4, v5, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v4

    .line 1546
    if-nez v4, :cond_0

    .line 1547
    goto :goto_3

    .line 1549
    :cond_0
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->u()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 1550
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/download/k;->b()V

    goto :goto_1

    .line 1552
    :cond_1
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/download/k;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    :goto_1
    goto :goto_3

    .line 1555
    :catch_0
    move-exception v4

    .line 1556
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DownLoadManager"

    invoke-static {v5, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    :try_start_1
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1561
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v4

    .line 1562
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v4

    .line 1563
    if-nez v4, :cond_2

    .line 1564
    invoke-static {v1}, Lccsancom/mbridge/msdk/b/d;->e(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v4

    .line 1566
    :cond_2
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/b/d;->k()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1567
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/download/k;->b()V

    goto :goto_2

    .line 1569
    :cond_3
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/download/k;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1574
    :cond_4
    :goto_2
    goto :goto_3

    .line 1572
    :catch_1
    move-exception v1

    .line 1573
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :goto_3
    goto :goto_0

    .line 538
    :cond_5
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 429
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->c:Z

    .line 430
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_1

    .line 432
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 434
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 435
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 437
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/download/k;

    .line 438
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->b()V

    .line 441
    :cond_0
    goto :goto_0

    .line 443
    :cond_1
    return-void
.end method

.method public final a(ILjava/lang/String;Z)Z
    .locals 1

    .line 121
    nop

    .line 123
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/videocommon/download/c;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/k;

    move-result-object p2

    .line 124
    if-eqz p2, :cond_1

    .line 125
    invoke-virtual {p2, p1, p3}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(IZ)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    if-nez p1, :cond_0

    .line 127
    goto :goto_0

    .line 129
    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x1

    .line 136
    :cond_1
    :goto_0
    goto :goto_1

    .line 132
    :catch_0
    move-exception p1

    .line 133
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :cond_2
    :goto_1
    return v0
.end method

.method public final a(ILjava/lang/String;ZIZILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "ZIZI",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)Z"
        }
    .end annotation

    .line 141
    nop

    .line 142
    nop

    .line 145
    const/4 v0, 0x0

    if-eqz p7, :cond_1a

    :try_start_0
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_e

    .line 148
    :cond_0
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/videocommon/download/c;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/k;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_18

    .line 150
    invoke-virtual {v1, p2, p1, p3, p7}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;IZLjava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 151
    const/4 p3, 0x1

    if-eqz p1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_7

    .line 154
    :cond_1
    if-eqz p5, :cond_b

    .line 155
    if-nez p6, :cond_6

    .line 156
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_4

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 159
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 160
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    invoke-interface {p4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_2
    goto :goto_1

    .line 164
    :cond_3
    goto :goto_0

    .line 165
    :cond_4
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_5

    .line 166
    const/4 v0, 0x1

    .line 168
    :cond_5
    goto/16 :goto_8

    .line 169
    :cond_6
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_2
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 172
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 173
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 174
    invoke-interface {p5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_7
    goto :goto_3

    .line 177
    :cond_8
    goto :goto_2

    .line 178
    :cond_9
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p6

    if-lt p6, p4, :cond_a

    .line 179
    const/4 v0, 0x1

    goto :goto_4

    .line 180
    :cond_a
    invoke-interface {p5}, Ljava/util/List;->size()I

    .line 181
    nop

    .line 183
    :goto_4
    goto :goto_8

    .line 185
    :cond_b
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_5
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_e

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 188
    invoke-interface {p7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 189
    if-eqz p6, :cond_c

    invoke-virtual {p6}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p6}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p6}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 190
    invoke-interface {p4, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_c
    goto :goto_6

    .line 193
    :cond_d
    goto :goto_5

    .line 194
    :cond_e
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_10

    .line 195
    const/4 v0, 0x1

    goto :goto_8

    .line 152
    :cond_f
    :goto_7
    nop

    .line 199
    :cond_10
    :goto_8
    if-eqz v0, :cond_18

    .line 200
    iget-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->e:Ljava/util/Map;

    if-nez p3, :cond_11

    .line 201
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->e:Ljava/util/Map;

    goto :goto_9

    .line 203
    :cond_11
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 204
    iget-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->e:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_12
    :goto_9
    iget-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->g:Ljava/util/Map;

    if-nez p3, :cond_13

    .line 209
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->g:Ljava/util/Map;

    goto :goto_a

    .line 211
    :cond_13
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 212
    iget-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->g:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_14
    :goto_a
    iget-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->f:Ljava/util/Map;

    if-nez p3, :cond_15

    .line 217
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->f:Ljava/util/Map;

    goto :goto_b

    .line 219
    :cond_15
    invoke-interface {p3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_16

    .line 220
    iget-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->f:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_16
    :goto_b
    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_18

    .line 225
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 229
    new-instance p7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 230
    invoke-virtual {p6}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 232
    invoke-virtual {p7, v2, p6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-interface {p3, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    goto :goto_c

    .line 237
    :cond_17
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->e:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->f:Ljava/util/Map;

    invoke-interface {p1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->g:Ljava/util/Map;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_18
    goto :goto_d

    .line 243
    :catch_0
    move-exception p1

    .line 244
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_19

    .line 245
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    :cond_19
    :goto_d
    return v0

    .line 146
    :cond_1a
    :goto_e
    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 460
    nop

    .line 461
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 462
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 463
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 464
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 465
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 466
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/k;

    .line 468
    if-nez v1, :cond_0

    .line 469
    goto :goto_0

    .line 471
    :cond_0
    nop

    .line 472
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/k;->c()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 473
    if-nez v1, :cond_1

    .line 474
    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    .line 477
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 478
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 479
    if-eqz v4, :cond_2

    .line 480
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 482
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 484
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 485
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 486
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 487
    if-eqz v4, :cond_2

    .line 488
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v5

    .line 489
    if-eqz v5, :cond_2

    .line 490
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v5

    .line 491
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 492
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 493
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result p1

    return p1

    .line 477
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 500
    :cond_3
    goto :goto_0

    .line 502
    :cond_4
    return v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 99
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Z)V
    .locals 1

    .line 506
    if-eqz p1, :cond_0

    .line 507
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->c:Z

    if-eqz p1, :cond_1

    .line 508
    return-void

    .line 511
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->c:Z

    .line 514
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p1, :cond_2

    .line 515
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 516
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 517
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 518
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 519
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/download/k;

    .line 520
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->a()V

    .line 521
    goto :goto_0

    .line 523
    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/k;
    .locals 1

    .line 111
    nop

    .line 112
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/videocommon/download/k;

    goto :goto_0

    .line 117
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public createUnitCache(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ILccsancom/mbridge/msdk/videocommon/listener/a;)Lccsancom/mbridge/msdk/videocommon/download/k;
    .locals 7

    .line 406
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p3, :cond_0

    goto :goto_3

    .line 410
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/videocommon/download/k;

    .line 412
    const/16 p2, 0x5e

    if-eq p4, p2, :cond_2

    const/16 p2, 0x11f

    if-ne p4, p2, :cond_1

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {p1, p5}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/listener/a;)V

    goto :goto_1

    .line 413
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/listener/a;)V

    .line 417
    :goto_1
    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    goto :goto_2

    .line 419
    :cond_3
    new-instance v6, Lccsancom/mbridge/msdk/videocommon/download/k;

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/videocommon/download/k;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V

    .line 420
    if-eqz p5, :cond_4

    .line 421
    invoke-virtual {v6, p5}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/listener/a;)V

    .line 423
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v6

    .line 425
    :goto_2
    return-object p1

    .line 407
    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public createUnitCache(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;ILccsancom/mbridge/msdk/videocommon/listener/a;)Lccsancom/mbridge/msdk/videocommon/download/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;I",
            "Lccsancom/mbridge/msdk/videocommon/listener/a;",
            ")",
            "Lccsancom/mbridge/msdk/videocommon/download/k;"
        }
    .end annotation

    .line 381
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 385
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 386
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/videocommon/download/k;

    .line 388
    const/16 p2, 0x5e

    if-eq p4, p2, :cond_2

    const/16 p2, 0x11f

    if-ne p4, p2, :cond_1

    goto :goto_0

    .line 391
    :cond_1
    invoke-virtual {p1, p5}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/listener/a;)V

    goto :goto_1

    .line 389
    :cond_2
    :goto_0
    const/4 p2, 0x0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p5}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/listener/a;)V

    .line 393
    :goto_1
    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/util/List;)V

    goto :goto_2

    .line 395
    :cond_3
    new-instance v6, Lccsancom/mbridge/msdk/videocommon/download/k;

    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/videocommon/download/k;-><init>(Lccsanandroid/content/Context;Ljava/util/List;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V

    .line 396
    if-eqz p5, :cond_4

    .line 397
    invoke-virtual {v6, p5}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/listener/a;)V

    .line 399
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v6

    .line 401
    :goto_2
    return-object p1

    .line 382
    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public load(Ljava/lang/String;)V
    .locals 0

    .line 374
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/c;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/k;

    move-result-object p1

    .line 375
    if-eqz p1, :cond_0

    .line 376
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/download/k;->a()V

    .line 378
    :cond_0
    return-void
.end method
