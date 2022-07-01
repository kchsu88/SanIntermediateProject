.class public Lccsancom/mbridge/msdk/reward/a/a;
.super Ljava/lang/Object;
.source "RewardVideoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/reward/a/a$b;,
        Lccsancom/mbridge/msdk/reward/a/a$a;,
        Lccsancom/mbridge/msdk/reward/a/a$c;,
        Lccsancom/mbridge/msdk/reward/a/a$d;
    }
.end annotation


# static fields
.field private static I:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static J:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Ljava/lang/String;

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/reward/a/a$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private H:Z

.field private K:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/lang/String;

.field private M:Lccsancom/mbridge/msdk/foundation/db/f;

.field private volatile N:Z

.field private volatile O:Z

.field private volatile P:Z

.field private volatile Q:Z

.field private volatile R:Z

.field private volatile S:Z

.field private volatile T:Z

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field volatile c:Z

.field volatile d:Z

.field volatile e:Z

.field volatile f:Z

.field volatile g:Z

.field private h:Lccsanandroid/content/Context;

.field private i:I

.field private j:Lccsancom/mbridge/msdk/reward/adapter/d;

.field private k:Lccsancom/mbridge/msdk/videocommon/d/c;

.field private l:Lccsancom/mbridge/msdk/videocommon/d/a;

.field private volatile m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

.field private volatile n:Lccsancom/mbridge/msdk/reward/a/a$c;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lccsancom/mbridge/msdk/out/MBridgeIds;

.field private r:Ljava/lang/String;

.field private volatile s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Lccsanandroid/os/Handler;

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/reward/a/a;->I:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/reward/a/a;->J:Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/reward/a/a;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->u:I

    .line 80
    const/4 v1, 0x2

    iput v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->w:I

    .line 91
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    .line 92
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    .line 94
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->C:Z

    .line 95
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->D:Z

    .line 98
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->F:Z

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->G:Ljava/util/ArrayList;

    .line 109
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->H:Z

    .line 707
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->M:Lccsancom/mbridge/msdk/foundation/db/f;

    .line 785
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->N:Z

    .line 786
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->O:Z

    .line 913
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->P:Z

    .line 914
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->Q:Z

    .line 915
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->R:Z

    .line 916
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->S:Z

    .line 917
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->T:Z

    .line 997
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->c:Z

    .line 998
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->d:Z

    .line 999
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->e:Z

    .line 1000
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    .line 1001
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->g:Z

    .line 261
    new-instance v0, Lccsancom/mbridge/msdk/reward/a/a$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/reward/a/a$1;-><init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->v:Lccsanandroid/os/Handler;

    .line 477
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 185
    :try_start_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/reward/a/a;->I:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lccsancom/mbridge/msdk/reward/a/a;->I:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 188
    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 194
    :cond_0
    goto :goto_0

    .line 192
    :catch_0
    move-exception p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    return-object p0
.end method

.method private a(IIZLjava/lang/String;)V
    .locals 10

    .line 1637
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1638
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 1639
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Z)V

    .line 1640
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Z)V

    .line 1642
    :cond_1
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-eqz v0, :cond_2

    .line 1643
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->x:I

    iget v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->y:I

    iget v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->z:I

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(III)V

    .line 1645
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->w:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(I)V

    .line 1646
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 1647
    new-instance v0, Lccsancom/mbridge/msdk/reward/a/a$a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {v0, p0, v1, p1, p3}, Lccsancom/mbridge/msdk/reward/a/a$a;-><init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/reward/adapter/a;IZ)V

    .line 1648
    new-instance v1, Lccsancom/mbridge/msdk/reward/a/a$b;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {v1, p0, v2, p3}, Lccsancom/mbridge/msdk/reward/a/a$b;-><init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/reward/adapter/a;Z)V

    .line 1650
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/reward/a/a$b;->a(Ljava/lang/Runnable;)V

    .line 1651
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/reward/adapter/b;)V

    .line 1652
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->v:Lccsanandroid/os/Handler;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1653
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v9, p0, Lccsancom/mbridge/msdk/reward/a/a;->F:Z

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v9}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(IIZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    goto :goto_0

    .line 1654
    :catch_0
    move-exception p1

    .line 1655
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 1656
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1658
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->c(Ljava/lang/String;)V

    .line 1660
    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/a/a;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/a/a;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 59
    nop

    .line 7254
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->Q:Z

    if-nez p0, :cond_0

    .line 7255
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p0

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    .line 174
    :try_start_0
    sget-object v0, Lccsancom/mbridge/msdk/reward/a/a;->I:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lccsancom/mbridge/msdk/reward/a/a;->I:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    goto :goto_0

    .line 177
    :catch_0
    move-exception p0

    .line 178
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 201
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    return-void

    .line 207
    :cond_1
    sget-object v0, Lccsancom/mbridge/msdk/reward/a/a;->J:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    sget-object v0, Lccsancom/mbridge/msdk/reward/a/a;->J:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_2
    return-void
.end method

.method private a(Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/d;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Lccsancom/mbridge/msdk/reward/adapter/d;",
            ")V"
        }
    .end annotation

    .line 1004
    move-object/from16 v7, p0

    const/4 v0, 0x0

    move-object/from16 v6, p1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1005
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1006
    xor-int/lit8 v14, v1, 0x1

    invoke-virtual {v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v13

    .line 1007
    iput-boolean v0, v7, Lccsancom/mbridge/msdk/reward/a/a;->c:Z

    .line 1008
    iput-boolean v0, v7, Lccsancom/mbridge/msdk/reward/a/a;->d:Z

    .line 1009
    iput-boolean v0, v7, Lccsancom/mbridge/msdk/reward/a/a;->e:Z

    .line 1010
    iput-boolean v0, v7, Lccsancom/mbridge/msdk/reward/a/a;->f:Z

    .line 1011
    iput-boolean v0, v7, Lccsancom/mbridge/msdk/reward/a/a;->g:Z

    .line 1014
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v8

    iget-object v9, v7, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-boolean v12, v7, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    iget-boolean v0, v7, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11f

    const/16 v16, 0x11f

    goto :goto_0

    :cond_0
    const/16 v0, 0x5e

    const/16 v16, 0x5e

    :goto_0
    iget-object v11, v7, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v10, v7, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Lccsancom/mbridge/msdk/reward/a/a$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/reward/a/a$3;-><init>(Lccsancom/mbridge/msdk/reward/a/a;ZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsancom/mbridge/msdk/reward/adapter/d;I)V

    new-instance v0, Lccsancom/mbridge/msdk/reward/a/a$4;

    invoke-direct {v0, v7, v14, v15, v13}, Lccsancom/mbridge/msdk/reward/a/a$4;-><init>(Lccsancom/mbridge/msdk/reward/a/a;ZLccsancom/mbridge/msdk/foundation/entity/CampaignEx;I)V

    move-object v1, v10

    move v10, v14

    move-object v2, v11

    move v11, v13

    move/from16 v20, v13

    move/from16 v13, v16

    move v5, v14

    move-object v14, v2

    move-object/from16 v21, v15

    move-object v15, v1

    move-object/from16 v16, v17

    move-object/from16 v17, p1

    move-object/from16 v19, v0

    invoke-virtual/range {v8 .. v19}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsanandroid/content/Context;ZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/c$c;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V

    .line 1188
    if-eqz v5, :cond_1

    .line 1189
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v8

    iget-object v9, v7, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object v11, v7, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v12, v7, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual/range {v21 .. v21}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lccsancom/mbridge/msdk/reward/a/a$5;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v6, v20

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/a/a$5;-><init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/d;ZI)V

    move-object/from16 v10, v21

    invoke-virtual/range {v8 .. v14}, Lccsancom/mbridge/msdk/reward/adapter/c;->a(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/adapter/c$i;)V

    .line 1260
    :cond_1
    return-void
.end method

.method private a(Ljava/util/Queue;ZLjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1601
    const/16 v0, 0x8

    .line 1602
    const/4 v1, 0x1

    .line 1603
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1604
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1616
    :catch_0
    move-exception p1

    goto :goto_2

    .line 1607
    :cond_0
    :goto_0
    :try_start_1
    invoke-direct {p0, v1, v0, p2, p3}, Lccsancom/mbridge/msdk/reward/a/a;->a(IIZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1613
    goto :goto_1

    .line 1608
    :catch_1
    move-exception p1

    .line 1609
    :try_start_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p3, "load mv api error:"

    if-eqz p2, :cond_1

    :try_start_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 1610
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const-string v8, ""

    const-string v9, ""

    invoke-static/range {v3 .. v9}, Lccsancom/mbridge/msdk/reward/b/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1612
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1625
    :goto_1
    goto :goto_3

    .line 1617
    :goto_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 1618
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const-string v2, "can\'t show because unknow error"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1621
    :cond_2
    const-string p2, "can\'t show because unknow error"

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/reward/a/a;->c(Ljava/lang/String;)V

    .line 1622
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 1623
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1626
    :cond_3
    :goto_3
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/reward/a/a;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->H:Z

    return p1
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->V:Ljava/util/List;

    return-object p0
.end method

.method private b(ZLjava/lang/String;)V
    .locals 8

    .line 920
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz v0, :cond_c

    .line 921
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_7

    .line 922
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/reward/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->T:Z

    .line 923
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->T:Z

    if-eqz v0, :cond_5

    .line 924
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 925
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    .line 926
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 927
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lccsancom/mbridge/msdk/reward/a/a$c;->c(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 929
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-boolean v6, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Z)V

    .line 930
    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v3, v6

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v4

    invoke-virtual {v5, v0, v3, v4}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 931
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-static {v0, v3, v4, v1, v2}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 932
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 934
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/d;)V

    .line 936
    :goto_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->N:Z

    if-eqz v0, :cond_2

    .line 937
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v0, :cond_1

    .line 938
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;)V

    .line 940
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->K:Ljava/util/Queue;

    invoke-direct {p0, v0, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/util/Queue;ZLjava/lang/String;)V

    .line 943
    :cond_2
    goto/16 :goto_2

    .line 944
    :cond_3
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->T:Z

    .line 945
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v0, :cond_4

    .line 946
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;)V

    .line 948
    :cond_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Z)V

    .line 949
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->K:Ljava/util/Queue;

    invoke-direct {p0, v0, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/util/Queue;ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 952
    :cond_5
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->T:Z

    .line 953
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v0, :cond_6

    .line 954
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;)V

    .line 956
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Z)V

    .line 957
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->K:Ljava/util/Queue;

    invoke-direct {p0, v0, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/util/Queue;ZLjava/lang/String;)V

    goto/16 :goto_2

    .line 960
    :cond_7
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v5, p2}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 961
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 962
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->j()Z

    move-result v5

    if-nez v5, :cond_9

    .line 963
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->T:Z

    .line 964
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {p1, v5}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Z)V

    .line 965
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-static {p1, v5, v6}, Lccsancom/mbridge/msdk/reward/a/a$c;->c(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 968
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v3, v4

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result p1

    invoke-virtual {p2, v0, v3, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;ZI)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 971
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1, v2}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/util/List;Ljava/lang/String;J)V

    .line 972
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 974
    :cond_8
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/util/List;Lccsancom/mbridge/msdk/reward/adapter/d;)V

    .line 976
    :goto_1
    goto :goto_2

    .line 977
    :cond_9
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lccsancom/mbridge/msdk/videocommon/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->T:Z

    .line 979
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v1, :cond_a

    .line 980
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/util/List;)V

    .line 982
    :cond_a
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Z)V

    .line 983
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->K:Ljava/util/Queue;

    invoke-direct {p0, v0, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/util/Queue;ZLjava/lang/String;)V

    goto :goto_2

    .line 986
    :cond_b
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lccsancom/mbridge/msdk/videocommon/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->T:Z

    .line 988
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Z)V

    .line 989
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->K:Ljava/util/Queue;

    invoke-direct {p0, v0, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->a(Ljava/util/Queue;ZLjava/lang/String;)V

    .line 993
    :cond_c
    :goto_2
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/reward/a/a;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->P:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .line 1264
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1265
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/reward/adapter/d;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 1266
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Z)V

    .line 1267
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Z)V

    .line 1269
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->w:I

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(I)V

    .line 1270
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1273
    goto :goto_0

    .line 1271
    :catch_0
    move-exception v0

    .line 1276
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v0

    .line 1278
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v1

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {v1, p1, v2, v3}, Lccsancom/mbridge/msdk/videocommon/a/a;->b(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->V:Ljava/util/List;

    .line 1279
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 1280
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    if-nez p1, :cond_2

    .line 1281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    goto :goto_1

    .line 1283
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1285
    :goto_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1286
    return v2

    .line 1288
    :cond_3
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 1289
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1291
    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/adapter/d;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 759
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v0

    .line 760
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 1629
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz v0, :cond_0

    .line 1630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->S:Z

    .line 1631
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 1633
    :cond_0
    return-void
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/reward/a/a;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->Q:Z

    return p1
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/reward/a/a$c;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 765
    const-string v0, "_"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/db/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 766
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 767
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 768
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 770
    invoke-static {v3}, Lccsancom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 773
    invoke-static {v2}, Lccsancom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)V

    .line 775
    :cond_0
    goto :goto_1

    .line 776
    :cond_1
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v3

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/videocommon/a;->b(ILccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    :goto_1
    goto/16 :goto_0

    .line 782
    :cond_2
    goto :goto_2

    .line 780
    :catch_0
    move-exception v0

    .line 783
    :goto_2
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 13

    .line 1698
    const-string v0, "1"

    const-string v1, "_"

    const-string v2, "RewardVideoController"

    .line 1699
    nop

    .line 1700
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->l:Lccsancom/mbridge/msdk/videocommon/d/a;

    if-eqz v7, :cond_0

    .line 1701
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/videocommon/d/a;->h()Ljava/util/Map;

    move-result-object v7

    .line 1702
    if-eqz v7, :cond_0

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1703
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1706
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1707
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->i:I

    .line 1710
    :cond_1
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-nez v7, :cond_2

    .line 1711
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->i()V

    .line 1713
    :cond_2
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v7, :cond_7

    .line 1714
    const-string v7, "controller 819"

    invoke-static {v2, v7}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    iget-boolean v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-eqz v7, :cond_3

    .line 1717
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->g()Z

    move-result v7

    goto :goto_1

    .line 1719
    :cond_3
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    move-result v7

    .line 1721
    :goto_1
    if-eqz v7, :cond_5

    .line 1722
    iget v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->i:I

    if-lt v1, v0, :cond_4

    if-lez v0, :cond_4

    .line 1723
    return-void

    .line 1725
    :cond_4
    const-string v0, "invoke adapter show isReady"

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    new-instance v0, Lccsancom/mbridge/msdk/reward/a/a$d;

    iget-object v11, p0, Lccsancom/mbridge/msdk/reward/a/a;->v:Lccsanandroid/os/Handler;

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lccsancom/mbridge/msdk/reward/a/a$d;-><init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/reward/a/a;ILccsanandroid/os/Handler;Lccsancom/mbridge/msdk/reward/a/a$1;)V

    .line 1727
    sget-object v1, Lccsancom/mbridge/msdk/reward/a/a;->b:Ljava/util/Map;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1728
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v10, p0, Lccsancom/mbridge/msdk/reward/a/a;->o:Ljava/lang/String;

    iget v11, p0, Lccsancom/mbridge/msdk/reward/a/a;->w:I

    iget-object v12, p0, Lccsancom/mbridge/msdk/reward/a/a;->r:Ljava/lang/String;

    move-object v8, v0

    move-object v9, p1

    invoke-virtual/range {v7 .. v12}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1729
    return-void

    .line 1732
    :cond_5
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-eqz v0, :cond_6

    .line 1733
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->h()Z

    move-result v0

    goto :goto_2

    .line 1735
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->c()Z

    move-result v0

    .line 1737
    :goto_2
    if-eqz v0, :cond_7

    .line 1738
    const-string v0, "invoke adapter show isSpareOfferReady"

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    new-instance v0, Lccsancom/mbridge/msdk/reward/a/a$d;

    iget-object v11, p0, Lccsancom/mbridge/msdk/reward/a/a;->v:Lccsanandroid/os/Handler;

    const/4 v12, 0x0

    const/4 v10, 0x1

    move-object v7, v0

    move-object v8, p0

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lccsancom/mbridge/msdk/reward/a/a$d;-><init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/reward/a/a;ILccsanandroid/os/Handler;Lccsancom/mbridge/msdk/reward/a/a$1;)V

    .line 1740
    sget-object v1, Lccsancom/mbridge/msdk/reward/a/a;->b:Ljava/util/Map;

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1741
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v10, p0, Lccsancom/mbridge/msdk/reward/a/a;->o:Ljava/lang/String;

    iget v11, p0, Lccsancom/mbridge/msdk/reward/a/a;->w:I

    iget-object v12, p0, Lccsancom/mbridge/msdk/reward/a/a;->r:Ljava/lang/String;

    move-object v8, v0

    move-object v9, p1

    invoke-virtual/range {v7 .. v12}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/video/bt/module/b/h;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1742
    return-void

    .line 1745
    :cond_7
    iget v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->i:I

    if-eqz v0, :cond_8

    .line 1746
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1747
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Ljava/lang/String;)V

    .line 1748
    return-void

    .line 1750
    :cond_8
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_9

    .line 1752
    :try_start_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v1, "can\'t show because load is failed"

    invoke-interface {p1, v0, v1}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1757
    goto :goto_3

    .line 1753
    :catch_0
    move-exception p1

    .line 1754
    :try_start_2
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 1755
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1759
    :cond_9
    :goto_3
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v5, :cond_a

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v3, :cond_a

    .line 1760
    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1779
    :cond_a
    goto :goto_5

    .line 1763
    :catch_1
    move-exception p1

    .line 1764
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 1765
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :cond_b
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz v0, :cond_c

    .line 1769
    :try_start_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v2, "show exception"

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1774
    goto :goto_4

    .line 1770
    :catch_2
    move-exception v0

    .line 1771
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 1772
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1776
    :cond_c
    :goto_4
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-nez p1, :cond_d

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v5, :cond_d

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v3, :cond_d

    .line 1777
    invoke-virtual {p0, v6}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V

    .line 1781
    :cond_d
    :goto_5
    return-void
.end method

.method static synthetic d(Lccsancom/mbridge/msdk/reward/a/a;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->R:Z

    return p1
.end method

.method private e()V
    .locals 7

    .line 1553
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->w()Ljava/util/List;

    move-result-object v0

    .line 1554
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1555
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1556
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/videocommon/b/b;

    .line 1557
    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/b/b;->a()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1562
    :cond_0
    goto :goto_1

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1563
    :goto_1
    return-void
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/reward/a/a;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->E:Z

    return p0
.end method

.method static synthetic e(Lccsancom/mbridge/msdk/reward/a/a;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->S:Z

    return p1
.end method

.method static synthetic f(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    return-object p0
.end method

.method private f()Z
    .locals 10

    .line 1567
    const-string v0, ""

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->w()Ljava/util/List;

    move-result-object v1

    .line 1568
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->l:Lccsancom/mbridge/msdk/videocommon/d/a;

    if-nez v2, :cond_0

    .line 1569
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->l:Lccsancom/mbridge/msdk/videocommon/d/a;

    .line 1571
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->l:Lccsancom/mbridge/msdk/videocommon/d/a;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/a;->h()Ljava/util/Map;

    move-result-object v2

    .line 1572
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1573
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1574
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/videocommon/b/b;

    .line 1575
    nop

    .line 1576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/videocommon/b/b;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1577
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/videocommon/b/b;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    .line 1576
    :cond_1
    const/4 v6, 0x0

    .line 1579
    :goto_1
    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/videocommon/b/b;->a()I

    move-result v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v5, v8}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1580
    nop

    .line 1581
    if-eqz v5, :cond_2

    .line 1582
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1581
    :cond_2
    const/4 v5, 0x0

    .line 1584
    :goto_2
    if-ge v5, v6, :cond_3

    .line 1585
    return v3

    .line 1573
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1594
    :cond_4
    goto :goto_3

    .line 1591
    :catch_0
    move-exception v0

    .line 1592
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1593
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RewardVideoController"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic g(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    return-object p0
.end method

.method private g()Z
    .locals 3

    .line 1832
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-nez v0, :cond_0

    .line 1833
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->i()V

    .line 1835
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1836
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1837
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/b;

    .line 1838
    if-eqz v1, :cond_1

    .line 1839
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/lang/String;)V

    .line 1840
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1841
    const/4 v0, 0x1

    return v0

    .line 1844
    :cond_1
    goto :goto_0

    .line 1846
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    return-object p0
.end method

.method private h()Z
    .locals 4

    .line 1851
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-nez v0, :cond_0

    .line 1852
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->i()V

    .line 1854
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1856
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/b;

    .line 1857
    if-eqz v1, :cond_2

    .line 1858
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Ljava/lang/String;)V

    .line 1859
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/reward/adapter/d;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1860
    const/4 v0, 0x1

    return v0

    .line 1862
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lccsancom/mbridge/msdk/videocommon/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    :cond_2
    goto :goto_0

    .line 1866
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private i()V
    .locals 4

    .line 1874
    new-instance v0, Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    .line 1875
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->b(Z)V

    .line 1876
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->c(Z)V

    .line 1877
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->x:I

    iget v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->y:I

    iget v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->z:I

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(III)V

    .line 1880
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)V

    .line 1881
    return-void
.end method

.method static synthetic i(Lccsancom/mbridge/msdk/reward/a/a;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    return p0
.end method

.method public static insertExcludeId(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 4

    .line 239
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 240
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/i;

    move-result-object v0

    .line 244
    new-instance v1, Lccsancom/mbridge/msdk/foundation/entity/e;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/entity/e;-><init>()V

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/e;->a(J)V

    .line 246
    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/foundation/entity/e;->b(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/foundation/entity/e;->a(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/i;->a(Lccsancom/mbridge/msdk/foundation/entity/e;)V

    .line 251
    :cond_0
    return-void
.end method

.method static synthetic j(Lccsancom/mbridge/msdk/reward/a/a;)V
    .locals 2

    .line 59
    nop

    .line 7221
    nop

    .line 7222
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->H:Z

    if-nez v0, :cond_0

    .line 7224
    goto :goto_0

    .line 7226
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/reward/a/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 7227
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7228
    sget-object v1, Lccsancom/mbridge/msdk/reward/a/a;->J:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7229
    sget-object v1, Lccsancom/mbridge/msdk/reward/a/a;->J:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7230
    sget-object v1, Lccsancom/mbridge/msdk/reward/a/a;->J:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    .line 7233
    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/out/MBridgeIds;->setBidToken(Ljava/lang/String;)V

    .line 59
    :cond_2
    return-void
.end method

.method private j()Z
    .locals 6

    .line 1991
    nop

    .line 1993
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->M:Lccsancom/mbridge/msdk/foundation/db/f;

    if-nez v1, :cond_0

    .line 1994
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->M:Lccsancom/mbridge/msdk/foundation/db/f;

    .line 1996
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->M:Lccsancom/mbridge/msdk/foundation/db/f;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/db/g;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/g;

    move-result-object v1

    .line 1997
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-nez v2, :cond_1

    .line 1998
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v2

    .line 2000
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    .line 1999
    invoke-virtual {v2, v3, v4, v5}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 2002
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->d()I

    move-result v2

    .line 2003
    if-eqz v1, :cond_2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lccsancom/mbridge/msdk/foundation/db/g;->a(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 2004
    const/4 v0, 0x1

    .line 2008
    :cond_2
    goto :goto_0

    .line 2006
    :catchall_0
    move-exception v1

    .line 2007
    const-string v1, "RewardVideoController"

    const-string v2, "cap check error"

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :goto_0
    return v0
.end method

.method static synthetic k(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/out/MBridgeIds;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    return-object p0
.end method

.method static synthetic l(Lccsancom/mbridge/msdk/reward/a/a;)Lccsancom/mbridge/msdk/videocommon/d/c;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    return-object p0
.end method

.method static synthetic m(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic n(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/util/ArrayList;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->G:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic o(Lccsancom/mbridge/msdk/reward/a/a;)Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lccsancom/mbridge/msdk/reward/a/a;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    return p0
.end method

.method static synthetic q(Lccsancom/mbridge/msdk/reward/a/a;)Lccsanandroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->v:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method static synthetic r(Lccsancom/mbridge/msdk/reward/a/a;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->F:Z

    return p0
.end method

.method static synthetic s(Lccsancom/mbridge/msdk/reward/a/a;)I
    .locals 0

    .line 59
    iget p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->w:I

    return p0
.end method

.method static synthetic t(Lccsancom/mbridge/msdk/reward/a/a;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->P:Z

    return p0
.end method

.method static synthetic u(Lccsancom/mbridge/msdk/reward/a/a;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->Q:Z

    return p0
.end method

.method static synthetic v(Lccsancom/mbridge/msdk/reward/a/a;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->R:Z

    return p0
.end method

.method static synthetic w(Lccsancom/mbridge/msdk/reward/a/a;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->T:Z

    return p0
.end method

.method static synthetic x(Lccsancom/mbridge/msdk/reward/a/a;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/reward/a/a;->S:Z

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v0, :cond_0

    .line 125
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->H:Z

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/reward/adapter/d;->a(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 120
    iput p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->w:I

    .line 121
    return-void
.end method

.method public final a(III)V
    .locals 5

    .line 150
    iput p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->x:I

    .line 151
    iput p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->y:I

    .line 152
    sget v0, Lccsancom/mbridge/msdk/foundation/same/a;->p:I

    if-ne p2, v0, :cond_1

    .line 153
    if-gez p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->z:I

    .line 155
    :cond_1
    iget v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->y:I

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->o:I

    if-ne v0, v1, :cond_3

    .line 156
    if-gez p3, :cond_2

    const/16 v0, 0x50

    goto :goto_1

    :cond_2
    move v0, p3

    :goto_1
    iput v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->z:I

    .line 160
    :cond_3
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 161
    const-string v1, "ivRewardEnable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 162
    const-string v1, "ivRewardMode"

    sget v3, Lccsancom/mbridge/msdk/foundation/same/a;->m:I

    const/4 v4, 0x0

    if-ne p1, v3, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/4 p1, 0x1

    :goto_2
    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 163
    const-string p1, "ivRewardPlayValueMode"

    sget v1, Lccsancom/mbridge/msdk/foundation/same/a;->o:I

    if-ne p2, v1, :cond_5

    const/4 v2, 0x0

    :cond_5
    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 164
    const-string p1, "ivRewardPlayValue"

    invoke-virtual {v0, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 165
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2225
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ivreward_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_3

    .line 166
    :catch_0
    move-exception p1

    .line 167
    const-string p1, "RewardVideoController"

    const-string p2, "setIVRewardEnable to SP was ERROR"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_3
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;)V
    .locals 7

    .line 711
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    .line 712
    new-instance v6, Lccsancom/mbridge/msdk/reward/a/a$c;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->v:Lccsanandroid/os/Handler;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/reward/a/a$c;-><init>(Lccsancom/mbridge/msdk/reward/a/a;Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;Lccsanandroid/os/Handler;Ljava/lang/String;Lccsancom/mbridge/msdk/reward/a/a$1;)V

    iput-object v6, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    .line 713
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1886
    const-string v0, "reward_date"

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->t:Ljava/lang/String;

    .line 1887
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->o:Ljava/lang/String;

    .line 1888
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a;->r:Ljava/lang/String;

    .line 1889
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const-string p3, ""

    if-eqz p2, :cond_2

    :try_start_1
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p2}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-ne p2, v4, :cond_2

    .line 1890
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz p1, :cond_0

    .line 1892
    :try_start_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v0, "campaing is loading"

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1897
    goto :goto_0

    .line 1893
    :catch_0
    move-exception p1

    .line 1894
    :try_start_3
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 1895
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1900
    :cond_0
    :goto_0
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v4, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v1, :cond_1

    .line 1901
    nop

    .line 3755
    invoke-virtual {p0, v3, p3}, Lccsancom/mbridge/msdk/reward/a/a;->a(ZLjava/lang/String;)V

    .line 1903
    :cond_1
    return-void

    .line 1905
    :cond_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    if-nez p2, :cond_5

    .line 1906
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz p1, :cond_3

    .line 1908
    :try_start_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v0, "context is null"

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1913
    goto :goto_1

    .line 1909
    :catch_1
    move-exception p1

    .line 1910
    :try_start_5
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 1911
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1916
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v4, :cond_4

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 1917
    nop

    .line 4755
    invoke-virtual {p0, v3, p3}, Lccsancom/mbridge/msdk/reward/a/a;->a(ZLjava/lang/String;)V

    .line 1919
    :cond_4
    return-void

    .line 1921
    :cond_5
    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-eqz v5, :cond_8

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 1922
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz p1, :cond_6

    .line 1924
    :try_start_6
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v0, "network exception"

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1929
    goto :goto_2

    .line 1925
    :catch_2
    move-exception p1

    .line 1926
    :try_start_7
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_6

    .line 1927
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1931
    :cond_6
    :goto_2
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v4, :cond_7

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v1, :cond_7

    .line 1932
    nop

    .line 5755
    invoke-virtual {p0, v3, p3}, Lccsancom/mbridge/msdk/reward/a/a;->a(ZLjava/lang/String;)V

    .line 1934
    :cond_7
    return-void

    .line 1936
    :cond_8
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->j()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1937
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    if-eqz p1, :cond_9

    .line 1939
    :try_start_8
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v0, "Play more than limit"

    invoke-interface {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1944
    goto :goto_3

    .line 1940
    :catch_3
    move-exception p1

    .line 1941
    :try_start_9
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_9

    .line 1942
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1946
    :cond_9
    :goto_3
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-nez p1, :cond_a

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_a

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v4, :cond_a

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v1, :cond_a

    .line 1947
    nop

    .line 6755
    invoke-virtual {p0, v3, p3}, Lccsancom/mbridge/msdk/reward/a/a;->a(ZLjava/lang/String;)V

    .line 1949
    :cond_a
    return-void

    .line 1953
    :cond_b
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->o:Ljava/lang/String;

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1954
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->i()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->o:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 1957
    :cond_c
    :try_start_a
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "dd"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1958
    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 1960
    iget-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    const-string v5, "0"

    invoke-static {p3, v0, v5}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1961
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1962
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 1963
    iget-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    invoke-static {p3, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1964
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2, p3, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1969
    :cond_d
    goto :goto_4

    .line 1967
    :catch_4
    move-exception p2

    .line 1970
    :goto_4
    :try_start_b
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/reward/a/a;->d(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1987
    goto :goto_6

    .line 1971
    :catch_5
    move-exception p1

    .line 1972
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_e

    .line 1973
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RewardVideoController"

    invoke-static {p3, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    :cond_e
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    if-eqz p2, :cond_f

    .line 1977
    :try_start_c
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->m:Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;

    iget-object p3, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    const-string v0, "show exception"

    invoke-interface {p2, p3, v0}, Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1982
    goto :goto_5

    .line 1978
    :catch_6
    move-exception p2

    .line 1979
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_f

    .line 1980
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1984
    :cond_f
    :goto_5
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_10

    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->s(I)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_10

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v4, :cond_10

    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result p1

    if-eq p1, v1, :cond_10

    .line 1985
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/reward/a/a;->d(Z)V

    .line 1988
    :cond_10
    :goto_6
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 131
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MBridge_ConfirmTitle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 135
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MBridge_ConfirmContent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    :cond_1
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 138
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MBridge_CancelText"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p2, p4}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    :cond_2
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 141
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MBridge_ConfirmText"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    .line 102
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 13

    .line 790
    const-string v0, "load exception"

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 791
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->E:Z

    if-eqz p2, :cond_1

    .line 792
    if-eqz p1, :cond_2

    .line 793
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 794
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const-string v2, "current unit is loading"

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 796
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    const-string p2, "errorCode: 3501 errorMessage: current unit is loading"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/a/a$c;->b(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_1
    if-eqz p1, :cond_2

    .line 800
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->E:Z

    .line 804
    :cond_2
    :goto_0
    return-void

    .line 808
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {v1}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 809
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->N:Z

    goto :goto_1

    .line 811
    :cond_4
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->N:Z

    .line 812
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;I)V

    .line 814
    :goto_1
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->E:Z

    .line 815
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->v:Lccsanandroid/os/Handler;

    const v2, 0xf4629

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 816
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->Q:Z

    .line 817
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->P:Z

    .line 818
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->R:Z

    .line 819
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->S:Z

    .line 821
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->d()V

    .line 822
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->c()V

    .line 823
    invoke-static {}, Lccsancom/mbridge/msdk/reward/adapter/c;->a()Lccsancom/mbridge/msdk/reward/adapter/c;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/reward/adapter/c;->b()V

    .line 825
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 826
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    if-eqz v1, :cond_5

    .line 827
    invoke-static {}, Lccsancom/mbridge/msdk/c/b;->getInstance()Lccsancom/mbridge/msdk/c/b;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lccsancom/mbridge/msdk/c/b;->addInterstitialList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 829
    :cond_5
    invoke-static {}, Lccsancom/mbridge/msdk/c/b;->getInstance()Lccsancom/mbridge/msdk/c/b;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lccsancom/mbridge/msdk/c/b;->addRewardList(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_6
    :goto_2
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    if-eqz v1, :cond_9

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 833
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_8

    .line 834
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 835
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    const-string v6, "bidToken is empty"

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v8, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const-string v9, ""

    const-string v10, ""

    invoke-static/range {v4 .. v10}, Lccsancom/mbridge/msdk/reward/b/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_7
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    const-string p2, "bidToken is empty"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/a/a$c;->c(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 839
    :cond_8
    return-void

    .line 841
    :cond_9
    sget-object v1, Lccsancom/mbridge/msdk/system/a;->a:Ljava/util/Map;

    if-nez v1, :cond_c

    .line 842
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_b

    .line 843
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 844
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    const-string v6, "init error"

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v8, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const-string v9, ""

    const-string v10, ""

    invoke-static/range {v4 .. v10}, Lccsancom/mbridge/msdk/reward/b/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_a
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    const-string p2, "init error"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/a/a$c;->c(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 848
    :cond_b
    return-void

    .line 851
    :cond_c
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 852
    if-nez v1, :cond_d

    .line 853
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->L:Ljava/lang/String;

    .line 854
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->L:Ljava/lang/String;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    new-instance v6, Lccsancom/mbridge/msdk/reward/a/a$2;

    invoke-direct {v6, p0}, Lccsancom/mbridge/msdk/reward/a/a$2;-><init>(Lccsancom/mbridge/msdk/reward/a/a;)V

    invoke-virtual {v1, v2, v4, v5, v6}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/c/c;)V

    .line 863
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->A:Z

    invoke-virtual {v1, v2, v4, v5}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 866
    :cond_d
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 867
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->b(Ljava/lang/String;)V

    .line 869
    :cond_e
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->D()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    .line 870
    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->v:Lccsanandroid/os/Handler;

    if-eqz v2, :cond_f

    .line 871
    const v4, 0xf462a

    int-to-long v5, v1

    invoke-virtual {v2, v4, v5, v6}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 873
    :cond_f
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->k:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->B()Ljava/util/Queue;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->K:Ljava/util/Queue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 876
    :try_start_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->f()Z

    move-result v1

    .line 877
    if-eqz v1, :cond_10

    .line 878
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 884
    :cond_10
    goto :goto_3

    .line 880
    :catch_0
    move-exception v1

    .line 881
    :try_start_2
    sget-boolean v2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v2, :cond_11

    .line 882
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 886
    :cond_11
    :goto_3
    :try_start_3
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/reward/a/a;->b(ZLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 898
    goto :goto_5

    .line 887
    :catch_1
    move-exception p1

    .line 889
    :try_start_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    if-eqz p2, :cond_12

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_12

    .line 890
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v5, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load exception: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v8, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const-string v9, ""

    const-string v10, ""

    const-wide/16 v11, 0x0

    invoke-static/range {v4 .. v12}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 894
    :cond_12
    goto :goto_4

    .line 892
    :catch_2
    move-exception p1

    .line 895
    :goto_4
    :try_start_5
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p1, :cond_13

    .line 896
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 910
    :cond_13
    :goto_5
    goto :goto_6

    .line 900
    :catch_3
    move-exception p1

    .line 901
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    if-eqz p2, :cond_14

    .line 902
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->n:Lccsancom/mbridge/msdk/reward/a/a$c;

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/reward/a/a$c;->a(Lccsancom/mbridge/msdk/reward/a/a$c;Ljava/lang/String;)V

    .line 903
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    if-eqz p2, :cond_14

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_14

    .line 904
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->U:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load exception "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    iget-boolean v4, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    const-string v5, ""

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lccsancom/mbridge/msdk/reward/b/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 907
    :cond_14
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_15

    .line 908
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 911
    :cond_15
    :goto_6
    return-void
.end method

.method public final b()V
    .locals 2

    .line 213
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->H:Z

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lccsancom/mbridge/msdk/reward/a/a;->J:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/reward/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lccsancom/mbridge/msdk/reward/a/a;->J:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/reward/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 1678
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->M:Lccsancom/mbridge/msdk/foundation/db/f;

    if-nez v0, :cond_0

    .line 1679
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->M:Lccsancom/mbridge/msdk/foundation/db/f;

    .line 1681
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->M:Lccsancom/mbridge/msdk/foundation/db/f;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/g;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/g;

    move-result-object v0

    .line 1682
    if-eqz v0, :cond_1

    .line 1683
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/db/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1687
    :cond_1
    goto :goto_0

    .line 1685
    :catchall_0
    move-exception v0

    .line 1686
    const-string v0, "RewardVideoController"

    const-string v1, "can\'t find DailyPlayCapDao"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 1690
    :pswitch_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lccsancom/mbridge/msdk/reward/a/a;->i:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1693
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 718
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    .line 719
    iput-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    .line 720
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    .line 722
    new-instance p1, Lccsancom/mbridge/msdk/out/MBridgeIds;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->s:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lccsancom/mbridge/msdk/out/MBridgeIds;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->q:Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 724
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->l:Lccsancom/mbridge/msdk/videocommon/d/a;

    .line 726
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/reward/b/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 727
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/o;->b()V

    .line 729
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/j;->a()Lccsancom/mbridge/msdk/videocommon/download/j;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/download/j;->b()V

    .line 731
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/h;->a()Lccsancom/mbridge/msdk/videocommon/download/h;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/download/h;->b()V

    .line 732
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;)V

    .line 733
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 734
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/a/a;->a()Lccsancom/mbridge/msdk/videocommon/a/a;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 736
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 737
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/c;->getInstance()Lccsancom/mbridge/msdk/videocommon/download/c;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/a/a;->h:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/a/a;->p:Ljava/lang/String;

    const/16 v5, 0x5e

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/videocommon/download/c;->createUnitCache(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;ILccsancom/mbridge/msdk/videocommon/listener/a;)Lccsancom/mbridge/msdk/videocommon/download/k;

    .line 741
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->M:Lccsancom/mbridge/msdk/foundation/db/f;

    if-nez p1, :cond_1

    .line 742
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->M:Lccsancom/mbridge/msdk/foundation/db/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    :cond_1
    goto :goto_0

    .line 744
    :catchall_0
    move-exception p1

    .line 745
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RewardVideoController"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 747
    :goto_0
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z

    .line 106
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/reward/a/a;->F:Z

    .line 147
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .line 755
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/reward/a/a;->a(ZLjava/lang/String;)V

    .line 756
    return-void
.end method

.method public final e(Z)Z
    .locals 2

    .line 1785
    nop

    .line 1787
    const/4 p1, 0x0

    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1788
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->B:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1791
    :try_start_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->g()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1794
    :goto_0
    goto :goto_2

    .line 1792
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1797
    :cond_0
    nop

    .line 2814
    nop

    .line 2815
    :try_start_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-nez v0, :cond_1

    .line 2816
    invoke-direct {p0}, Lccsancom/mbridge/msdk/reward/a/a;->i()V

    .line 2818
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    if-eqz v0, :cond_3

    .line 2820
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->b()Z

    move-result v0

    .line 2821
    if-nez v0, :cond_2

    .line 2823
    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/a/a;->j:Lccsancom/mbridge/msdk/reward/adapter/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/reward/adapter/d;->c()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2821
    :cond_2
    move p1, v0

    .line 2826
    :cond_3
    :goto_1
    nop

    .line 1804
    :cond_4
    :goto_2
    goto :goto_3

    .line 1800
    :catchall_0
    move-exception v0

    .line 1801
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 1802
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1806
    :cond_5
    :goto_3
    return p1
.end method
