.class public Lccsancom/mbridge/msdk/mbnative/c/c;
.super Ljava/lang/Object;
.source "NativePreloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/mbnative/c/c$b;,
        Lccsancom/mbridge/msdk/mbnative/c/c$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/entity/j;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Lccsancom/mbridge/msdk/mbnative/c/c;

.field private static u:I

.field private static v:I


# instance fields
.field a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lccsancom/mbridge/msdk/b/c;

.field private l:Lccsancom/mbridge/msdk/click/a;

.field private m:Lccsancom/mbridge/msdk/b/d;

.field private n:Ljava/lang/String;

.field private o:Lccsanandroid/os/Handler;

.field private p:I

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

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private w:Z

.field private x:I

.field private y:I

.field private z:Lccsancom/mbridge/msdk/foundation/same/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lccsancom/mbridge/msdk/mbnative/c/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->e:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->f:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->h:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->i:Ljava/util/Map;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->j:Lccsancom/mbridge/msdk/mbnative/c/c;

    .line 127
    const/4 v0, -0x1

    sput v0, Lccsancom/mbridge/msdk/mbnative/c/c;->u:I

    .line 128
    const/4 v0, -0x2

    sput v0, Lccsancom/mbridge/msdk/mbnative/c/c;->v:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->a:Ljava/util/Queue;

    .line 86
    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->b:Ljava/util/Queue;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->p:I

    .line 101
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/e/b;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/same/e/b;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->z:Lccsancom/mbridge/msdk/foundation/same/e/b;

    .line 102
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lccsanandroid/os/Looper;->prepare()V

    .line 105
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/c/c$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/mbnative/c/c$1;-><init>(Lccsancom/mbridge/msdk/mbnative/c/c;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->o:Lccsanandroid/os/Handler;

    .line 110
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 5

    .line 329
    nop

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 332
    return v0

    .line 334
    :cond_0
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1, p1}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 336
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 337
    invoke-virtual {v1, p1}, Lccsanorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanorg/json/JSONObject;

    .line 338
    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 339
    const/4 v4, 0x2

    if-ne v4, v3, :cond_1

    .line 340
    const-string p1, "ad_num"

    invoke-virtual {v2, p1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return p1

    .line 336
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 347
    :cond_2
    goto :goto_1

    .line 345
    :catch_0
    move-exception p1

    .line 346
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_1
    return v0
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/c;)Lccsanandroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->o:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method public static a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1022
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->e:Ljava/util/Map;

    return-object v0
.end method

.method private a(IJILccsancom/mbridge/msdk/b/d;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;Z)V
    .locals 24

    .line 418
    move-object/from16 v8, p0

    move/from16 v1, p1

    move/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v7, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    const-string v2, "native_video_height"

    const-string v3, "native_video_width"

    const-string v0, "app_key"

    const-string v4, "1"

    const-string v5, "native_info"

    const-string v6, "key_word"

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v13

    invoke-virtual {v13}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v13

    invoke-static {v13}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v13

    .line 419
    invoke-virtual {v13}, Lccsancom/mbridge/msdk/foundation/db/d;->a()V

    .line 421
    iget-object v13, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v13}, Lccsancom/mbridge/msdk/b/d;->q()I

    move-result v13

    .line 423
    iget-object v14, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v14}, Lccsancom/mbridge/msdk/b/d;->r()I

    move-result v14

    .line 424
    new-instance v15, Lccsancom/mbridge/msdk/mbnative/f/a/a;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v16

    move/from16 p5, v14

    invoke-virtual/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v14

    invoke-direct {v15, v14}, Lccsancom/mbridge/msdk/mbnative/f/a/a;-><init>(Lccsanandroid/content/Context;)V

    .line 425
    new-instance v14, Lccsancom/mbridge/msdk/foundation/same/net/h/d;

    invoke-direct {v14}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;-><init>()V

    .line 426
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v16

    .line 427
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v17

    .line 428
    move-object/from16 v18, v15

    iget-object v15, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move-object/from16 v19, v2

    const-string v2, "app_id"

    if-eqz v15, :cond_3

    :try_start_1
    invoke-interface {v15, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v15, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    .line 429
    invoke-interface {v15, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v15, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v15, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v15, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    .line 430
    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 431
    nop

    .line 432
    iget-object v15, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_0

    .line 433
    iget-object v15, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v15, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v15

    check-cast v16, Ljava/lang/String;

    .line 435
    :cond_0
    iget-object v15, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Ljava/lang/String;

    if-eqz v15, :cond_1

    .line 436
    iget-object v15, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v15, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 438
    :cond_1
    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 438
    :cond_2
    const/4 v0, 0x0

    .line 441
    :goto_0
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 442
    const-string v6, "smart"

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v6, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v6, v17

    invoke-virtual {v14, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v2, "unit_id"

    invoke-virtual {v14, v2, v10}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v2, "req_type"

    invoke-virtual {v14, v2, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v2, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->n:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 450
    const-string v2, "category"

    iget-object v15, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->n:Ljava/lang/String;

    invoke-virtual {v14, v2, v15}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_4
    invoke-static/range {p7 .. p7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 453
    sget-object v2, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-virtual {v14, v2, v7}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :cond_5
    const-string v2, "sign"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v0, "only_impression"

    invoke-virtual {v14, v0, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-static/range {p6 .. p6}, Lccsancom/mbridge/msdk/foundation/tools/u;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 460
    const-string v2, "j"

    invoke-virtual {v14, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_6
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->h:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 463
    sget v0, Lccsancom/mbridge/msdk/mbnative/c/c;->u:I

    if-eq v13, v0, :cond_25

    if-eqz v13, :cond_25

    if-nez v2, :cond_7

    move v3, v9

    move-object v9, v11

    goto/16 :goto_e

    .line 467
    :cond_7
    const/4 v15, 0x1

    if-nez v9, :cond_b

    .line 468
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v0

    .line 470
    if-eqz v12, :cond_a

    .line 471
    if-eqz v0, :cond_8

    .line 472
    invoke-virtual {v0, v10, v2}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 473
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 474
    const/4 v0, 0x0

    invoke-virtual {v8, v15, v11, v0}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ZLccsancom/mbridge/msdk/a/a/a;Ljava/lang/String;)V

    .line 475
    return-void

    .line 478
    :cond_8
    iget-boolean v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->w:Z

    if-eqz v0, :cond_9

    .line 479
    const-string v2, ""

    move-object/from16 v1, p0

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V

    .line 482
    :cond_9
    return-void

    .line 484
    :cond_a
    if-eq v1, v15, :cond_b

    .line 485
    if-eqz v0, :cond_b

    .line 486
    invoke-virtual {v0, v10, v2}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 487
    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 488
    const/4 v0, 0x0

    invoke-virtual {v8, v15, v11, v0}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ZLccsancom/mbridge/msdk/a/a/a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    .line 489
    return-void

    .line 494
    :cond_b
    const-string v6, "ad_num"

    const-string v15, ""

    if-eqz v2, :cond_c

    .line 495
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v6, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_c
    iget v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->p:I

    if-eqz v0, :cond_d

    .line 499
    const-string v0, "frame_num"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->p:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v0, v9}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_d
    nop

    .line 503
    nop

    .line 504
    nop

    .line 505
    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 506
    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    .line 507
    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 508
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nativeinfo"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 511
    :try_start_3
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0, v12}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v9
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    if-lez v9, :cond_13

    .line 513
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/16 v20, 0x0

    :goto_1
    move/from16 v21, v11

    :try_start_4
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v11

    if-ge v9, v11, :cond_12

    .line 514
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 515
    move-object/from16 v22, v12

    :try_start_5
    const-string v12, "id"
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move/from16 v23, v2

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {v11, v12, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12

    .line 516
    const/4 v2, 0x2

    if-ne v2, v12, :cond_f

    .line 517
    invoke-virtual {v11, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 518
    if-lez v13, :cond_e

    .line 519
    :try_start_7
    invoke-virtual {v11, v6, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 531
    :catch_0
    move-exception v0

    move v11, v2

    goto :goto_6

    .line 513
    :cond_e
    :goto_2
    move v11, v2

    goto :goto_3

    .line 521
    :cond_f
    const/4 v2, 0x3

    if-ne v2, v12, :cond_11

    .line 522
    :try_start_8
    invoke-virtual {v11, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    .line 523
    if-lez v13, :cond_10

    .line 524
    invoke-virtual {v11, v6, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_8
    .catch Lccsanorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 513
    :cond_10
    move/from16 v11, v21

    goto :goto_3

    .line 521
    :cond_11
    move/from16 v11, v21

    .line 513
    :goto_3
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v12, v22

    move/from16 v2, v23

    goto :goto_1

    .line 531
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move/from16 v23, v2

    goto :goto_4

    .line 513
    :cond_12
    move/from16 v23, v2

    move-object/from16 v22, v12

    move/from16 v2, v20

    move/from16 v11, v21

    goto :goto_5

    .line 531
    :catch_3
    move-exception v0

    move/from16 v23, v2

    move-object/from16 v22, v12

    :goto_4
    move/from16 v11, v21

    goto :goto_6

    .line 512
    :cond_13
    move/from16 v23, v2

    move-object/from16 v22, v12

    .line 529
    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_5
    :try_start_9
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->x:I

    .line 530
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v12
    :try_end_9
    .catch Lccsanorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 533
    goto :goto_7

    .line 531
    :catch_4
    move-exception v0

    move/from16 v20, v2

    goto :goto_6

    :catch_5
    move-exception v0

    move/from16 v23, v2

    move-object/from16 v22, v12

    const/4 v11, 0x0

    const/16 v20, 0x0

    .line 532
    :goto_6
    :try_start_a
    sget-object v2, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, v20

    move-object/from16 v12, v22

    .line 535
    :goto_7
    invoke-virtual {v14, v5, v12}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 507
    :cond_14
    move/from16 v23, v2

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 537
    :goto_8
    move/from16 v13, v23

    goto :goto_9

    .line 538
    :cond_15
    move/from16 v23, v2

    sget v0, Lccsancom/mbridge/msdk/mbnative/c/c;->v:I

    if-eq v13, v0, :cond_16

    if-eqz v13, :cond_16

    .line 539
    const/4 v2, 0x0

    const/4 v11, 0x0

    goto :goto_9

    .line 543
    :cond_16
    move/from16 v13, v23

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v6, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v0, "ping_mode"

    invoke-virtual {v14, v0, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 546
    if-nez v0, :cond_17

    .line 547
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    .line 550
    :cond_17
    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/c/b;->a(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 551
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_18

    .line 553
    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Lccsanorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v4, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_18
    nop

    .line 558
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 559
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/j;

    .line 560
    if-eqz v0, :cond_19

    .line 561
    packed-switch v1, :pswitch_data_0

    .line 569
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/j;->b()I

    move-result v9

    goto :goto_a

    .line 566
    :pswitch_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/j;->a()I

    move-result v9

    .line 567
    goto :goto_a

    .line 563
    :pswitch_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/j;->b()I

    move-result v9

    .line 564
    goto :goto_a

    .line 575
    :cond_19
    const/4 v9, 0x0

    :goto_a
    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    const-string v4, "tnum"

    if-eqz v0, :cond_1a

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1a

    .line 576
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->x:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v4, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 577
    :cond_1a
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1b

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v4, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    :cond_1b
    :goto_b
    const-string v0, "offset"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v0, "ad_type"

    const-string v4, "42"

    invoke-virtual {v14, v0, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v0, "ad_source_id"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v0, v4}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    const-string v0, "native"

    invoke-static {v10, v0}, Lccsancom/mbridge/msdk/foundation/same/a/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 586
    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b:Ljava/lang/String;

    invoke-virtual {v14, v4, v0}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_1c
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v0, v4, :cond_1f

    .line 591
    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1d

    .line 592
    const-string v0, "video_width"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    :cond_1d
    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    move-object/from16 v3, v19

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    .line 595
    const-string v0, "video_height"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v0, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :cond_1e
    const-string v0, "video_version"

    const-string v3, "2.0"

    invoke-virtual {v14, v0, v3}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_1f
    new-instance v0, Lccsancom/mbridge/msdk/mbnative/c/c$a;

    invoke-direct {v0, v8, v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;-><init>(Lccsancom/mbridge/msdk/mbnative/c/c;I)V

    .line 601
    nop

    .line 4071
    iput-object v10, v0, Lccsancom/mbridge/msdk/foundation/same/net/f;->d:Ljava/lang/String;

    .line 602
    nop

    .line 4075
    iput-object v7, v0, Lccsancom/mbridge/msdk/foundation/same/net/f;->e:Ljava/lang/String;

    .line 603
    const/16 v3, 0x2a

    .line 4079
    iput v3, v0, Lccsancom/mbridge/msdk/foundation/same/net/f;->f:I

    .line 604
    move/from16 v3, v23

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->f(I)V

    .line 605
    invoke-virtual {v0, v11}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->d(I)V

    .line 606
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->e(I)V

    .line 607
    move/from16 v2, p5

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->c(I)V

    .line 608
    move-object/from16 v9, p8

    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Lccsancom/mbridge/msdk/a/a/a;)V

    .line 609
    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    move/from16 v11, p9

    if-eqz v11, :cond_21

    goto :goto_c

    :cond_20
    move/from16 v11, p9

    .line 610
    :goto_c
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->b(Z)V

    .line 612
    :cond_21
    iget-object v1, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    invoke-static {v1}, Lccsancom/mbridge/msdk/mbnative/c/b;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    .line 613
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Ljava/util/List;)V

    .line 615
    new-instance v12, Lccsancom/mbridge/msdk/mbnative/c/c$b;

    const/4 v3, 0x1

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v4, v0

    move/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/mbnative/c/c$b;-><init>(Lccsancom/mbridge/msdk/mbnative/c/c;ILccsancom/mbridge/msdk/foundation/same/e/c;ILjava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, v12}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->a(Ljava/lang/Runnable;)V

    .line 618
    move/from16 v3, p4

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/mbnative/c/c$a;->g(I)V

    .line 619
    invoke-virtual {v12, v9}, Lccsancom/mbridge/msdk/mbnative/c/c$b;->a(Lccsancom/mbridge/msdk/a/a/a;)V

    .line 620
    invoke-virtual {v12, v11}, Lccsancom/mbridge/msdk/mbnative/c/c$b;->a(Z)V

    .line 621
    invoke-virtual {v12, v10}, Lccsancom/mbridge/msdk/mbnative/c/c$b;->a(Ljava/lang/String;)V

    .line 623
    if-nez v3, :cond_23

    .line 624
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->b()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 625
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->h:Ljava/lang/String;

    move-object/from16 v2, v18

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v14, v0}, Lccsancom/mbridge/msdk/mbnative/f/a/a;->b(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_d

    .line 628
    :cond_22
    move-object/from16 v2, v18

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v1

    iget-object v1, v1, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1, v14, v0}, Lccsancom/mbridge/msdk/mbnative/f/a/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    goto :goto_d

    .line 630
    :cond_23
    move-object/from16 v2, v18

    const/4 v1, 0x1

    if-ne v3, v1, :cond_24

    .line 631
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->g:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v14, v0}, Lccsancom/mbridge/msdk/mbnative/f/a/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/foundation/same/net/h/d;Lccsancom/mbridge/msdk/foundation/same/net/e;)V

    .line 633
    :cond_24
    :goto_d
    iget-object v0, v8, Lccsancom/mbridge/msdk/mbnative/c/c;->o:Lccsanandroid/os/Handler;

    move-wide/from16 v1, p2

    invoke-virtual {v0, v12, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 637
    goto :goto_f

    .line 463
    :cond_25
    move v3, v9

    move-object v9, v11

    .line 464
    :goto_e
    const-string v2, "The request was refused"

    move-object/from16 v1, p0

    move/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 465
    return-void

    .line 634
    :catch_6
    move-exception v0

    .line 635
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;ILccsancom/mbridge/msdk/b/d;Lccsancom/mbridge/msdk/a/a/a;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Lccsancom/mbridge/msdk/b/d;",
            "Lccsancom/mbridge/msdk/a/a/a;",
            ")V"
        }
    .end annotation

    .line 390
    move-object v10, p0

    move v1, p1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    .line 391
    invoke-static {p1}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    iget v3, v10, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I

    move-object v6, p4

    invoke-virtual {v2, p4, v3}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 394
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 395
    const/4 v1, 0x0

    move-object/from16 v8, p9

    invoke-virtual {p0, v0, v8, v1}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ZLccsancom/mbridge/msdk/a/a/a;Ljava/lang/String;)V

    .line 396
    return-void

    .line 394
    :cond_0
    move-object/from16 v8, p9

    goto :goto_0

    .line 392
    :cond_1
    move-object v6, p4

    move-object/from16 v8, p9

    goto :goto_0

    .line 390
    :cond_2
    move-object v6, p4

    move-object/from16 v8, p9

    .line 400
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 408
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(IJILccsancom/mbridge/msdk/b/d;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;Z)V

    goto :goto_1

    .line 405
    :pswitch_0
    const/4 v1, 0x2

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v2, p2

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(IJILccsancom/mbridge/msdk/b/d;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;Z)V

    .line 406
    goto :goto_1

    .line 402
    :pswitch_1
    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(IJILccsancom/mbridge/msdk/b/d;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;Z)V

    .line 403
    nop

    .line 411
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(ILccsancom/mbridge/msdk/b/d;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V
    .locals 12

    .line 370
    move-object v11, p0

    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->a:Ljava/util/Queue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 372
    :try_start_0
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 373
    sget v0, Lccsancom/mbridge/msdk/MBridgeConstans;->REQUEST_TIME_OUT:I

    int-to-long v0, v0

    .line 374
    iget-object v3, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->b:Ljava/util/Queue;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 375
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v3, v0

    goto :goto_0

    .line 377
    :cond_0
    move-wide v3, v0

    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preload start queue adsource = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v7, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    move-object v1, p0

    move-object v5, p3

    move-object/from16 v6, p4

    move v8, p1

    move-object v9, p2

    move-object/from16 v10, p5

    invoke-direct/range {v1 .. v10}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(IJLjava/lang/String;Ljava/lang/String;Ljava/util/Map;ILccsancom/mbridge/msdk/b/d;Lccsancom/mbridge/msdk/a/a/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    goto :goto_1

    .line 380
    :catchall_0
    move-exception v0

    .line 381
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    const-string v1, "queue poll exception"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    :cond_1
    :goto_1
    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 4

    .line 642
    nop

    .line 643
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/j;

    goto :goto_0

    .line 646
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/j;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/j;-><init>()V

    .line 648
    :goto_0
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/c;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 649
    nop

    .line 650
    const/4 v2, 0x1

    .line 5054
    sget-object v3, Lccsancom/mbridge/msdk/mbnative/c/c;->i:Ljava/util/Map;

    .line 651
    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6054
    sget-object v2, Lccsancom/mbridge/msdk/mbnative/c/c;->i:Ljava/util/Map;

    .line 652
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 654
    :cond_1
    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_3

    .line 663
    :pswitch_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/j;->a()I

    move-result p0

    add-int/2addr v1, p0

    .line 664
    if-le v1, v2, :cond_2

    .line 665
    goto :goto_1

    .line 664
    :cond_2
    move v3, v1

    .line 667
    :goto_1
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/entity/j;->a(I)V

    .line 668
    goto :goto_3

    .line 656
    :pswitch_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/j;->b()I

    move-result p0

    add-int/2addr v1, p0

    .line 657
    if-le v1, v2, :cond_3

    .line 658
    goto :goto_2

    .line 657
    :cond_3
    move v3, v1

    .line 660
    :goto_2
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/entity/j;->b(I)V

    .line 661
    nop

    .line 672
    :goto_3
    sget-object p0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/c;Ljava/util/List;Ljava/lang/String;)V
    .locals 11

    .line 64
    const-string p0, "com.mbridge.msdk.videocommon.download.c"

    .line 6101
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v0, :cond_1

    .line 6103
    :try_start_1
    const-string v0, "com.mbridge.msdk.nativex.view.MBMediaView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6104
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6105
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 6106
    const-string v0, "getInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 6107
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 6108
    if-eqz v0, :cond_0

    .line 6109
    const-string v2, "com.mbridge.msdk.videocommon.listener.a"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 6110
    const-string v4, "createUnitCache"

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Lccsanandroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Ljava/util/List;

    const/4 v9, 0x2

    aput-object v7, v6, v9

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x3

    aput-object v7, v6, v10

    const/4 v7, 0x4

    aput-object v2, v6, v7

    invoke-virtual {p0, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 6111
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p2, v4, v8

    aput-object p1, v4, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v10

    aput-object v3, v4, v7

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6112
    const-string p1, "load"

    new-array v2, v8, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 6113
    new-array p1, v8, [Ljava/lang/Object;

    aput-object p2, p1, v1

    invoke-virtual {p0, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6117
    :cond_0
    goto :goto_0

    .line 6115
    :catch_0
    move-exception p0

    .line 6116
    :try_start_2
    sget-object p0, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    const-string p1, "please import the videocommon aar"

    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 6120
    :catch_1
    move-exception p0

    .line 6121
    sget-object p1, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    invoke-static {p0}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 6122
    :cond_1
    :goto_0
    nop

    .line 64
    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/mbnative/c/c;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->w:Z

    return p1
.end method

.method public static b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1030
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->f:Ljava/util/Map;

    return-object v0
.end method

.method public static b(ILjava/lang/String;)V
    .locals 2

    .line 676
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/j;

    .line 678
    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 683
    :pswitch_0
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/j;->a(I)V

    .line 684
    goto :goto_0

    .line 680
    :pswitch_1
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/j;->b(I)V

    .line 681
    nop

    .line 688
    :goto_0
    sget-object p0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/mbnative/c/c;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->t:Z

    return p0
.end method

.method public static c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/entity/j;",
            ">;"
        }
    .end annotation

    .line 1038
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->g:Ljava/util/Map;

    return-object v0
.end method

.method public static d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1046
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->h:Ljava/util/Map;

    return-object v0
.end method

.method public static e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1054
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->i:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f()Ljava/util/Map;
    .locals 1

    .line 64
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g()Ljava/util/Map;
    .locals 1

    .line 64
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->h:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V
    .locals 6

    .line 941
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->a:Ljava/util/Queue;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->a:Ljava/util/Queue;

    if-nez v0, :cond_2

    .line 944
    :cond_1
    const/4 p2, 0x0

    invoke-virtual {p0, p2, p5, p1}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ZLccsancom/mbridge/msdk/a/a/a;Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :cond_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    move-object v0, p0

    move v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ILccsancom/mbridge/msdk/b/d;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    goto :goto_1

    .line 948
    :catch_0
    move-exception p1

    .line 949
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 950
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 953
    :cond_3
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/Thread;)V
    .locals 1

    .line 1090
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PRELOAD_RESULT_IN_SUBTHREAD:Z

    if-nez v0, :cond_0

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 1093
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1095
    :goto_0
    return-void
.end method

.method public final a(Ljava/util/Map;I)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 136
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    const-string v14, "native_info"

    const-string v15, "com.mbridge.msdk.videocommon.download.c"

    const-string v1, "app_key"

    const-string v2, "app_id"

    const-string v3, "preload_result_listener"

    const-string v0, "ad_num"

    const-string v4, "catetory"

    const-string v5, "ad_frame_num"

    const-string v6, "isPreloadImg"

    const-string v7, "unit_id"

    const-string v8, "_"

    :try_start_0
    iput-object v12, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->q:Ljava/util/Map;

    .line 137
    const/4 v10, 0x0

    iput-boolean v10, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->w:Z

    .line 138
    invoke-interface {v12, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .line 142
    add-int/lit8 v7, v13, 0x1

    const/16 v16, 0x2

    rem-int/lit8 v7, v7, 0x2

    .line 143
    sget-object v10, Lccsancom/mbridge/msdk/mbnative/c/c;->e:Ljava/util/Map;

    move-object/from16 v17, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lccsancom/mbridge/msdk/mbnative/c/c;->e:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 144
    return-void

    .line 146
    :cond_1
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 147
    return-void

    .line 149
    :cond_2
    invoke-interface {v12, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 150
    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->t:Z

    .line 152
    :cond_3
    iget-object v6, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->l:Lccsancom/mbridge/msdk/click/a;

    if-nez v6, :cond_4

    .line 153
    new-instance v6, Lccsancom/mbridge/msdk/click/a;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, v9}, Lccsancom/mbridge/msdk/click/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iput-object v6, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->l:Lccsancom/mbridge/msdk/click/a;

    goto :goto_0

    .line 155
    :cond_4
    invoke-virtual {v6, v9}, Lccsancom/mbridge/msdk/click/a;->a(Ljava/lang/String;)V

    .line 157
    :goto_0
    invoke-interface {v12, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 158
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->p:I

    .line 160
    :cond_5
    invoke-interface {v12, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 161
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->n:Ljava/lang/String;

    .line 163
    :cond_6
    sget-object v4, Lccsancom/mbridge/msdk/mbnative/c/c;->f:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v14, 0x1

    if-eqz v4, :cond_9

    sget-object v4, Lccsancom/mbridge/msdk/mbnative/c/c;->f:Ljava/util/Map;

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2022
    sget-object v4, Lccsancom/mbridge/msdk/mbnative/c/c;->e:Ljava/util/Map;

    .line 164
    nop

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 166
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v6

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v6

    .line 168
    if-eqz v5, :cond_9

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 169
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 170
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 172
    if-nez v6, :cond_7

    .line 173
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v6

    .line 175
    :cond_7
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/b/a;->v()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    mul-long v18, v18, v20

    .line 177
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v7, v5

    cmp-long v5, v7, v18

    if-ltz v5, :cond_8

    .line 178
    invoke-interface {v4, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    :cond_8
    if-ne v13, v14, :cond_9

    .line 180
    return-void

    .line 185
    :cond_9
    :goto_1
    sget-object v4, Lccsancom/mbridge/msdk/mbnative/c/c;->f:Ljava/util/Map;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iput v14, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 188
    :try_start_1
    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 189
    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I

    .line 190
    if-ge v0, v14, :cond_a

    .line 191
    iput v14, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I

    .line 193
    :cond_a
    iget v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I

    const/16 v4, 0xa

    if-le v0, v4, :cond_b

    .line 194
    iput v4, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 199
    :cond_b
    goto :goto_2

    .line 197
    :catch_0
    move-exception v0

    .line 198
    :try_start_2
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    const-string v4, "ADNUM MUST BE INTEGER"

    invoke-static {v0, v4}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_2
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->h:Ljava/util/Map;

    iget v4, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    nop

    .line 203
    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_c

    .line 204
    invoke-interface {v12, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_c

    .line 206
    check-cast v0, Lccsancom/mbridge/msdk/out/PreloadListener;

    .line 207
    new-instance v3, Lccsancom/mbridge/msdk/a/a/a;

    invoke-direct {v3, v0}, Lccsancom/mbridge/msdk/a/a/a;-><init>(Lccsancom/mbridge/msdk/out/PreloadListener;)V

    move-object v8, v3

    goto :goto_3

    .line 211
    :cond_c
    move-object v8, v10

    :goto_3
    nop

    .line 212
    nop

    .line 213
    invoke-interface {v12, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v12, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "key_word"

    .line 214
    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 215
    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 216
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    .line 218
    :cond_d
    move-object v0, v10

    move-object v1, v0

    :goto_4
    nop

    .line 3015
    iget-object v2, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->k:Lccsancom/mbridge/msdk/b/c;

    if-nez v2, :cond_e

    .line 3016
    new-instance v2, Lccsancom/mbridge/msdk/b/c;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/b/c;-><init>()V

    iput-object v2, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->k:Lccsancom/mbridge/msdk/b/c;

    .line 3018
    :cond_e
    iget-object v2, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->k:Lccsancom/mbridge/msdk/b/c;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1, v9}, Lccsancom/mbridge/msdk/b/c;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1, v0, v9}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    .line 220
    nop

    .line 221
    if-nez v0, :cond_f

    .line 222
    invoke-static {v9}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v0

    iput-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    .line 225
    :cond_f
    nop

    .line 226
    sget-object v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    const-string v7, ""

    if-eqz v0, :cond_11

    :try_start_3
    sget-object v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 227
    sget-object v0, Lccsancom/mbridge/msdk/MBridgeConstans;->PLACEMENT_ID:Ljava/lang/String;

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_5

    :cond_10
    move-object/from16 v18, v0

    goto :goto_6

    .line 232
    :cond_11
    :goto_5
    move-object/from16 v18, v7

    .line 235
    :goto_6
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->s()Ljava/util/List;

    move-result-object v0

    iput-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->r:Ljava/util/List;

    .line 236
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->c:Ljava/util/List;

    .line 237
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->t()Ljava/util/List;

    move-result-object v0

    iput-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->s:Ljava/util/List;

    .line 238
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->r:Ljava/util/List;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 239
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->a:Ljava/util/Queue;

    .line 240
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 241
    iget-object v2, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->a:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 242
    goto :goto_7

    :cond_12
    nop

    .line 249
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->s:Ljava/util/List;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 250
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->b:Ljava/util/Queue;

    .line 251
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 252
    iget-object v2, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->b:Ljava/util/Queue;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 253
    goto :goto_8

    .line 256
    :cond_13
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->r:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v0, :cond_16

    if-nez v13, :cond_16

    .line 258
    :try_start_4
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->c:Ljava/util/List;

    iget-object v1, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->r:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    .line 259
    const/4 v2, 0x1

    iget-object v6, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p2

    move-object/from16 v22, v7

    move-object v7, v9

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    move-object/from16 v23, v9

    move-object/from16 v9, v19

    move v10, v0

    :try_start_5
    invoke-direct/range {v1 .. v10}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(IJILccsancom/mbridge/msdk/b/d;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;Z)V

    .line 260
    nop

    .line 261
    invoke-static {v14}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 262
    if-eqz v0, :cond_15

    .line 263
    move-object/from16 v7, v23

    const/4 v8, 0x0

    :try_start_6
    invoke-virtual {v0, v7, v8}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 264
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    if-lez v0, :cond_14

    .line 265
    move-object/from16 v10, v19

    const/4 v9, 0x0

    :try_start_7
    invoke-virtual {v11, v14, v10, v9}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ZLccsancom/mbridge/msdk/a/a/a;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_9

    .line 268
    :catch_1
    move-exception v0

    goto :goto_b

    .line 264
    :cond_14
    move-object/from16 v10, v19

    const/4 v9, 0x0

    goto :goto_9

    .line 268
    :catch_2
    move-exception v0

    move-object/from16 v10, v19

    goto :goto_a

    .line 262
    :cond_15
    move-object/from16 v10, v19

    move-object/from16 v7, v23

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 270
    :goto_9
    goto :goto_b

    .line 268
    :catch_3
    move-exception v0

    move-object/from16 v10, v19

    move-object/from16 v7, v23

    const/4 v8, 0x0

    :goto_a
    const/4 v9, 0x0

    goto :goto_b

    :catch_4
    move-exception v0

    move-object/from16 v22, v7

    move-object v7, v9

    move-object v9, v10

    move-object v10, v8

    const/4 v8, 0x0

    goto :goto_b

    .line 256
    :cond_16
    move-object/from16 v22, v7

    move-object v7, v9

    move-object v9, v10

    move-object v10, v8

    const/4 v8, 0x0

    .line 272
    :goto_b
    :try_start_8
    iget-object v3, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object v4, v7

    move-object/from16 v5, v18

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(ILccsancom/mbridge/msdk/b/d;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/a/a/a;)V

    .line 274
    iget-object v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    if-eqz v0, :cond_17

    .line 275
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/d;->w()I

    move-result v0

    iget v1, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I

    mul-int v0, v0, v1

    goto :goto_c

    .line 274
    :cond_17
    const/4 v0, 0x1

    .line 3054
    :goto_c
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/c;->i:Ljava/util/Map;

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 279
    :try_start_9
    const-string v0, "com.mbridge.msdk.nativex.view.MBMediaView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 280
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 281
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lccsancom/mbridge/msdk/mbnative/c/d;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/o;->b()V

    .line 284
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 285
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a()V

    .line 288
    nop

    .line 289
    move-object/from16 v1, v17

    invoke-interface {v12, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 290
    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    goto :goto_d

    .line 289
    :cond_18
    move-object v10, v9

    .line 292
    :goto_d
    invoke-direct {v11, v10}, Lccsancom/mbridge/msdk/mbnative/c/c;->a(Ljava/lang/String;)I

    move-result v0

    .line 294
    if-gtz v0, :cond_19

    iget v0, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->y:I

    .line 3352
    :cond_19
    nop

    .line 3353
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    move-object/from16 v2, v22

    invoke-virtual {v1, v2, v7}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v1

    iput-object v1, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    .line 3354
    if-nez v1, :cond_1a

    .line 3355
    invoke-static {v7}, Lccsancom/mbridge/msdk/b/d;->d(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v1

    iput-object v1, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    .line 3357
    :cond_1a
    iget-object v1, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->m:Lccsancom/mbridge/msdk/b/d;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/d;->s()Ljava/util/List;

    move-result-object v1

    iput-object v1, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->r:Ljava/util/List;

    .line 3358
    if-eqz v1, :cond_1b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    iget-object v1, v11, Lccsancom/mbridge/msdk/mbnative/c/c;->r:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3359
    nop

    .line 3360
    invoke-static {v14}, Lccsancom/mbridge/msdk/mbnative/a/c;->a(I)Lccsancom/mbridge/msdk/mbnative/a/b;

    move-result-object v1

    .line 3361
    if-eqz v1, :cond_1b

    .line 3362
    invoke-virtual {v1, v7, v0}, Lccsancom/mbridge/msdk/mbnative/a/b;->b(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/util/List;

    goto :goto_e

    .line 3365
    :cond_1b
    move-object v10, v9

    :goto_e
    nop

    .line 294
    nop

    .line 296
    if-eqz v10, :cond_1e

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    const/4 v1, 0x0

    :goto_f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 300
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 301
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 302
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 306
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 307
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 308
    const-string v2, "getInstance"

    new-array v3, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 309
    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v9, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 310
    const-string v3, "com.mbridge.msdk.videocommon.listener.a"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 311
    const-string v4, "createUnitCache"

    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/Class;

    const-class v10, Lccsanandroid/content/Context;

    aput-object v10, v6, v8

    const-class v10, Ljava/lang/String;

    aput-object v10, v6, v14

    const-class v10, Ljava/util/List;

    aput-object v10, v6, v16

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v10, v6, v12

    const/4 v10, 0x4

    aput-object v3, v6, v10

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 313
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v7, v4, v14

    aput-object v0, v4, v16

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v12

    aput-object v9, v4, v10

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v0, "load"

    new-array v3, v14, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v8

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 316
    new-array v1, v14, [Ljava/lang/Object;

    aput-object v7, v1, v8

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 322
    :cond_1e
    goto :goto_10

    .line 320
    :catchall_0
    move-exception v0

    .line 321
    :try_start_a
    sget-object v0, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    const-string v1, "init cam cache failed"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_10
    goto :goto_11

    .line 238
    :cond_1f
    move-object v10, v8

    .line 244
    if-eqz v10, :cond_20

    .line 245
    const-string v0, "don\'t have sorceList"

    invoke-virtual {v10, v0}, Lccsancom/mbridge/msdk/a/a/a;->onPreloadFaild(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 247
    :cond_20
    return-void

    .line 323
    :catch_5
    move-exception v0

    .line 324
    sget-object v1, Lccsancom/mbridge/msdk/mbnative/c/c;->d:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/mbridge/msdk/mbnative/b/a;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_11
    return-void
.end method

.method public final a(ZLccsancom/mbridge/msdk/a/a/a;Ljava/lang/String;)V
    .locals 1

    .line 1062
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1063
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/a/a/a;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1064
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/a/a/a;->a(Z)V

    .line 1065
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/a/a/a;->onPreloadSucceed()V

    goto :goto_0

    .line 1068
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/a/a/a;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1069
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/a/a/a;->a(Z)V

    .line 1070
    invoke-virtual {p2, p3}, Lccsancom/mbridge/msdk/a/a/a;->onPreloadFaild(Ljava/lang/String;)V

    .line 1073
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(ZLccsancom/mbridge/msdk/out/Campaign;)V
    .locals 2

    .line 1076
    if-nez p2, :cond_0

    .line 1077
    return-void

    .line 1080
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/out/Campaign;->getIconDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1081
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/out/Campaign;->loadIconUrlAsyncWithBlock(Lccsancom/mbridge/msdk/out/OnImageLoadListener;)V

    .line 1083
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/out/Campaign;->getBigDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1084
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/out/Campaign;->loadImageUrlAsyncWithBlock(Lccsancom/mbridge/msdk/out/OnImageLoadListener;)V

    .line 1087
    :cond_2
    return-void
.end method
