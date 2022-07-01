.class public final Lccsancom/mbridge/msdk/videocommon/download/k;
.super Ljava/lang/Object;
.source "UnitCacheCtroller.java"


# instance fields
.field a:Lccsancom/mbridge/msdk/b/d;

.field b:Lccsancom/mbridge/msdk/b/d;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lccsancom/mbridge/msdk/videocommon/listener/a;

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/listener/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lccsancom/mbridge/msdk/videocommon/download/d;

.field private h:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Lccsanandroid/content/Context;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Lccsancom/mbridge/msdk/videocommon/d/c;

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    .line 39
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->d:Z

    .line 42
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/download/k$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/videocommon/download/k$1;-><init>(Lccsancom/mbridge/msdk/videocommon/download/k;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->g:Lccsancom/mbridge/msdk/videocommon/download/d;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->k:J

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I

    .line 64
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    .line 65
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    .line 66
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    .line 83
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->i:Lccsanandroid/content/Context;

    .line 85
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 86
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->j:Ljava/util/concurrent/ExecutorService;

    .line 89
    iput-object p4, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    .line 90
    iput p5, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    .line 91
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Ljava/util/List;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/util/List;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    .line 39
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->d:Z

    .line 42
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/download/k$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/videocommon/download/k$1;-><init>(Lccsancom/mbridge/msdk/videocommon/download/k;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->g:Lccsancom/mbridge/msdk/videocommon/download/d;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->k:J

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I

    .line 64
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    .line 65
    const/4 p1, 0x0

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    .line 66
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    .line 71
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->i:Lccsanandroid/content/Context;

    .line 73
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 74
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    :cond_0
    iput-object p3, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->j:Ljava/util/concurrent/ExecutorService;

    .line 77
    iput-object p4, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    .line 78
    iput p5, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    .line 79
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Ljava/util/List;)V

    .line 80
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/k;)Lccsancom/mbridge/msdk/videocommon/listener/a;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->e:Lccsancom/mbridge/msdk/videocommon/listener/a;

    return-object p0
.end method

.method private a(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z
    .locals 1

    .line 741
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 742
    return v0

    .line 744
    :cond_0
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result p1

    if-nez p1, :cond_1

    .line 745
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object p1

    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 746
    const/4 p1, 0x0

    return p1

    .line 749
    :cond_1
    return v0
.end method

.method public static a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z
    .locals 9

    .line 668
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->h()J

    move-result-wide v0

    .line 669
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->e()J

    move-result-wide v2

    .line 670
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 671
    return v5

    .line 673
    :cond_0
    const/4 v4, 0x0

    if-nez p1, :cond_1

    .line 674
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 675
    return v5

    .line 678
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_4

    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    int-to-long v6, p1

    mul-long v2, v2, v6

    cmp-long v6, v0, v2

    if-ltz v6, :cond_4

    .line 679
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    .line 680
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 681
    return v5

    .line 683
    :cond_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/download/a;->m()V

    .line 684
    return v4

    .line 687
    :cond_3
    return v5

    .line 690
    :cond_4
    return v4
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/videocommon/download/k;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->d:Z

    return p1
.end method

.method private a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 2

    .line 695
    :try_start_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->f(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 696
    return v1

    .line 698
    :cond_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 699
    return v1

    .line 701
    :cond_1
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 702
    return v1

    .line 707
    :cond_2
    goto :goto_0

    .line 705
    :catchall_0
    move-exception p1

    .line 706
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UnitCacheCtroller"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 708
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;>;)Z"
        }
    .end annotation

    .line 783
    nop

    .line 785
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 786
    if-nez v0, :cond_0

    .line 787
    goto :goto_0

    .line 789
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 790
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 792
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 793
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 794
    nop

    .line 795
    return v2

    .line 797
    :cond_1
    goto :goto_1

    .line 798
    :cond_2
    goto :goto_0

    .line 803
    :cond_3
    goto :goto_2

    .line 799
    :catchall_0
    move-exception p1

    .line 800
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 801
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 804
    :cond_4
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 2

    .line 486
    nop

    .line 487
    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 488
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 489
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v0

    goto :goto_0

    .line 491
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/k;->e(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    .line 494
    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/videocommon/download/k;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 121
    if-eqz p1, :cond_14

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    .line 124
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/videocommon/download/k;->e()V

    .line 125
    invoke-direct {p0}, Lccsancom/mbridge/msdk/videocommon/download/k;->d()V

    .line 126
    iget v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 145
    :sswitch_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/b/b;->f(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    .line 146
    if-nez v0, :cond_1

    .line 147
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    .line 149
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    if-eqz v0, :cond_a

    .line 150
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->k:J

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->k()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I

    goto/16 :goto_0

    .line 158
    :sswitch_1
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    .line 160
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    .line 161
    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/b/d;->e(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    .line 164
    :cond_2
    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->i()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->k:J

    .line 166
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->k()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_3
    goto/16 :goto_0

    .line 169
    :catch_0
    move-exception p1

    .line 170
    const-string p1, "UnitCacheCtroller"

    const-string v0, "make sure your had put feeds jar into your project"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 177
    :sswitch_2
    :try_start_1
    const-string v0, "com.mbridge.msdk.videocommon.d.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 178
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v0

    .line 179
    if-nez v0, :cond_4

    .line 180
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->c()Lccsancom/mbridge/msdk/videocommon/d/a;

    .line 182
    :cond_4
    if-eqz v0, :cond_5

    .line 183
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/a;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->k:J

    .line 185
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 186
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 188
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v0, :cond_7

    .line 189
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->u()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    :cond_7
    goto :goto_0

    .line 191
    :catch_1
    move-exception p1

    .line 192
    const-string p1, "UnitCacheCtroller"

    const-string v0, "make sure your had put reward jar into your project"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void

    .line 129
    :sswitch_3
    :try_start_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 130
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    .line 131
    if-nez v0, :cond_8

    .line 132
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    .line 134
    :cond_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    if-eqz v0, :cond_9

    .line 135
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->k:J

    .line 136
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->k()I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 142
    :cond_9
    goto :goto_0

    .line 139
    :catch_2
    move-exception p1

    .line 140
    const-string p1, "UnitCacheCtroller"

    const-string v0, "make sure your had put native video jar into your project"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 199
    :cond_a
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_12

    .line 200
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 201
    if-eqz v2, :cond_11

    .line 203
    iget v3, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    const/16 v4, 0x5e

    if-eq v3, v4, :cond_c

    const/16 v4, 0x11f

    if-ne v3, v4, :cond_b

    goto :goto_2

    .line 206
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 204
    :cond_c
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 208
    :goto_3
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/videocommon/download/k;->c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 209
    goto :goto_7

    .line 211
    :cond_d
    iget-object v4, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_11

    .line 212
    monitor-enter v4

    .line 214
    nop

    .line 215
    const/4 v5, 0x0

    :goto_4
    :try_start_3
    iget-object v6, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_f

    .line 216
    iget-object v6, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 217
    if-eqz v6, :cond_e

    .line 218
    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 219
    nop

    .line 220
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 221
    invoke-virtual {v7, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 222
    iget v8, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(I)V

    .line 223
    invoke-virtual {v7, v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Z)V

    .line 224
    invoke-interface {v6, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-interface {v6, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v7, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 227
    const/4 v5, 0x1

    goto :goto_5

    .line 215
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    .line 231
    :goto_5
    if-nez v5, :cond_10

    .line 232
    new-instance v5, Lccsancom/mbridge/msdk/videocommon/download/a;

    iget-object v6, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->i:Lccsanandroid/content/Context;

    iget-object v7, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    iget v8, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I

    invoke-direct {v5, v6, v2, v7, v8}, Lccsancom/mbridge/msdk/videocommon/download/a;-><init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)V

    .line 233
    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I

    invoke-virtual {v5, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(I)V

    .line 234
    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    invoke-virtual {v5, v2}, Lccsancom/mbridge/msdk/videocommon/download/a;->d(I)V

    .line 235
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 236
    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v3, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    :cond_10
    goto :goto_6

    .line 239
    :catchall_0
    move-exception v2

    .line 242
    :goto_6
    :try_start_4
    monitor-exit v4

    goto :goto_7

    :catchall_1
    move-exception p1

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 199
    :cond_11
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 246
    :cond_12
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    .line 247
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 249
    :cond_13
    return-void

    .line 122
    :cond_14
    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x5e -> :sswitch_2
        0x5f -> :sswitch_1
        0x11f -> :sswitch_2
        0x12a -> :sswitch_0
    .end sparse-switch
.end method

.method private b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 2

    .line 712
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 717
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/videocommon/download/k;->c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 718
    return v1

    .line 721
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 722
    return v1

    .line 11031
    :cond_2
    sget-object p2, Lccsancom/mbridge/msdk/videocommon/download/h$a;->a:Lccsancom/mbridge/msdk/videocommon/download/h;

    .line 724
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/videocommon/download/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 725
    return v1

    .line 727
    :cond_3
    const/4 p1, 0x0

    return p1

    .line 713
    :cond_4
    :goto_0
    return v1
.end method

.method private c(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 1

    .line 1081
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1082
    const/4 p1, 0x1

    return p1

    .line 1084
    :catchall_0
    move-exception p1

    .line 1085
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1086
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1088
    :cond_0
    nop

    .line 1089
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private d(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 1

    .line 1093
    nop

    .line 1095
    const/16 p1, 0x64

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    if-eqz v0, :cond_0

    .line 1096
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->f()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :cond_0
    goto :goto_0

    .line 1098
    :catch_0
    move-exception v0

    .line 1101
    :goto_0
    return p1
.end method

.method private d()V
    .locals 13

    .line 253
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 255
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 256
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 258
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 260
    iget-object v4, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 262
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 263
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 265
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 266
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 267
    if-nez v6, :cond_0

    .line 268
    goto :goto_1

    .line 270
    :cond_0
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->c()J

    move-result-wide v7

    .line 271
    sub-long v7, v1, v7

    iget-wide v9, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->k:J

    const-wide/16 v11, 0x3e8

    mul-long v9, v9, v11

    const/4 v11, 0x1

    cmp-long v12, v7, v9

    if-lez v12, :cond_1

    .line 272
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 273
    const-string v7, "download timeout"

    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    .line 274
    iget v7, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I

    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(I)V

    .line 275
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->m()V

    .line 276
    iget-object v7, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v3, v3, -0x1

    .line 280
    :cond_1
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v7

    if-eq v7, v11, :cond_2

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v7

    if-eqz v7, :cond_2

    .line 281
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->m()V

    .line 282
    iget-object v6, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 283
    add-int/lit8 v3, v3, -0x1

    .line 285
    :cond_2
    goto :goto_1

    .line 258
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    :cond_4
    monitor-exit v0

    .line 290
    goto :goto_2

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    :catchall_1
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 292
    :cond_5
    :goto_2
    return-void
.end method

.method private e(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I
    .locals 3

    .line 1126
    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v0

    const/16 v1, 0x12a

    if-ne v0, v1, :cond_1

    .line 1127
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    if-nez p1, :cond_0

    .line 1128
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/b/b;->c(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    .line 1130
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/d;->f()I

    move-result p1

    return p1

    .line 1131
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p1

    const/16 v0, 0x2a

    if-ne p1, v0, :cond_2

    .line 1132
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/k;->d(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result p1

    return p1

    .line 1134
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-nez p1, :cond_3

    .line 1135
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object p1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 1137
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/d/c;->p()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 1139
    :catchall_0
    move-exception p1

    .line 1140
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnitCacheCtroller"

    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1142
    const/16 p1, 0x64

    return p1
.end method

.method private e()V
    .locals 6

    .line 297
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 299
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 300
    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 301
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 302
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 303
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 304
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 306
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v5

    if-nez v5, :cond_1

    .line 307
    goto :goto_1

    .line 309
    :cond_1
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/download/a;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 310
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/download/a;->l()V

    .line 311
    iget-object v4, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v1, v1, -0x1

    .line 313
    goto :goto_1

    .line 315
    :cond_2
    goto :goto_1

    .line 300
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_4
    monitor-exit v0

    .line 320
    goto :goto_2

    .line 317
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 318
    :catchall_1
    move-exception v0

    .line 319
    const-string v0, "UnitCacheCtroller"

    const-string v1, "cleanDisplayTask ERROR"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public final a(IZ)Lccsancom/mbridge/msdk/videocommon/download/a;
    .locals 24

    .line 498
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    iget-object v3, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    .line 499
    monitor-enter v3

    .line 502
    :try_start_0
    iget v5, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    const/16 v6, 0x11f

    const/16 v7, 0x5e

    const/4 v8, 0x1

    if-eq v5, v7, :cond_1

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v5

    iget-object v9, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    if-nez v5, :cond_5

    .line 518
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v4

    .line 503
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v5

    iget-object v9, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {v5, v9, v8, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v5

    .line 504
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_4

    .line 505
    :cond_2
    if-eq v0, v7, :cond_3

    if-ne v0, v6, :cond_4

    .line 506
    :cond_3
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v5

    iget-object v9, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    .line 6335
    const-string v10, ""

    invoke-virtual {v5, v9, v8, v2, v10}, Lccsancom/mbridge/msdk/videocommon/a/a;->c(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 506
    nop

    .line 509
    :cond_4
    if-eqz v5, :cond_28

    .line 510
    const-string v9, "UnitCacheCtroller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UnitCache isReady campaignList = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 523
    const/4 v12, 0x0

    :goto_1
    iget-object v13, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_27

    .line 524
    iget-object v13, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v13, v12}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 525
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 526
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_26

    .line 527
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 528
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 529
    if-eqz v15, :cond_25

    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v16

    if-nez v16, :cond_6

    .line 530
    move v6, v12

    const/4 v0, 0x1

    const/16 v11, 0x11f

    goto/16 :goto_9

    .line 533
    :cond_6
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v8

    .line 534
    nop

    .line 537
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/16 v18, 0x0

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 538
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 539
    const/16 v18, 0x1

    .line 541
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 543
    :cond_8
    if-nez v18, :cond_9

    .line 544
    move v6, v12

    const/4 v0, 0x1

    const/16 v11, 0x11f

    goto/16 :goto_9

    .line 547
    :cond_9
    if-eqz v2, :cond_b

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v6, v12

    const/4 v0, 0x1

    const/16 v11, 0x11f

    goto/16 :goto_9

    :cond_b
    :goto_4
    if-nez v2, :cond_c

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 548
    move v6, v12

    const/4 v0, 0x1

    const/16 v11, 0x11f

    goto/16 :goto_9

    .line 550
    :cond_c
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    .line 551
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v11

    .line 552
    const-string v17, ""

    .line 553
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 554
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v21, v17

    goto :goto_5

    .line 556
    :cond_d
    move-object/from16 v21, v17

    :goto_5
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 558
    iget v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    if-eq v6, v7, :cond_e

    const/16 v7, 0x11f

    if-ne v0, v7, :cond_12

    .line 559
    :cond_e
    move-object/from16 v7, v21

    invoke-direct {v1, v6, v8, v7}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 560
    move v6, v12

    const/4 v0, 0x1

    const/16 v7, 0x5e

    const/16 v11, 0x11f

    goto/16 :goto_9

    .line 564
    :cond_f
    invoke-direct {v1, v4, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 565
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->b()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 566
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->l()V

    .line 567
    move v6, v12

    const/4 v0, 0x1

    const/16 v7, 0x5e

    const/16 v11, 0x11f

    goto/16 :goto_9

    .line 569
    :cond_10
    invoke-static {v11}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_11

    .line 570
    nop

    .line 6753
    nop

    .line 570
    nop

    .line 571
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v15

    .line 575
    :cond_11
    :try_start_4
    invoke-direct {v1, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v6

    invoke-static {v15, v6}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_12

    .line 7753
    nop

    .line 575
    nop

    .line 576
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v15

    .line 583
    :cond_12
    :try_start_6
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 584
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v7

    .line 586
    iget v11, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    const/16 v0, 0x12a

    if-ne v11, v0, :cond_13

    .line 587
    invoke-direct {v1, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v0

    invoke-static {v15, v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_13

    .line 588
    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-object v15

    .line 591
    :cond_13
    const/4 v0, 0x5

    const/16 v11, 0x5f

    if-ne v7, v0, :cond_18

    .line 593
    :try_start_8
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 594
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->l()V

    .line 595
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v12, v12, -0x1

    .line 597
    move/from16 v0, p1

    const/4 v4, 0x0

    const/16 v6, 0x11f

    const/16 v7, 0x5e

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 599
    :cond_14
    if-nez v6, :cond_16

    .line 600
    const/4 v0, 0x0

    invoke-virtual {v15, v0, v0}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(II)V

    .line 601
    iget v4, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-ne v4, v11, :cond_15

    .line 602
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-object v15

    .line 601
    :cond_15
    move v6, v12

    const/4 v0, 0x1

    const/16 v7, 0x5e

    const/16 v11, 0x11f

    goto/16 :goto_9

    .line 606
    :cond_16
    :try_start_a
    invoke-direct {v1, v4, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v0, :cond_17

    .line 8753
    nop

    .line 606
    nop

    .line 607
    :try_start_b
    monitor-exit v3

    return-object v15

    .line 609
    :cond_17
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v2, 0x0

    return-object v2

    .line 611
    :cond_18
    const/4 v0, 0x0

    :try_start_c
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->c()J

    move-result-wide v20

    .line 612
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v6

    const/4 v0, 0x1

    if-ne v6, v0, :cond_1a

    .line 614
    sub-long v20, v9, v20

    move v6, v12

    iget-wide v11, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->k:J

    const-wide/16 v22, 0x3e8

    mul-long v11, v11, v22

    cmp-long v22, v20, v11

    if-lez v22, :cond_1b

    .line 615
    const-string v11, "download timeout"

    invoke-virtual {v15, v11}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->m()V

    .line 617
    iget-object v11, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v11, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 618
    add-int/lit8 v12, v6, -0x1

    .line 619
    iget v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    const/4 v11, 0x1

    if-eq v6, v11, :cond_19

    const/16 v11, 0x5e

    if-ne v6, v11, :cond_1c

    .line 526
    :cond_19
    move/from16 v0, p1

    const/4 v4, 0x0

    const/16 v6, 0x11f

    const/16 v7, 0x5e

    goto/16 :goto_b

    .line 612
    :cond_1a
    move v6, v12

    .line 626
    :cond_1b
    move v12, v6

    :cond_1c
    iget v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    const/16 v0, 0x5f

    if-ne v6, v0, :cond_1e

    .line 627
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 628
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->l()V

    .line 629
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 630
    add-int/lit8 v12, v12, -0x1

    .line 631
    move/from16 v0, p1

    const/4 v4, 0x0

    const/16 v6, 0x11f

    const/16 v7, 0x5e

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 633
    :cond_1d
    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    return-object v15

    .line 635
    :cond_1e
    const/4 v0, 0x4

    if-eq v7, v0, :cond_24

    const/4 v0, 0x2

    if-ne v7, v0, :cond_1f

    const/4 v0, 0x1

    const/16 v7, 0x5e

    const/16 v11, 0x11f

    goto :goto_8

    .line 642
    :cond_1f
    const/4 v0, 0x1

    if-ne v7, v0, :cond_21

    .line 643
    :try_start_e
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->b()Z

    move-result v6

    if-eqz v6, :cond_20

    .line 644
    const/16 v7, 0x5e

    const/16 v11, 0x11f

    goto :goto_7

    .line 646
    :cond_20
    sget-boolean v6, Lccsancom/mbridge/msdk/MBridgeConstans;->IS_DOWANLOAD_FINSH_PLAY:Z

    if-nez v6, :cond_21

    .line 647
    invoke-direct {v1, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v6

    invoke-static {v15, v6}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-direct {v1, v4, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v6, :cond_21

    .line 9753
    nop

    .line 647
    nop

    .line 648
    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    return-object v15

    .line 652
    :cond_21
    :try_start_10
    iget v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    const/16 v7, 0x5e

    if-eq v6, v7, :cond_22

    const/16 v11, 0x11f

    if-ne v6, v11, :cond_23

    goto :goto_6

    :cond_22
    const/16 v11, 0x11f

    .line 653
    :goto_6
    invoke-direct {v1, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v6

    invoke-static {v15, v6}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-direct {v1, v4, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v4
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-eqz v4, :cond_23

    .line 10753
    nop

    .line 653
    nop

    .line 654
    :try_start_11
    monitor-exit v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    return-object v15

    .line 657
    :cond_23
    nop

    .line 526
    :goto_7
    move/from16 v0, p1

    goto :goto_a

    .line 635
    :cond_24
    const/4 v0, 0x1

    const/16 v7, 0x5e

    const/16 v11, 0x11f

    .line 636
    :goto_8
    :try_start_12
    iget-object v4, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 637
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/videocommon/download/a;->m()V

    .line 638
    add-int/lit8 v12, v12, -0x1

    .line 639
    move/from16 v0, p1

    const/4 v4, 0x0

    const/16 v6, 0x11f

    const/4 v8, 0x1

    goto/16 :goto_2

    .line 529
    :cond_25
    move v6, v12

    const/4 v0, 0x1

    const/16 v11, 0x11f

    .line 526
    :goto_9
    move/from16 v0, p1

    move v12, v6

    :goto_a
    const/4 v4, 0x0

    const/16 v6, 0x11f

    :goto_b
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 523
    :cond_26
    move v6, v12

    const/4 v0, 0x1

    const/16 v11, 0x11f

    add-int/lit8 v12, v6, 0x1

    move/from16 v0, p1

    const/4 v4, 0x0

    const/16 v6, 0x11f

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 661
    :cond_27
    goto :goto_c

    .line 512
    :cond_28
    const-string v0, "UnitCacheCtroller"

    const-string v2, "UnitCache isReady campaignList = 0"

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 513
    :try_start_13
    monitor-exit v3

    const/4 v2, 0x0

    return-object v2

    .line 662
    :catchall_0
    move-exception v0

    goto :goto_d

    .line 659
    :catch_0
    move-exception v0

    .line 660
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 662
    :goto_c
    monitor-exit v3

    goto :goto_e

    :goto_d
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    throw v0

    .line 664
    :cond_29
    :goto_e
    const/4 v2, 0x0

    return-object v2
.end method

.method public final a(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/download/a;
    .locals 4

    .line 766
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    .line 767
    monitor-enter v0

    .line 769
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 770
    if-eqz v2, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 771
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/videocommon/download/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    .line 773
    :cond_0
    goto :goto_0

    .line 776
    :cond_1
    goto :goto_1

    .line 774
    :catchall_0
    move-exception p1

    .line 775
    const-string p1, "UnitCacheCtroller"

    const-string v1, "failed to get campaignTast by cid"

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 779
    :cond_2
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;IZLjava/util/List;)Ljava/util/List;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;"
        }
    .end annotation

    .line 343
    move-object/from16 v1, p0

    move/from16 v0, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    iget-object v3, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v3, :cond_1e

    .line 346
    monitor-enter v3

    .line 348
    nop

    .line 349
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 350
    const/4 v7, 0x0

    :goto_0
    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_1d

    .line 351
    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 352
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 353
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 354
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 355
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 356
    if-eqz v10, :cond_1a

    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v11

    if-nez v11, :cond_0

    .line 357
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 360
    :cond_0
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v11

    .line 361
    nop

    .line 364
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v13, 0x0

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 365
    if-eqz v11, :cond_1

    if-eqz v14, :cond_1

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 366
    const/4 v13, 0x1

    .line 368
    :cond_1
    goto :goto_2

    .line 370
    :cond_2
    if-nez v13, :cond_3

    .line 371
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 374
    :cond_3
    if-eqz p3, :cond_5

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    move-wide/from16 v19, v4

    goto/16 :goto_5

    :cond_5
    :goto_3
    if-nez p3, :cond_6

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 375
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 378
    :cond_6
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v6

    .line 379
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v12

    .line 380
    const-string v13, ""

    .line 381
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 382
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v13

    invoke-virtual {v13}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v13

    .line 384
    :cond_7
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    .line 386
    const/16 v14, 0x11f

    const/16 v15, 0x5e

    if-eq v0, v15, :cond_8

    if-ne v0, v14, :cond_c

    .line 388
    :cond_8
    invoke-direct {v1, v0, v11, v13}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 389
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 392
    :cond_9
    invoke-direct {v1, v6, v11}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 393
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->b()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 394
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->l()V

    .line 395
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 397
    :cond_a
    invoke-static {v12}, Lccsancom/mbridge/msdk/foundation/tools/x;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 398
    nop

    .line 1753
    nop

    .line 398
    nop

    .line 399
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 404
    :cond_b
    invoke-direct {v1, v11}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v12

    invoke-static {v10, v12}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2753
    nop

    .line 404
    nop

    .line 405
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 413
    :cond_c
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->k()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    .line 414
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v13

    .line 415
    const/4 v14, 0x5

    if-ne v13, v14, :cond_11

    .line 417
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->b()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 418
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->l()V

    .line 419
    iget-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v7, v7, -0x1

    .line 421
    goto/16 :goto_1

    .line 423
    :cond_d
    if-nez v12, :cond_f

    .line 424
    const/4 v12, 0x0

    invoke-virtual {v10, v12, v12}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(II)V

    .line 425
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_e

    .line 426
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 425
    :cond_e
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 431
    :cond_f
    const/4 v12, 0x0

    invoke-direct {v1, v6, v11}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3753
    nop

    .line 431
    nop

    .line 432
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    move-wide/from16 v19, v4

    goto/16 :goto_5

    .line 435
    :cond_10
    const/4 v0, 0x0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 437
    :cond_11
    const/4 v12, 0x0

    :try_start_2
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->c()J

    move-result-wide v17

    .line 438
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v14

    const/4 v12, 0x1

    if-ne v14, v12, :cond_12

    .line 439
    sub-long v17, v4, v17

    move-wide/from16 v19, v4

    iget-wide v4, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->k:J

    const-wide/16 v21, 0x3e8

    mul-long v4, v4, v21

    cmp-long v12, v17, v4

    if-lez v12, :cond_13

    .line 440
    const-string v4, "download timeout"

    invoke-virtual {v10, v4}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->m()V

    .line 442
    iget-object v4, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v7, v7, -0x1

    .line 444
    const/4 v4, 0x1

    if-eq v0, v4, :cond_1b

    if-ne v0, v15, :cond_13

    .line 445
    goto :goto_5

    .line 438
    :cond_12
    move-wide/from16 v19, v4

    .line 451
    :cond_13
    const/4 v4, 0x4

    if-eq v13, v4, :cond_19

    const/4 v4, 0x2

    if-ne v13, v4, :cond_14

    goto :goto_4

    .line 458
    :cond_14
    const/4 v4, 0x1

    if-ne v13, v4, :cond_16

    .line 459
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->b()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 460
    goto :goto_5

    .line 462
    :cond_15
    sget-boolean v4, Lccsancom/mbridge/msdk/MBridgeConstans;->IS_DOWANLOAD_FINSH_PLAY:Z

    if-nez v4, :cond_16

    .line 463
    invoke-direct {v1, v11}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v4

    invoke-static {v10, v4}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-direct {v1, v6, v11}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4753
    nop

    .line 463
    nop

    .line 464
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    goto :goto_5

    .line 469
    :cond_16
    if-eq v0, v15, :cond_17

    const/16 v4, 0x11f

    if-ne v0, v4, :cond_18

    .line 470
    :cond_17
    invoke-direct {v1, v11}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v4

    invoke-static {v10, v4}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-direct {v1, v6, v11}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 5753
    nop

    .line 470
    nop

    .line 471
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    goto :goto_5

    .line 475
    :cond_18
    goto :goto_5

    .line 452
    :cond_19
    :goto_4
    iget-object v4, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->m()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 454
    add-int/lit8 v7, v7, -0x1

    .line 455
    move-wide/from16 v4, v19

    goto/16 :goto_1

    .line 356
    :cond_1a
    move-wide/from16 v19, v4

    .line 353
    :cond_1b
    :goto_5
    move-wide/from16 v4, v19

    goto/16 :goto_1

    .line 350
    :cond_1c
    move-wide/from16 v19, v4

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 479
    :cond_1d
    goto :goto_6

    .line 480
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 477
    :catch_0
    move-exception v0

    .line 478
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 480
    :goto_6
    monitor-exit v3

    goto :goto_8

    :goto_7
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 482
    :cond_1e
    :goto_8
    return-object v2
.end method

.method public final a()V
    .locals 16

    .line 808
    move-object/from16 v1, p0

    .line 810
    invoke-direct/range {p0 .. p0}, Lccsancom/mbridge/msdk/videocommon/download/k;->d()V

    .line 812
    iget-object v2, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v2, :cond_1e

    .line 813
    monitor-enter v2

    .line 814
    :try_start_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Ljava/util/concurrent/CopyOnWriteArrayList;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 815
    iput-boolean v3, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->d:Z

    .line 818
    :cond_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 819
    if-nez v4, :cond_1

    .line 820
    goto :goto_0

    .line 823
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 824
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 825
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 826
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 827
    if-nez v5, :cond_3

    .line 828
    goto :goto_1

    .line 830
    :cond_3
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/videocommon/download/a;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 831
    goto :goto_1

    .line 833
    :cond_4
    iget v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_5

    .line 834
    iput-boolean v3, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->d:Z

    .line 836
    :cond_5
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v6

    .line 837
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/videocommon/download/a;->g()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v8

    .line 838
    if-eqz v8, :cond_6

    if-nez v6, :cond_6

    .line 839
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v6

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lccsancom/mbridge/msdk/videocommon/download/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 842
    :cond_6
    new-instance v9, Lccsancom/mbridge/msdk/videocommon/download/k$2;

    invoke-direct {v9, v1, v8}, Lccsancom/mbridge/msdk/videocommon/download/k$2;-><init>(Lccsancom/mbridge/msdk/videocommon/download/k;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    invoke-virtual {v5, v9}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/listener/a;)V

    .line 873
    invoke-direct {v1, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v9

    .line 874
    iget v10, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    if-ne v10, v3, :cond_8

    .line 875
    iget-object v9, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    if-nez v9, :cond_7

    .line 876
    iget-object v9, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-static {v9}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v9

    iput-object v9, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    .line 878
    :cond_7
    invoke-direct {v1, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->d(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v9

    .line 880
    :cond_8
    invoke-virtual {v5, v9}, Lccsancom/mbridge/msdk/videocommon/download/a;->c(I)V

    .line 882
    nop

    .line 883
    iget v10, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    const/16 v11, 0x5e

    const/16 v12, 0x11f

    const/16 v13, 0x12a

    if-eq v10, v11, :cond_d

    if-eq v10, v12, :cond_d

    if-ne v10, v7, :cond_9

    goto :goto_3

    .line 891
    :cond_9
    if-ne v10, v13, :cond_b

    .line 892
    iget-object v10, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    if-nez v10, :cond_a

    .line 893
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v10

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lccsancom/mbridge/msdk/b/b;->c(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v10

    iput-object v10, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    .line 895
    :cond_a
    iget-object v10, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->b:Lccsancom/mbridge/msdk/b/d;

    if-eqz v10, :cond_b

    .line 896
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/b/d;->g()I

    move-result v10

    goto :goto_2

    .line 900
    :cond_b
    const/4 v10, 0x0

    :goto_2
    iget v11, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    if-ne v11, v3, :cond_11

    .line 901
    iget-object v11, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    if-nez v11, :cond_c

    .line 902
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v11

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v12

    invoke-virtual {v12}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v12

    iget-object v15, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    invoke-virtual {v11, v12, v15}, Lccsancom/mbridge/msdk/b/b;->c(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v11

    iput-object v11, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    .line 904
    :cond_c
    iget-object v11, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->a:Lccsancom/mbridge/msdk/b/d;

    if-eqz v11, :cond_11

    .line 905
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/b/d;->g()I

    move-result v10

    goto :goto_5

    .line 884
    :cond_d
    :goto_3
    iget-object v10, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-nez v10, :cond_f

    .line 885
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v10

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v11

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v11

    iget-object v15, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->l:Ljava/lang/String;

    iget v14, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    if-ne v14, v12, :cond_e

    const/4 v12, 0x1

    goto :goto_4

    :cond_e
    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v10, v11, v15, v12}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v10

    iput-object v10, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 887
    :cond_f
    iget-object v10, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->m:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v10, :cond_10

    .line 888
    invoke-virtual {v10}, Lccsancom/mbridge/msdk/videocommon/d/c;->q()I

    move-result v10

    goto :goto_5

    .line 887
    :cond_10
    const/4 v10, 0x0

    .line 909
    :cond_11
    :goto_5
    invoke-virtual {v5, v10}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(I)V

    .line 910
    const-string v11, "UnitCacheCtroller"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ready_rate : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " cd_rate : "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-direct {v1, v8}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)I

    move-result v10

    invoke-static {v5, v10}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 913
    iget-object v5, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->e:Lccsancom/mbridge/msdk/videocommon/listener/a;

    if-eqz v5, :cond_13

    iget v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    const/16 v7, 0x129

    if-eq v6, v7, :cond_12

    if-ne v6, v13, :cond_13

    .line 914
    :cond_12
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 917
    :cond_13
    iget-object v5, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 918
    iget-object v5, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/videocommon/listener/a;

    .line 919
    if-eqz v5, :cond_14

    if-eqz v8, :cond_14

    .line 920
    invoke-virtual {v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 922
    :cond_14
    goto/16 :goto_1

    .line 926
    :cond_15
    if-eq v6, v3, :cond_1b

    const/4 v8, 0x5

    if-eq v6, v8, :cond_1b

    const/4 v8, 0x4

    if-eq v6, v8, :cond_1b

    .line 927
    iget-object v8, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->i:Lccsanandroid/content/Context;

    invoke-static {v8}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v8

    .line 928
    const/16 v10, 0x9

    const/4 v11, 0x2

    if-eq v8, v10, :cond_16

    iget v8, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->n:I

    if-ne v8, v11, :cond_16

    .line 929
    monitor-exit v2

    return-void

    .line 932
    :cond_16
    if-eq v6, v11, :cond_17

    iget-boolean v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->d:Z

    if-nez v6, :cond_17

    .line 933
    goto/16 :goto_1

    .line 935
    :cond_17
    iget-object v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->g:Lccsancom/mbridge/msdk/videocommon/download/d;

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/videocommon/download/a;->a(Lccsancom/mbridge/msdk/videocommon/download/d;)V

    .line 937
    invoke-static {v5, v9}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/a;I)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 938
    goto/16 :goto_1

    .line 940
    :cond_18
    iget v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->o:I

    if-eq v6, v3, :cond_19

    if-eq v6, v7, :cond_19

    if-ne v6, v13, :cond_1a

    .line 941
    :cond_19
    const/4 v6, 0x0

    iput-boolean v6, v1, Lccsancom/mbridge/msdk/videocommon/download/k;->d:Z

    .line 943
    :cond_1a
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/videocommon/download/a;->i()V

    .line 946
    :cond_1b
    goto/16 :goto_1

    .line 947
    :cond_1c
    goto/16 :goto_0

    .line 948
    :cond_1d
    monitor-exit v2

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 950
    :cond_1e
    :goto_6
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 114
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Ljava/util/List;)V

    .line 117
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/videocommon/listener/a;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->e:Lccsancom/mbridge/msdk/videocommon/listener/a;

    .line 96
    return-void
.end method

.method public final a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/listener/a;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 102
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 107
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->c:Ljava/util/List;

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Ljava/util/List;)V

    .line 110
    return-void
.end method

.method public final b(IZ)Lccsancom/mbridge/msdk/videocommon/download/a;
    .locals 1

    .line 758
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(IZ)Lccsancom/mbridge/msdk/videocommon/download/a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 759
    :catchall_0
    move-exception p1

    .line 760
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UnitCacheCtroller"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b()V
    .locals 7

    .line 993
    nop

    .line 994
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_5

    .line 997
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 998
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 999
    if-nez v2, :cond_0

    .line 1000
    goto :goto_0

    .line 1002
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1003
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1004
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1005
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/videocommon/download/a;

    .line 1006
    if-nez v4, :cond_1

    .line 1007
    goto :goto_1

    .line 1009
    :cond_1
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/download/a;->f()I

    move-result v5

    .line 1010
    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1012
    const-string v1, "playing and stop download"

    invoke-virtual {v4, v1}, Lccsancom/mbridge/msdk/videocommon/download/a;->b(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/download/a;->m()V

    .line 1014
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1015
    monitor-exit v0

    return-void

    .line 1017
    :cond_2
    goto :goto_1

    .line 1018
    :cond_3
    goto :goto_0

    .line 1019
    :cond_4
    monitor-exit v0

    .line 1022
    goto :goto_2

    .line 1019
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1020
    :catchall_1
    move-exception v0

    .line 1024
    :cond_5
    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1106
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    :try_start_1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1108
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1109
    if-eqz v2, :cond_1

    .line 1110
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1111
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1112
    iget-object v4, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 1114
    :cond_0
    goto :goto_1

    .line 1116
    :cond_1
    goto :goto_0

    .line 1118
    :cond_2
    monitor-exit v0

    .line 1121
    goto :goto_2

    .line 1118
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1119
    :catch_0
    move-exception p1

    .line 1122
    :goto_2
    return-void
.end method

.method public final c()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/download/a;",
            ">;>;"
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method
