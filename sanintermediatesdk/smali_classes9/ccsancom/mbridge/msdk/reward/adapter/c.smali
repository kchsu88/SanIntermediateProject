.class public final Lccsancom/mbridge/msdk/reward/adapter/c;
.super Ljava/lang/Object;
.source "RewardCampaignsResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/reward/adapter/c$a;,
        Lccsancom/mbridge/msdk/reward/adapter/c$l;,
        Lccsancom/mbridge/msdk/reward/adapter/c$m;,
        Lccsancom/mbridge/msdk/reward/adapter/c$b;,
        Lccsancom/mbridge/msdk/reward/adapter/c$j;,
        Lccsancom/mbridge/msdk/reward/adapter/c$k;,
        Lccsancom/mbridge/msdk/reward/adapter/c$h;,
        Lccsancom/mbridge/msdk/reward/adapter/c$d;,
        Lccsancom/mbridge/msdk/reward/adapter/c$g;,
        Lccsancom/mbridge/msdk/reward/adapter/c$f;,
        Lccsancom/mbridge/msdk/reward/adapter/c$e;,
        Lccsancom/mbridge/msdk/reward/adapter/c$i;,
        Lccsancom/mbridge/msdk/reward/adapter/c$c;
    }
.end annotation


# static fields
.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lccsancom/mbridge/msdk/reward/adapter/c$h;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private volatile e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1978
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->e:Ljava/util/List;

    .line 73
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "mb-reward-load-thread"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/reward/adapter/c;->c:Ljava/util/Map;

    .line 75
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 76
    new-instance v1, Lccsancom/mbridge/msdk/reward/adapter/c$h;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/reward/adapter/c$h;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->a:Lccsancom/mbridge/msdk/reward/adapter/c$h;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/reward/adapter/c$1;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/adapter/c;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Z)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    .locals 3

    monitor-enter p0

    .line 2010
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2011
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 2013
    :cond_0
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 2014
    if-eqz v0, :cond_1

    .line 2015
    new-instance v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 2016
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2017
    if-eqz p1, :cond_1

    .line 2018
    new-instance p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 2019
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2022
    :cond_1
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 2009
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/c;)Lccsancom/mbridge/msdk/reward/adapter/c$h;
    .locals 0

    .line 62
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->a:Lccsancom/mbridge/msdk/reward/adapter/c$h;

    return-object p0
.end method

.method public static a()Lccsancom/mbridge/msdk/reward/adapter/c;
    .locals 1

    .line 81
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/adapter/c;ZLccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Ljava/lang/String;Z)V
    .locals 15

    .line 62
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v6, p8

    .line 3751
    :try_start_0
    new-instance v7, Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-direct {v7}, Lccsancom/mbridge/msdk/videocommon/a$a;-><init>()V

    .line 4081
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v2

    .line 3752
    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Z)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v2

    .line 3753
    if-nez v2, :cond_0

    .line 3754
    new-instance v2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    move-object v11, v2

    goto :goto_0

    .line 3753
    :cond_0
    move-object v11, v2

    .line 3756
    :goto_0
    invoke-virtual {v7, v11}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 3759
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 3760
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v4

    invoke-virtual {v4, v6}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3761
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 3762
    const/4 v5, 0x0

    :goto_1
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 3763
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3764
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3765
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3766
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReady(Z)V

    .line 3767
    invoke-interface {v1, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3769
    :cond_1
    goto :goto_2

    .line 3762
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3772
    :cond_3
    new-instance v4, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-direct {v4, v2, v0, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    .line 3773
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    .line 3774
    move-object v12, v1

    move-object v13, v4

    goto :goto_3

    .line 3775
    :cond_4
    new-instance v4, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-direct {v4, v2, v0}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 3776
    invoke-virtual/range {p5 .. p5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move-object v13, v4

    .line 3778
    :goto_3
    move/from16 v1, p4

    invoke-virtual {v13, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(I)V

    .line 3779
    invoke-virtual {v13, v6}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 3780
    move-object/from16 v2, p10

    invoke-virtual {v13, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->c(Ljava/lang/String;)V

    .line 3781
    move-object/from16 v1, p9

    invoke-virtual {v13, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 3782
    move/from16 v1, p1

    invoke-virtual {v13, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->d(Z)V

    .line 3783
    new-instance v14, Lccsancom/mbridge/msdk/reward/adapter/c$l;

    const/4 v3, 0x0

    move-object v1, v14

    move-object/from16 v2, p10

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p8

    move-object/from16 v8, p5

    move/from16 v9, p11

    move-object v10, v12

    invoke-direct/range {v1 .. v10}, Lccsancom/mbridge/msdk/reward/adapter/c$l;-><init>(Ljava/lang/String;ZLccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V

    .line 3784
    invoke-virtual {v11, v14}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 3785
    invoke-virtual {v11, v13}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 3786
    move-object/from16 v0, p7

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V

    .line 3787
    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setRid(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3792
    goto :goto_4

    .line 3788
    :catch_0
    move-exception v0

    .line 3789
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 3790
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardCampaignsResourceManager"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_5
    :goto_4
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/adapter/c;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->d:Z

    return p0
.end method

.method static synthetic c()Ljava/util/Map;
    .locals 1

    .line 62
    sget-object v0, Lccsancom/mbridge/msdk/reward/adapter/c;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/reward/adapter/c;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/adapter/c;->d()V

    return-void
.end method

.method private d()V
    .locals 2

    .line 1995
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1996
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->e:Ljava/util/List;

    .line 1999
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 2000
    if-eqz v0, :cond_1

    .line 2001
    new-instance v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    .line 2002
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2006
    :cond_1
    goto :goto_0

    .line 2004
    :catch_0
    move-exception v0

    .line 2005
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2007
    :goto_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V
    .locals 13

    move-object v9, p0

    move-object/from16 v0, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v1, v9, Lccsancom/mbridge/msdk/reward/adapter/c;->a:Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-object v7, p1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->a(Lccsanandroid/content/Context;)V

    .line 240
    if-eqz p2, :cond_1

    .line 241
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v4}, Lccsancom/mbridge/msdk/videocommon/download/i;->b(Ljava/lang/String;Z)V

    .line 244
    invoke-static {}, Lccsanandroid/os/Message;->obtain()Lccsanandroid/os/Message;

    move-result-object v2

    .line 245
    const/16 v4, 0x69

    iput v4, v2, Lccsanandroid/os/Message;->what:I

    .line 246
    new-instance v4, Lccsanandroid/os/Bundle;

    invoke-direct {v4}, Lccsanandroid/os/Bundle;-><init>()V

    .line 247
    const-string v7, "unit_id"

    invoke-virtual {v4, v7, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-object v7, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v4, v7, v0}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v7, "request_id"

    invoke-virtual {v4, v7, v5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v7, "url"

    invoke-virtual {v4, v7, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, v4}, Lccsanandroid/os/Message;->setData(Lccsanandroid/os/Bundle;)V

    .line 252
    iget-object v4, v9, Lccsancom/mbridge/msdk/reward/adapter/c;->a:Lccsancom/mbridge/msdk/reward/adapter/c$h;

    invoke-virtual {v4, v2}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 253
    if-eqz v6, :cond_0

    .line 254
    invoke-interface {v6, v0, v3, v5, v1}, Lccsancom/mbridge/msdk/reward/adapter/c$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    .line 260
    :cond_1
    if-eqz p2, :cond_2

    :try_start_1
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 262
    :try_start_2
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v10

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lccsancom/mbridge/msdk/reward/adapter/c$2;

    move-object v1, v12

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v8}, Lccsancom/mbridge/msdk/reward/adapter/c$2;-><init>(Lccsancom/mbridge/msdk/reward/adapter/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$i;Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v10, v11, v12}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 393
    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    :try_start_3
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 391
    const-string v1, "RewardCampaignsResourceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lccsanandroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/c$c;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "ZIZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$c;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$i;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v0, p7

    move-object/from16 v11, p8

    monitor-enter p0

    .line 86
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 87
    sget-object v13, Lccsancom/mbridge/msdk/reward/adapter/c;->c:Ljava/util/Map;

    new-instance v14, Lccsancom/mbridge/msdk/reward/adapter/c$a;

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, v14

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p3

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p5

    move-object/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$a;-><init>(ZZIILjava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v13, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, v10, Lccsancom/mbridge/msdk/reward/adapter/c;->a:Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-object/from16 v7, p6

    move-object/from16 v2, p10

    invoke-virtual {v1, v7, v0, v11, v2}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$c;)V

    .line 89
    iget-object v1, v10, Lccsancom/mbridge/msdk/reward/adapter/c;->a:Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->a(Lccsanandroid/content/Context;)V

    .line 90
    iget-object v1, v10, Lccsancom/mbridge/msdk/reward/adapter/c;->a:Lccsancom/mbridge/msdk/reward/adapter/c$h;

    move-object/from16 v3, p9

    invoke-virtual {v1, v12, v3}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 91
    iget-object v12, v10, Lccsancom/mbridge/msdk/reward/adapter/c;->a:Lccsancom/mbridge/msdk/reward/adapter/c$h;

    new-instance v13, Lccsancom/mbridge/msdk/reward/adapter/c$1;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p9

    move-object/from16 v4, p1

    move-object/from16 v5, p7

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p11

    invoke-direct/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/c$1;-><init>(Lccsancom/mbridge/msdk/reward/adapter/c;Ljava/util/List;Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V

    invoke-virtual {v12, v13}, Lccsancom/mbridge/msdk/reward/adapter/c$h;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ZLccsanandroid/os/Handler;ZZLccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/reward/adapter/c$j;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lccsanandroid/os/Handler;",
            "ZZ",
            "Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;",
            "Ljava/lang/String;",
            "I",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/d/c;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$j;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p6

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v12, p12

    move-object/from16 v11, p13

    monitor-enter p0

    .line 1095
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1096
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1099
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "start preload template "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v18

    move-object/from16 v1, p8

    move-object/from16 v4, p12

    move/from16 v5, p4

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    invoke-static/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1102
    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    .line 1103
    :goto_0
    :try_start_2
    new-instance v10, Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-direct {v10}, Lccsancom/mbridge/msdk/videocommon/a$a;-><init>()V

    .line 2081
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v0

    .line 1104
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Z)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1105
    if-nez v0, :cond_2

    .line 1107
    const/4 v1, 0x1

    :try_start_3
    new-instance v0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1132
    goto/16 :goto_3

    .line 1120
    :catchall_0
    move-exception v0

    .line 1121
    if-eqz p16, :cond_0

    .line 1122
    :try_start_4
    invoke-virtual {v10, v1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1123
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1125
    :try_start_5
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v18

    move-object/from16 v1, p8

    move-object/from16 v4, p12

    move/from16 v5, p4

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    invoke-static/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1128
    goto :goto_1

    .line 1126
    :catch_1
    move-exception v0

    .line 1129
    :goto_1
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p16

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    move-object/from16 v6, p6

    move-object v7, v10

    invoke-interface/range {v1 .. v7}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1131
    :cond_0
    monitor-exit p0

    return-void

    .line 1108
    :catch_2
    move-exception v0

    .line 1109
    if-eqz p16, :cond_1

    .line 1110
    :try_start_7
    invoke-virtual {v10, v1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1111
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1113
    :try_start_8
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebView exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v8, v0, v18

    move-object/from16 v1, p8

    move-object/from16 v4, p12

    move/from16 v5, p4

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    invoke-static/range {v1 .. v9}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1116
    goto :goto_2

    .line 1114
    :catch_3
    move-exception v0

    .line 1117
    :goto_2
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p16

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    move-object/from16 v6, p6

    move-object v7, v10

    invoke-interface/range {v1 .. v7}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1119
    :cond_1
    monitor-exit p0

    return-void

    .line 1135
    :cond_2
    :goto_3
    :try_start_a
    invoke-virtual {v10, v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 1137
    const/4 v1, 0x0

    if-eqz v14, :cond_3

    invoke-interface/range {p9 .. p9}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1138
    new-instance v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-direct {v2, v1, v13, v14}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    move-object v9, v2

    goto :goto_4

    .line 1140
    :cond_3
    new-instance v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    invoke-direct {v2, v1, v13}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    move-object v9, v2

    .line 1142
    :goto_4
    move/from16 v1, p7

    invoke-virtual {v9, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(I)V

    .line 1143
    invoke-virtual {v9, v12}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 1144
    move-object/from16 v1, p15

    invoke-virtual {v9, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 1145
    move/from16 v1, p1

    invoke-virtual {v9, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->d(Z)V

    .line 1146
    new-instance v8, Lccsancom/mbridge/msdk/reward/adapter/c$k;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const/4 v3, 0x0

    move-object v1, v8

    move-object/from16 v2, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p13

    move-object/from16 v7, p16

    move-object/from16 v20, v8

    move-object/from16 v8, p5

    move-object/from16 v21, v9

    move-object/from16 v9, p6

    move-object/from16 v16, v10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, v16

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-wide/from16 v15, v18

    :try_start_b
    invoke-direct/range {v1 .. v16}, Lccsancom/mbridge/msdk/reward/adapter/c$k;-><init>(Lccsanandroid/os/Handler;Ljava/lang/Runnable;ZZLjava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$j;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;J)V

    .line 1147
    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 1148
    move-object/from16 v2, v21

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 1149
    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1150
    move-object/from16 v5, p13

    :try_start_c
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setRid(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1158
    goto :goto_6

    .line 1151
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v5, p13

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v5, v11

    .line 1152
    :goto_5
    :try_start_d
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 1153
    const-string v1, "RewardCampaignsResourceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    :cond_4
    if-eqz p16, :cond_5

    .line 1156
    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v1, p16

    move-object/from16 v2, v17

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    move-object/from16 v5, p13

    move-object/from16 v6, p6

    invoke-interface/range {v1 .. v8}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1159
    :cond_5
    :goto_6
    monitor-exit p0

    return-void

    .line 1094
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ZLccsanandroid/os/Handler;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/reward/adapter/c$j;Z)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lccsanandroid/os/Handler;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/d/c;",
            "Lccsancom/mbridge/msdk/reward/adapter/c$j;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v15, p5

    move-object/from16 v14, p8

    move-object/from16 v13, p11

    move-object/from16 v12, p12

    move/from16 v11, p17

    monitor-enter p0

    .line 1448
    :try_start_0
    iput-boolean v11, v1, Lccsancom/mbridge/msdk/reward/adapter/c;->d:Z

    .line 1449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 1450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1451
    iput-boolean v11, v1, Lccsancom/mbridge/msdk/reward/adapter/c;->d:Z

    .line 1452
    invoke-static/range {p9 .. p9}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1453
    if-eqz p16, :cond_0

    .line 1454
    const/4 v0, 0x0

    move-object/from16 p10, p16

    move-object/from16 p11, v21

    move-object/from16 p12, p7

    move-object/from16 p13, p8

    move-object/from16 p14, p5

    move-object/from16 p15, p9

    move-object/from16 p16, v0

    invoke-interface/range {p10 .. p16}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1456
    :cond_0
    monitor-exit p0

    return-void

    .line 1460
    :cond_1
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    const-string v4, "start preload tpl"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v16, v5, v19

    move-object/from16 v2, p11

    move-object/from16 v5, p14

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-wide/from16 v9, v16

    invoke-static/range {v2 .. v10}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1463
    goto :goto_0

    .line 1461
    :catch_0
    move-exception v0

    .line 1464
    :goto_0
    :try_start_2
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/videocommon/a$a;-><init>()V

    .line 3081
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c$m;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v2

    .line 1465
    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Z)Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    move-result-object v2

    .line 1466
    if-nez v2, :cond_2

    .line 1467
    new-instance v2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;-><init>(Lccsanandroid/content/Context;)V

    move-object v10, v2

    goto :goto_1

    .line 1466
    :cond_2
    move-object v10, v2

    .line 1469
    :goto_1
    invoke-virtual {v0, v10}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 1470
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v9

    .line 1471
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/video/bt/a/c;->b()Ljava/lang/String;

    move-result-object v8

    .line 1472
    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Ljava/lang/String;)V

    .line 1474
    if-eqz v12, :cond_6

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1475
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v4

    invoke-virtual {v4, v14}, Lccsancom/mbridge/msdk/videocommon/download/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 1476
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1477
    const/4 v5, 0x0

    :goto_2
    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1478
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1479
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1480
    invoke-virtual/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1481
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReady(Z)V

    .line 1482
    invoke-interface {v12, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1484
    :cond_3
    const/4 v3, 0x1

    goto :goto_3

    .line 1477
    :cond_4
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x1

    goto :goto_2

    .line 1487
    :cond_5
    new-instance v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v13, v12}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V

    .line 1488
    move-object v7, v2

    goto :goto_4

    .line 1489
    :cond_6
    new-instance v2, Lccsancom/mbridge/msdk/video/signal/a/j;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v13}, Lccsancom/mbridge/msdk/video/signal/a/j;-><init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    move-object v7, v2

    .line 1491
    :goto_4
    move/from16 v6, p10

    invoke-virtual {v7, v6}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(I)V

    .line 1492
    move-object/from16 v2, p14

    invoke-virtual {v7, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;)V

    .line 1493
    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/video/signal/a/j;->c(Ljava/lang/String;)V

    .line 1494
    invoke-virtual {v7, v9}, Lccsancom/mbridge/msdk/video/signal/a/j;->d(Ljava/lang/String;)V

    .line 1495
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->c(Z)V

    .line 1496
    move-object/from16 v4, p15

    invoke-virtual {v7, v4}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 1497
    move/from16 v3, p1

    invoke-virtual {v7, v3}, Lccsancom/mbridge/msdk/video/signal/a/j;->d(Z)V

    .line 1498
    new-instance v2, Lccsancom/mbridge/msdk/reward/adapter/c$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v5, 0x0

    move-object/from16 p6, v2

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, p3

    move-object/from16 v22, v7

    move/from16 v7, p4

    move-object/from16 v23, v8

    move/from16 v8, p10

    move-object/from16 v24, v9

    move-object/from16 v9, p9

    move-object/from16 v25, v10

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p5

    move-object v13, v0

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move/from16 v18, p17

    :try_start_3
    invoke-direct/range {v2 .. v20}, Lccsancom/mbridge/msdk/reward/adapter/c$b;-><init>(ZLccsanandroid/os/Handler;Ljava/lang/Runnable;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Lccsancom/mbridge/msdk/videocommon/d/c;Lccsancom/mbridge/msdk/reward/adapter/c$j;ZJ)V

    .line 1499
    move-object/from16 v0, p6

    move-object/from16 v2, v25

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setWebViewListener(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V

    .line 1500
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 1501
    move-object/from16 v3, p13

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1502
    move-object/from16 v3, p5

    :try_start_4
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setRid(Ljava/lang/String;)V

    .line 1503
    new-instance v0, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 1504
    new-instance v4, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1505
    move-object/from16 v4, v24

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;->setInstanceId(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1506
    move-object/from16 v6, p8

    :try_start_5
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;->setUnitId(Ljava/lang/String;)V

    .line 1508
    new-instance v7, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 1509
    new-instance v8, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1510
    move-object/from16 v8, v23

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->setInstanceId(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v7, v6}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->setUnitId(Ljava/lang/String;)V

    .line 1512
    invoke-virtual {v7, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->setWebView(Lccsanandroid/webkit/WebView;)V

    .line 1513
    invoke-static {}, Lccsancom/mbridge/msdk/video/bt/a/c;->a()Lccsancom/mbridge/msdk/video/bt/a/c;

    move-result-object v2

    invoke-virtual {v2, v6, v3}, Lccsancom/mbridge/msdk/video/bt/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 1514
    invoke-virtual {v2, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    invoke-virtual {v2, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    new-instance v2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v7, v2}, Lccsancom/mbridge/msdk/video/bt/module/MBridgeBTRootLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1524
    goto :goto_7

    .line 1517
    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v3, p5

    :goto_5
    move-object/from16 v6, p8

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v6, v14

    move-object v3, v15

    .line 1518
    :goto_6
    if-eqz p16, :cond_7

    .line 1519
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object/from16 p10, p16

    move-object/from16 p11, v21

    move-object/from16 p12, p7

    move-object/from16 p13, p8

    move-object/from16 p14, p5

    move-object/from16 p15, p9

    move-object/from16 p16, v2

    move-object/from16 p17, v4

    invoke-interface/range {p10 .. p17}, Lccsancom/mbridge/msdk/reward/adapter/c$j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Ljava/lang/String;)V

    .line 1521
    :cond_7
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 1522
    const-string v2, "RewardCampaignsResourceManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1525
    :cond_8
    :goto_7
    monitor-exit p0

    return-void

    .line 1447
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1981
    :try_start_0
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1982
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    new-instance v1, Lccsancom/mbridge/msdk/reward/adapter/c$4;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/reward/adapter/c$4;-><init>(Lccsancom/mbridge/msdk/reward/adapter/c;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1989
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/adapter/c;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1991
    :goto_0
    monitor-exit p0

    return-void

    .line 1980
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
