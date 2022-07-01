.class public final Lccsancom/mbridge/msdk/foundation/controller/b;
.super Ljava/lang/Object;
.source "SDKController.java"


# static fields
.field private static h:Lccsancom/mbridge/msdk/foundation/controller/b;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field g:Lccsanandroid/os/Handler;

.field private i:Lccsanandroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lccsancom/mbridge/msdk/a/a;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/controller/b;->h:Lccsancom/mbridge/msdk/foundation/controller/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->m:Z

    .line 66
    const/4 v1, 0x1

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->a:I

    .line 67
    const/4 v1, 0x2

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->b:I

    .line 68
    const/4 v1, 0x3

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->c:I

    .line 69
    const/4 v1, 0x4

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->d:I

    .line 70
    const/4 v1, 0x5

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->e:I

    .line 71
    const/4 v1, 0x6

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->f:I

    .line 78
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->p:Z

    .line 317
    new-instance v0, Lccsancom/mbridge/msdk/foundation/controller/b$4;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/controller/b$4;-><init>(Lccsancom/mbridge/msdk/foundation/controller/b;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->g:Lccsanandroid/os/Handler;

    .line 83
    return-void
.end method

.method public static declared-synchronized a()Lccsancom/mbridge/msdk/foundation/controller/b;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/controller/b;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/controller/b;->h:Lccsancom/mbridge/msdk/foundation/controller/b;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lccsancom/mbridge/msdk/foundation/controller/b;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/controller/b;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/controller/b;->h:Lccsancom/mbridge/msdk/foundation/controller/b;

    .line 89
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/controller/b;->h:Lccsancom/mbridge/msdk/foundation/controller/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/controller/b;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/controller/b;->d()V

    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/controller/b;Ljava/lang/String;)V
    .locals 3

    .line 54
    nop

    .line 4481
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4482
    goto :goto_0

    .line 4484
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/b/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4485
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lccsancom/mbridge/msdk/b/b;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4486
    new-instance v0, Lccsancom/mbridge/msdk/b/c;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/b/c;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->i:Lccsanandroid/content/Context;

    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p0}, Lccsancom/mbridge/msdk/b/c;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4488
    :cond_1
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->i:Lccsanandroid/content/Context;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a()V

    .line 4489
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p0

    .line 4490
    if-eqz p0, :cond_3

    .line 4491
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p0

    .line 4492
    if-eqz p0, :cond_2

    .line 4493
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/b/a;->T()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lccsancom/mbridge/msdk/MBridgeConstans;->OMID_JS_SERVICE_URL:Ljava/lang/String;

    .line 4494
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/b/a;->e()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    .line 4495
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->e()V

    goto :goto_0

    .line 4497
    :cond_2
    const-string p0, "https://cdn-adn-https.rayjump.com/cdn-adn/v2/portal/19/08/20/11/06/5d5b63cb457e2.js"

    sput-object p0, Lccsancom/mbridge/msdk/MBridgeConstans;->OMID_JS_SERVICE_URL:Ljava/lang/String;

    .line 54
    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/controller/b;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lccsancom/mbridge/msdk/foundation/controller/b;)Lccsanandroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->i:Lccsanandroid/content/Context;

    return-object p0
.end method

.method private d()V
    .locals 5

    .line 260
    :try_start_0
    const-string v0, "com.mbridge.msdk.c.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 261
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 262
    const/4 v3, 0x0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 263
    const-string v3, "start"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 264
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDKController"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    :goto_0
    return-void
.end method

.method private e()V
    .locals 10

    .line 272
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_3

    .line 274
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/a;

    .line 277
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/a;->a()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0x11f

    const-string v4, "loadFormSelfFilling"

    const-string v5, ""

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-ne v2, v3, :cond_0

    .line 278
    :try_start_1
    const-string v2, "com.mbridge.msdk.interstitialvideo.out.MBInterstitialVideoHandler"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 279
    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->i:Lccsanandroid/content/Context;

    if-eqz v3, :cond_1

    .line 280
    if-eqz v2, :cond_1

    .line 281
    new-array v3, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v8

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 282
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/a;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_1

    .line 284
    new-array v3, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 285
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 289
    :cond_0
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/a;->a()I

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_1

    .line 290
    const-string v2, "com.mbridge.msdk.out.MBRewardVideoHandler"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 291
    if-eqz v2, :cond_2

    .line 292
    new-array v3, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v8

    const-class v9, Ljava/lang/String;

    aput-object v9, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 293
    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v8

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/a;->b()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 294
    if-eqz v1, :cond_2

    .line 295
    new-array v3, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 296
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 289
    :cond_1
    :goto_1
    nop

    .line 300
    :cond_2
    :goto_2
    goto/16 :goto_0

    .line 308
    :cond_3
    goto :goto_3

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 306
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Map;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 469
    const-string v0, "layout_type"

    invoke-static {}, Lccsancom/mbridge/msdk/out/MBridgeSDKFactory;->getMBridgeSDK()Lccsancom/mbridge/msdk/system/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/system/a;->getStatus()Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    move-result-object v1

    sget-object v2, Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;->COMPLETED:Lccsancom/mbridge/msdk/MBridgeSDK$PLUGIN_LOAD_STATUS;

    if-eq v1, v2, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->q:Ljava/util/Map;

    .line 473
    iput p2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->r:I

    .line 474
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    .line 475
    if-eqz p1, :cond_4

    .line 476
    nop

    .line 3155
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->n:Lccsancom/mbridge/msdk/a/a;

    if-nez p1, :cond_1

    .line 3156
    new-instance p1, Lccsancom/mbridge/msdk/a/a;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/a/a;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->n:Lccsancom/mbridge/msdk/a/a;

    .line 3159
    :cond_1
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->q:Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 3160
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->q:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3161
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->q:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3162
    if-nez p1, :cond_2

    .line 3163
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->q:Ljava/util/Map;

    iget p2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4011
    :try_start_1
    const-string v0, "com.mbridge.msdk.mbnative.f.a"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 4013
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 4014
    const-string v2, "preload"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 4017
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4021
    goto :goto_0

    .line 4019
    :catch_0
    move-exception p1

    .line 4020
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3163
    :goto_0
    goto :goto_1

    .line 3164
    :cond_2
    nop

    .line 3173
    :cond_3
    :goto_1
    goto :goto_2

    .line 3171
    :catch_1
    move-exception p1

    .line 3172
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Ljava/util/Map;Lccsanandroid/content/Context;)V
    .locals 9

    .line 99
    const-string v0, "SDKController"

    if-eqz p2, :cond_e

    .line 100
    const-string v1, "mbridge_appid"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->k:Ljava/lang/String;

    .line 103
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->i:Lccsanandroid/content/Context;

    .line 104
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->i:Lccsanandroid/content/Context;

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Lccsanandroid/content/Context;)V

    .line 106
    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 107
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v3

    const-string v4, "sdk_app_id"

    invoke-virtual {v3, v4, v2}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :catchall_0
    move-exception v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 110
    :catch_0
    move-exception v2

    .line 111
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    :cond_1
    :goto_0
    nop

    .line 116
    :goto_1
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->m:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 117
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/report/c;

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a()V

    .line 118
    return-void

    .line 120
    :cond_2
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/m;->m(Lccsanandroid/content/Context;)Ljava/lang/String;

    .line 122
    new-instance v2, Lccsanandroid/os/Handler;

    invoke-direct {v2}, Lccsanandroid/os/Handler;-><init>()V

    new-instance v4, Lccsancom/mbridge/msdk/foundation/controller/b$1;

    invoke-direct {v4, p0, p2}, Lccsancom/mbridge/msdk/foundation/controller/b$1;-><init>(Lccsancom/mbridge/msdk/foundation/controller/b;Lccsanandroid/content/Context;)V

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v4, v5, v6}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 129
    if-eqz p1, :cond_e

    .line 130
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 131
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->k:Ljava/lang/String;

    .line 134
    :cond_3
    const-string p2, "mbridge_appkey"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 135
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->l:Ljava/lang/String;

    .line 137
    :cond_4
    const-string p2, "applicationID"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 138
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->o:Ljava/lang/String;

    .line 140
    :cond_5
    const-string p2, "mbridge_appstartupcarsh"

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->j:Ljava/lang/String;

    .line 143
    :cond_6
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/controller/b;->e()V

    .line 144
    nop

    .line 1177
    nop

    .line 1453
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->b(Ljava/lang/String;)V

    .line 1454
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->c(Ljava/lang/String;)V

    .line 1455
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Ljava/lang/String;)V

    .line 1457
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    new-instance p2, Lccsancom/mbridge/msdk/foundation/controller/b$6;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/foundation/controller/b$6;-><init>(Lccsancom/mbridge/msdk/foundation/controller/b;)V

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->g:Lccsanandroid/os/Handler;

    invoke-virtual {p1, p2, v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->a(Lccsancom/mbridge/msdk/foundation/controller/a$b;Lccsanandroid/os/Handler;)V

    .line 1178
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->i:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 2223
    nop

    .line 2224
    nop

    .line 2225
    :try_start_1
    const-string p2, "H+tU+FeXHM=="

    .line 2226
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    .line 2225
    invoke-virtual {p1, p2, v1}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2227
    const-string p2, "H+tU+Fz8"

    const-string v1, "H+tU+bfPhM=="

    const-string v2, ""

    if-eqz p1, :cond_7

    .line 2228
    nop

    .line 2229
    :try_start_2
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2228
    invoke-interface {p1, v4, v2}, Lccsanandroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2230
    nop

    .line 2231
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2230
    invoke-interface {p1, v5, v2}, Lccsanandroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v8, v4

    move-object v4, v2

    move-object v2, v8

    goto :goto_2

    .line 2227
    :cond_7
    move-object v4, v2

    .line 2233
    :goto_2
    sget-object v5, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v6, "c"

    const-string v7, "b"

    if-eqz v5, :cond_8

    :try_start_3
    sget-object v5, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2234
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v7}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    .line 2235
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v5

    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    .line 2237
    :cond_8
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 2238
    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2239
    goto :goto_4

    .line 2241
    :cond_9
    if-eqz p1, :cond_b

    .line 2242
    invoke-interface {p1}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2243
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lccsanandroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    .line 2244
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-interface {p1, p2, v1}, Lccsanandroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    .line 2245
    invoke-interface {p1}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 2246
    goto :goto_3

    .line 2248
    :cond_a
    sput-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    .line 2249
    sput-object v4, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    .line 2250
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object p1

    sget-object p2, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-virtual {p1, v7, p2}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object p1

    sget-object p2, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-virtual {p1, v6, p2}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2255
    :cond_b
    :goto_3
    goto :goto_4

    .line 2253
    :catchall_1
    move-exception p1

    .line 2254
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1180
    :goto_4
    :try_start_4
    sget-boolean p1, Lccsancom/mbridge/msdk/MBridgeConstans;->INIT_UA_IN:Z

    if-eqz p1, :cond_c

    .line 1181
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    .line 1183
    new-instance p2, Lccsancom/mbridge/msdk/foundation/controller/b$2;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/foundation/controller/b$2;-><init>(Lccsancom/mbridge/msdk/foundation/controller/b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1194
    goto :goto_5

    .line 1195
    :cond_c
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object p2

    if-ne p1, p2, :cond_d

    .line 1196
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    .line 1198
    new-instance p2, Lccsancom/mbridge/msdk/foundation/controller/b$3;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/foundation/controller/b$3;-><init>(Lccsancom/mbridge/msdk/foundation/controller/b;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1206
    goto :goto_5

    .line 1207
    :cond_d
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/controller/b;->d()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1213
    :goto_5
    goto :goto_6

    .line 1211
    :catch_1
    move-exception p1

    .line 1212
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :goto_6
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/controller/b;->c()V

    .line 1217
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->i:Lccsanandroid/content/Context;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/s;->a(Lccsanandroid/content/Context;)V

    .line 1218
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->m:Z

    .line 148
    :cond_e
    return-void
.end method

.method public final b()V
    .locals 2

    .line 312
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/controller/b;->g:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 313
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 315
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/controller/b$5;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/controller/b$5;-><init>(Lccsancom/mbridge/msdk/foundation/controller/b;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 449
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 450
    return-void
.end method
