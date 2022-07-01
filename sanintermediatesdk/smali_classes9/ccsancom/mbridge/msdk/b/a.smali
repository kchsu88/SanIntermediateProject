.class public final Lccsancom/mbridge/msdk/b/a;
.super Ljava/lang/Object;
.source "Setting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/b/a$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private N:J

.field private O:I

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/b/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private a:I

.field private aa:I

.field private ab:Ljava/lang/String;

.field private ac:Ljava/lang/String;

.field private ad:Ljava/lang/String;

.field private ae:I

.field private af:Z

.field private ag:I

.field private ah:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private aj:I

.field private ak:I

.field private b:I

.field private c:J

.field private d:J

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:J

.field private h:Z

.field private i:J

.field private j:J

.field private k:J

.field private l:Z

.field private m:I

.field private n:I

.field private o:J

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/a;",
            ">;"
        }
    .end annotation
.end field

.field private u:Z

.field private v:I

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->a:I

    .line 35
    const-wide/32 v1, 0x15180

    iput-wide v1, p0, Lccsancom/mbridge/msdk/b/a;->c:J

    .line 59
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/b/a;->u:Z

    .line 61
    const/4 v1, 0x3

    iput v1, p0, Lccsancom/mbridge/msdk/b/a;->v:I

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/b/a;->w:Z

    .line 68
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v2

    iget-object v2, v2, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    iput-object v2, p0, Lccsancom/mbridge/msdk/b/a;->x:Ljava/lang/String;

    .line 70
    const/16 v2, 0x78

    iput v2, p0, Lccsancom/mbridge/msdk/b/a;->y:I

    .line 71
    const-string v3, ""

    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->z:Ljava/lang/String;

    .line 100
    iput v1, p0, Lccsancom/mbridge/msdk/b/a;->A:I

    .line 101
    iput v1, p0, Lccsancom/mbridge/msdk/b/a;->B:I

    .line 102
    iput v1, p0, Lccsancom/mbridge/msdk/b/a;->C:I

    .line 103
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->D:I

    .line 104
    iput v1, p0, Lccsancom/mbridge/msdk/b/a;->E:I

    .line 105
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->F:I

    .line 108
    const/16 v1, 0x1e

    iput v1, p0, Lccsancom/mbridge/msdk/b/a;->H:I

    .line 109
    const/4 v1, 0x5

    iput v1, p0, Lccsancom/mbridge/msdk/b/a;->I:I

    .line 110
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->J:I

    .line 111
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->K:I

    .line 113
    const/16 v1, 0x24a1

    iput v1, p0, Lccsancom/mbridge/msdk/b/a;->L:I

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/b/a;->M:Ljava/util/List;

    .line 603
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->P:Ljava/lang/String;

    .line 605
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->Q:Ljava/lang/String;

    .line 607
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->R:Ljava/lang/String;

    .line 609
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->S:Ljava/lang/String;

    .line 611
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->T:Ljava/lang/String;

    .line 693
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->U:Ljava/lang/String;

    .line 695
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->V:Ljava/lang/String;

    .line 697
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->W:Ljava/lang/String;

    .line 699
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->X:Ljava/lang/String;

    .line 701
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->Y:Ljava/lang/String;

    .line 920
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->aa:I

    .line 930
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->ab:Ljava/lang/String;

    .line 960
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->ae:I

    .line 970
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/b/a;->af:Z

    .line 980
    iput v2, p0, Lccsancom/mbridge/msdk/b/a;->ag:I

    .line 1010
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->aj:I

    .line 1020
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->ak:I

    return-void
.end method

.method public static a(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 546
    const-string p0, ""

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_4

    .line 27529
    iget-object v1, v0, Lccsancom/mbridge/msdk/b/a;->e:Ljava/util/Map;

    .line 547
    if-nez v1, :cond_0

    goto :goto_2

    .line 550
    :cond_0
    nop

    .line 552
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 553
    nop

    .line 28529
    iget-object v1, v0, Lccsancom/mbridge/msdk/b/a;->e:Ljava/util/Map;

    .line 553
    nop

    .line 554
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 555
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 557
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 560
    nop

    .line 29529
    iget-object p1, v0, Lccsancom/mbridge/msdk/b/a;->e:Ljava/util/Map;

    .line 560
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 561
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    return-object p0

    .line 565
    :cond_1
    const-string v0, "{gaid}"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    goto :goto_1

    .line 569
    :cond_2
    goto :goto_0

    .line 571
    :cond_3
    :goto_1
    return-object p0

    .line 548
    :cond_4
    :goto_2
    return-object p0

    .line 573
    :catchall_0
    move-exception p1

    .line 574
    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;
    .locals 14

    .line 326
    const-string v0, "plctb"

    const-string v1, "pcrn"

    const-string v2, "plct"

    const-string v3, ""

    .line 328
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 329
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    new-instance p0, Lccsancom/mbridge/msdk/b/a;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/b/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 331
    :try_start_1
    const-string v6, "mv_wildcard"

    const-string v7, "mbridge"

    invoke-virtual {v5, v6, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1202
    iput-object v6, p0, Lccsancom/mbridge/msdk/b/a;->r:Ljava/lang/String;

    .line 332
    const-string v6, "cfc"

    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1305
    iput v6, p0, Lccsancom/mbridge/msdk/b/a;->b:I

    .line 333
    const-string v6, "getpf"

    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1313
    iput-wide v6, p0, Lccsancom/mbridge/msdk/b/a;->c:J

    .line 334
    const-string v6, "current_time"

    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1525
    iput-wide v6, p0, Lccsancom/mbridge/msdk/b/a;->g:J

    .line 335
    const-string v6, "cfb"

    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 1584
    iput-boolean v6, p0, Lccsancom/mbridge/msdk/b/a;->f:Z

    .line 336
    const-string v6, "awct"

    invoke-virtual {v5, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2291
    iput-wide v6, p0, Lccsancom/mbridge/msdk/b/a;->j:J

    .line 337
    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_0

    const-wide/16 v6, 0xe10

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 337
    :goto_0
    nop

    .line 3283
    iput-wide v6, p0, Lccsancom/mbridge/msdk/b/a;->i:J

    .line 339
    const-string v2, "rurl"

    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 4275
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/b/a;->h:Z

    .line 340
    const-string v2, "uct"

    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 5267
    iput-wide v6, p0, Lccsancom/mbridge/msdk/b/a;->k:J

    .line 341
    const-string v2, "ujds"

    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 6259
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/b/a;->l:Z

    .line 342
    const-string v2, "n2"

    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 6592
    iput v2, p0, Lccsancom/mbridge/msdk/b/a;->m:I

    .line 343
    const-string v2, "n3"

    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 6600
    iput v2, p0, Lccsancom/mbridge/msdk/b/a;->n:I

    .line 344
    const-string v2, "is_startup_crashsystem"

    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 7194
    iput v2, p0, Lccsancom/mbridge/msdk/b/a;->s:I

    .line 345
    invoke-virtual {v5, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 7219
    iput v2, p0, Lccsancom/mbridge/msdk/b/a;->p:I

    .line 346
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v6, v8

    if-nez v2, :cond_1

    const-wide/16 v6, 0x1c20

    goto :goto_1

    .line 347
    :cond_1
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 346
    :goto_1
    nop

    .line 7231
    iput-wide v6, p0, Lccsancom/mbridge/msdk/b/a;->o:J

    .line 348
    const/16 v0, 0x64

    invoke-virtual {v5, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 8219
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->p:I

    .line 349
    const-string v0, "opent"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 9211
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->q:I

    .line 350
    const-string v0, "sfct"

    const-wide/16 v6, 0x708

    invoke-virtual {v5, v0, v6, v7}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 9251
    iput-wide v6, p0, Lccsancom/mbridge/msdk/b/a;->N:J

    .line 351
    const-string v0, "upgd"

    invoke-virtual {v5, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 10154
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->B:I

    .line 352
    const-string v0, "upsrl"

    invoke-virtual {v5, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 11146
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->A:I

    .line 353
    const-string v0, "updevid"

    invoke-virtual {v5, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 11162
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->C:I

    .line 354
    const-string v0, "sc"

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 11170
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->D:I

    .line 355
    const-string v0, "up_tips"

    invoke-virtual {v5, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 11178
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->E:I

    .line 356
    const-string v0, "iseu"

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 11186
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->F:I

    .line 357
    const-string v0, "jm_unit"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12138
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->G:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 359
    nop

    .line 360
    :try_start_2
    const-string v0, "atf"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 362
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 363
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v10

    if-ge v7, v10, :cond_3

    .line 364
    invoke-virtual {v0, v7}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    .line 365
    invoke-static {v10}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 366
    new-instance v11, Lccsanorg/json/JSONObject;

    invoke-direct {v11, v10}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    new-instance v10, Lccsancom/mbridge/msdk/foundation/entity/a;

    const-string v12, "adtype"

    invoke-virtual {v11, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    const-string v13, "unitid"

    invoke-virtual {v11, v13}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v12, v11}, Lccsancom/mbridge/msdk/foundation/entity/a;-><init>(ILjava/lang/String;)V

    .line 368
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 372
    :cond_3
    if-eqz v4, :cond_4

    .line 373
    nop

    .line 13098
    iput-object v4, p0, Lccsancom/mbridge/msdk/b/a;->t:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 377
    :cond_4
    goto :goto_3

    .line 375
    :catch_0
    move-exception v0

    .line 376
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    :goto_3
    const-string v0, "adct"

    const v4, 0x3f480

    invoke-virtual {v5, v0, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 13243
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->O:I

    .line 381
    const-string v0, "confirm_title"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13618
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->P:Ljava/lang/String;

    .line 382
    const-string v0, "confirm_description"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13626
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->Q:Ljava/lang/String;

    .line 383
    const-string v0, "confirm_t"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13634
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->R:Ljava/lang/String;

    .line 384
    const-string v0, "confirm_c_rv"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13642
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->S:Ljava/lang/String;

    .line 385
    const-string v0, "confirm_c_play"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13650
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->T:Ljava/lang/String;

    .line 387
    const-string v0, "adchoice_icon"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13710
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->U:Ljava/lang/String;

    .line 388
    const-string v0, "adchoice_link"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13726
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->W:Ljava/lang/String;

    .line 389
    const-string v0, "adchoice_size"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14718
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->V:Ljava/lang/String;

    .line 390
    const-string v0, "platform_logo"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14742
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->Y:Ljava/lang/String;

    .line 391
    const-string v0, "platform_name"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15734
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->X:Ljava/lang/String;

    .line 392
    const-string v0, "cdnate_cfg"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/b/a;->d(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 15750
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->Z:Ljava/util/Map;

    .line 394
    const-string v0, "atrqt"

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 16094
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->a:I

    .line 395
    const-string v0, "iupdid"

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 16927
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->aa:I

    .line 396
    const-string v0, "mcs"

    const/16 v4, 0x78

    invoke-virtual {v5, v0, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 17086
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->y:I

    .line 397
    const-string v0, "ab_id"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18078
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->z:Ljava/lang/String;

    .line 398
    const-string v0, "omsdkjs_url"

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18937
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->ab:Ljava/lang/String;

    .line 399
    const-string v0, "tcto"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 400
    cmp-long v0, v10, v8

    if-nez v0, :cond_5

    .line 401
    const-wide/16 v7, 0xa

    .line 19541
    iput-wide v7, p0, Lccsancom/mbridge/msdk/b/a;->d:J

    .line 401
    goto :goto_5

    .line 403
    :cond_5
    nop

    .line 20541
    iput-wide v10, p0, Lccsancom/mbridge/msdk/b/a;->d:J

    .line 405
    const-string v0, "jt"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 406
    nop

    .line 407
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 408
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 409
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 410
    invoke-virtual {v0, v7}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v8

    .line 412
    const-string v9, "domain"

    invoke-virtual {v8, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "format"

    invoke-virtual {v8, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 414
    :cond_6
    nop

    .line 21533
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->e:Ljava/util/Map;

    .line 418
    :cond_7
    :goto_5
    const-string v0, "mraid_js"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21957
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->ad:Ljava/lang/String;

    .line 419
    const-string v0, "web_env_url"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22947
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->ac:Ljava/lang/String;

    .line 420
    const-string v0, "alrbs"

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 421
    const/4 v3, 0x2

    if-gt v0, v3, :cond_8

    if-gez v0, :cond_9

    :cond_8
    const/4 v0, 0x0

    .line 422
    :cond_9
    nop

    .line 22967
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->ae:I

    .line 424
    const-string v0, "GDPR_area"

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 22977
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/b/a;->af:Z

    .line 426
    const-string v0, "ct"

    invoke-virtual {v5, v0, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 22987
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->ag:I

    .line 428
    const-string v0, "ercd"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 429
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 430
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 431
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_b

    .line 432
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONArray;->optInt(I)I

    move-result v7

    .line 433
    if-eqz v7, :cond_a

    .line 434
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 437
    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 438
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    nop

    .line 22997
    iput-object v3, p0, Lccsancom/mbridge/msdk/b/a;->ah:Ljava/util/ArrayList;

    .line 443
    :cond_c
    const-string v0, "hst"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    if-nez v3, :cond_10

    .line 446
    :try_start_4
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 449
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 450
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 452
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v3, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 453
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 454
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 455
    invoke-virtual {v3, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_d
    goto :goto_7

    .line 459
    :cond_e
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 460
    nop

    .line 23007
    iput-object v4, p0, Lccsancom/mbridge/msdk/b/a;->ai:Ljava/util/HashMap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 464
    :cond_f
    goto :goto_8

    .line 462
    :catch_1
    move-exception v0

    .line 463
    :try_start_5
    const-string v3, "SETTING"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_10
    :goto_8
    const-string v0, "refactor_switch"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 469
    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_13

    .line 470
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v4

    .line 471
    invoke-virtual {v4}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 472
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 473
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 474
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v4, v7}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 475
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 23126
    iget-object v8, p0, Lccsancom/mbridge/msdk/b/a;->M:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 477
    :cond_11
    goto :goto_a

    .line 469
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 482
    :cond_13
    :try_start_6
    const-string v0, "lqcnt"

    const/16 v3, 0x1e

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 483
    const-string v3, "lqto"

    const/4 v4, 0x5

    invoke-virtual {v5, v3, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 484
    const-string v4, "lqswt"

    invoke-virtual {v5, v4, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 485
    const-string v6, "lqtype"

    invoke-virtual {v5, v6, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 486
    nop

    .line 23801
    iput v3, p0, Lccsancom/mbridge/msdk/b/a;->I:I

    .line 487
    nop

    .line 24793
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->H:I

    .line 488
    nop

    .line 24809
    iput v4, p0, Lccsancom/mbridge/msdk/b/a;->J:I

    .line 489
    nop

    .line 24817
    iput v6, p0, Lccsancom/mbridge/msdk/b/a;->K:I

    .line 490
    const-string v0, "lqpt"

    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 491
    if-lez v0, :cond_14

    const v3, 0xffff

    if-ge v0, v3, :cond_14

    .line 492
    nop

    .line 24821
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->L:I

    .line 24822
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/m;->a()Lccsancom/mbridge/msdk/foundation/same/net/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/foundation/same/net/m;->a(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 495
    :cond_14
    goto :goto_b

    .line 494
    :catch_2
    move-exception v0

    .line 497
    :goto_b
    :try_start_7
    const-string v0, "wvddt"

    invoke-virtual {v5, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 498
    nop

    .line 25017
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->aj:I

    .line 499
    const-string v0, "host_setting"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c()Lccsancom/mbridge/msdk/foundation/same/net/g/d;

    move-result-object v3

    iget-object v3, v3, Lccsancom/mbridge/msdk/foundation/same/net/g/d;->c:Ljava/lang/String;

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 25118
    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->x:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 502
    :try_start_8
    const-string v0, "l"

    const/4 v3, 0x3

    invoke-virtual {v5, v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 503
    const-string v3, "k"

    invoke-virtual {v5, v3, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 504
    if-ne v3, v1, :cond_15

    const/4 v3, 0x1

    goto :goto_c

    :cond_15
    const/4 v3, 0x0

    .line 505
    :goto_c
    const-string v4, "m"

    invoke-virtual {v5, v4, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 506
    if-ne v4, v1, :cond_16

    goto :goto_d

    :cond_16
    const/4 v1, 0x0

    .line 507
    :goto_d
    nop

    .line 25838
    iput v0, p0, Lccsancom/mbridge/msdk/b/a;->v:I

    .line 508
    nop

    .line 26830
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/b/a;->u:Z

    .line 509
    nop

    .line 26846
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/b/a;->w:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 512
    goto :goto_e

    .line 510
    :catch_3
    move-exception v0

    .line 511
    :try_start_9
    const-string v1, "Setting"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 516
    :goto_e
    move-object v4, p0

    goto :goto_f

    .line 514
    :catch_4
    move-exception v0

    move-object v4, p0

    goto :goto_10

    .line 516
    :cond_17
    :goto_f
    goto :goto_11

    .line 514
    :catch_5
    move-exception v0

    .line 515
    :goto_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    :goto_11
    return-object v4
.end method

.method private static d(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/b/a$a;",
            ">;"
        }
    .end annotation

    .line 760
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    return-object v0

    .line 763
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 764
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 765
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 766
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 767
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 768
    new-instance v4, Lccsancom/mbridge/msdk/b/a$a;

    invoke-direct {v4}, Lccsancom/mbridge/msdk/b/a$a;-><init>()V

    .line 769
    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v5

    .line 770
    if-eqz v5, :cond_1

    .line 771
    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/b/a$a;->a(Lccsanorg/json/JSONObject;)V

    .line 773
    :cond_1
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    goto :goto_0

    .line 775
    :cond_2
    return-object v1

    .line 780
    :catch_0
    move-exception p0

    .line 781
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 782
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 776
    :catch_1
    move-exception p0

    .line 777
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 778
    invoke-virtual {p0}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 784
    :cond_3
    nop

    .line 785
    :cond_4
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final A()I
    .locals 1

    .line 588
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->m:I

    return v0
.end method

.method public final B()I
    .locals 1

    .line 596
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->n:I

    return v0
.end method

.method public final C()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->P:Ljava/lang/String;

    return-object v0
.end method

.method public final D()Ljava/lang/String;
    .locals 1

    .line 622
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->Q:Ljava/lang/String;

    return-object v0
.end method

.method public final E()Ljava/lang/String;
    .locals 1

    .line 630
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->R:Ljava/lang/String;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    .line 638
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->S:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/lang/String;
    .locals 1

    .line 646
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final H()V
    .locals 12

    .line 654
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 655
    nop

    .line 29684
    iget-object v1, p0, Lccsancom/mbridge/msdk/b/a;->P:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/a;->Q:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/a;->R:Ljava/lang/String;

    .line 29685
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/a;->S:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 655
    :goto_0
    const-string v4, "\u786e\u8ba4\u5173\u95ed"

    const-string v5, "\u5173\u95ed\u540e\u60a8\u5c06\u4e0d\u4f1a\u83b7\u5f97\u4efb\u4f55\u5956\u52b1\u5662~ "

    const-string v6, "\u786e\u8ba4\u5173\u95ed\uff1f"

    const-string v7, "zh"

    const-string v8, "Continue"

    const-string v9, "Close it"

    const-string v10, "You will not be rewarded after closing the window"

    const-string v11, "Confirm to close? "

    if-nez v1, :cond_2

    .line 656
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    iput-object v6, p0, Lccsancom/mbridge/msdk/b/a;->P:Ljava/lang/String;

    .line 658
    iput-object v5, p0, Lccsancom/mbridge/msdk/b/a;->Q:Ljava/lang/String;

    .line 659
    iput-object v4, p0, Lccsancom/mbridge/msdk/b/a;->R:Ljava/lang/String;

    .line 660
    const-string v1, "\u7ee7\u7eed\u89c2\u770b"

    iput-object v1, p0, Lccsancom/mbridge/msdk/b/a;->S:Ljava/lang/String;

    goto :goto_1

    .line 662
    :cond_1
    iput-object v11, p0, Lccsancom/mbridge/msdk/b/a;->P:Ljava/lang/String;

    .line 663
    iput-object v10, p0, Lccsancom/mbridge/msdk/b/a;->Q:Ljava/lang/String;

    .line 664
    iput-object v9, p0, Lccsancom/mbridge/msdk/b/a;->R:Ljava/lang/String;

    .line 665
    iput-object v8, p0, Lccsancom/mbridge/msdk/b/a;->S:Ljava/lang/String;

    .line 668
    :cond_2
    :goto_1
    nop

    .line 29689
    iget-object v1, p0, Lccsancom/mbridge/msdk/b/a;->P:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/a;->Q:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/a;->R:Ljava/lang/String;

    .line 29690
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lccsancom/mbridge/msdk/b/a;->T:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 668
    :goto_2
    if-nez v2, :cond_5

    .line 669
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    iput-object v6, p0, Lccsancom/mbridge/msdk/b/a;->P:Ljava/lang/String;

    .line 671
    iput-object v5, p0, Lccsancom/mbridge/msdk/b/a;->Q:Ljava/lang/String;

    .line 672
    iput-object v4, p0, Lccsancom/mbridge/msdk/b/a;->R:Ljava/lang/String;

    .line 673
    const-string v0, "\u7ee7\u7eed\u8bd5\u73a9"

    iput-object v0, p0, Lccsancom/mbridge/msdk/b/a;->T:Ljava/lang/String;

    goto :goto_3

    .line 675
    :cond_4
    iput-object v11, p0, Lccsancom/mbridge/msdk/b/a;->P:Ljava/lang/String;

    .line 676
    iput-object v10, p0, Lccsancom/mbridge/msdk/b/a;->Q:Ljava/lang/String;

    .line 677
    iput-object v9, p0, Lccsancom/mbridge/msdk/b/a;->R:Ljava/lang/String;

    .line 678
    iput-object v8, p0, Lccsancom/mbridge/msdk/b/a;->T:Ljava/lang/String;

    .line 681
    :cond_5
    :goto_3
    return-void
.end method

.method public final I()Ljava/lang/String;
    .locals 1

    .line 706
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->U:Ljava/lang/String;

    return-object v0
.end method

.method public final J()Ljava/lang/String;
    .locals 1

    .line 714
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->V:Ljava/lang/String;

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    .line 722
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final L()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/b/a$a;",
            ">;"
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->Z:Ljava/util/Map;

    return-object v0
.end method

.method public final M()I
    .locals 1

    .line 789
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->H:I

    return v0
.end method

.method public final N()I
    .locals 1

    .line 797
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->I:I

    return v0
.end method

.method public final O()I
    .locals 1

    .line 805
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->J:I

    return v0
.end method

.method public final P()I
    .locals 1

    .line 813
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->K:I

    return v0
.end method

.method public final Q()Z
    .locals 1

    .line 834
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/b/a;->u:Z

    return v0
.end method

.method public final R()I
    .locals 1

    .line 842
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->v:I

    return v0
.end method

.method public final S()Z
    .locals 1

    .line 850
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/b/a;->w:Z

    return v0
.end method

.method public final T()Ljava/lang/String;
    .locals 1

    .line 933
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public final U()Ljava/lang/String;
    .locals 1

    .line 943
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public final V()Ljava/lang/String;
    .locals 1

    .line 953
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->ad:Ljava/lang/String;

    return-object v0
.end method

.method public final W()I
    .locals 1

    .line 963
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->ae:I

    return v0
.end method

.method public final X()Z
    .locals 1

    .line 973
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/b/a;->af:Z

    return v0
.end method

.method public final Y()I
    .locals 1

    .line 983
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->ag:I

    return v0
.end method

.method public final Z()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 993
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->ah:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/a;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->t:Ljava/util/List;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 86
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->y:I

    .line 87
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 231
    iput-wide p1, p0, Lccsancom/mbridge/msdk/b/a;->o:J

    .line 232
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lccsancom/mbridge/msdk/b/a;->r:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/b/a;->l:Z

    .line 260
    return-void
.end method

.method public final aa()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->ai:Ljava/util/HashMap;

    return-object v0
.end method

.method public final ab()I
    .locals 1

    .line 1013
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->aj:I

    return v0
.end method

.method public final ac()Ljava/lang/String;
    .locals 4

    .line 1031
    nop

    .line 1033
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1034
    const-string v1, "cfc"

    iget v2, p0, Lccsancom/mbridge/msdk/b/a;->b:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1035
    const-string v1, "cfb"

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/b/a;->f:Z

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 1036
    const-string v1, "plct"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/b/a;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 1037
    const-string v1, "awct"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/b/a;->j:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 1038
    const-string v1, "rurl"

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/b/a;->h:Z

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 1039
    const-string v1, "ujds"

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/b/a;->l:Z

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 1040
    const-string v1, "plctb"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/b/a;->o:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 1041
    const-string v1, "tcto"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/b/a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 1042
    const-string v1, "mv_wildcard"

    iget-object v2, p0, Lccsancom/mbridge/msdk/b/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1043
    const-string v1, "is_startup_crashsystem"

    iget v2, p0, Lccsancom/mbridge/msdk/b/a;->s:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1044
    const-string v1, "sfct"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/b/a;->N:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 1045
    const-string v1, "pcrn"

    iget v2, p0, Lccsancom/mbridge/msdk/b/a;->p:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1046
    const-string v1, "adct"

    iget v2, p0, Lccsancom/mbridge/msdk/b/a;->O:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1047
    const-string v1, "atrqt"

    iget v2, p0, Lccsancom/mbridge/msdk/b/a;->a:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1048
    const-string v1, "omsdkjs_url"

    iget-object v2, p0, Lccsancom/mbridge/msdk/b/a;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1049
    const-string v1, "mcs"

    iget v2, p0, Lccsancom/mbridge/msdk/b/a;->y:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1050
    const-string v1, "GDPR_area"

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/b/a;->af:Z

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 1051
    const-string v1, "alrbs"

    iget v2, p0, Lccsancom/mbridge/msdk/b/a;->ae:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1052
    const-string v1, "ct"

    iget v2, p0, Lccsancom/mbridge/msdk/b/a;->ag:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1054
    const-string v1, "isDefault"

    iget v2, p0, Lccsancom/mbridge/msdk/b/a;->ak:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1056
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    goto :goto_0

    .line 1057
    :catchall_0
    move-exception v0

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setting"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1060
    :goto_0
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->z:Ljava/lang/String;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    .line 94
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->a:I

    .line 95
    return-void
.end method

.method public final b(J)V
    .locals 0

    .line 251
    iput-wide p1, p0, Lccsancom/mbridge/msdk/b/a;->N:J

    .line 252
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .line 275
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/b/a;->h:Z

    .line 276
    return-void
.end method

.method public final c()I
    .locals 1

    .line 82
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->y:I

    return v0
.end method

.method public final c(J)V
    .locals 0

    .line 283
    iput-wide p1, p0, Lccsancom/mbridge/msdk/b/a;->i:J

    .line 284
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 937
    iput-object p1, p0, Lccsancom/mbridge/msdk/b/a;->ab:Ljava/lang/String;

    .line 938
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 584
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/b/a;->f:Z

    .line 585
    return-void
.end method

.method public final c(I)Z
    .locals 1

    .line 130
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->M:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final d()I
    .locals 1

    .line 90
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->a:I

    return v0
.end method

.method public final d(I)V
    .locals 0

    .line 146
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->A:I

    .line 147
    return-void
.end method

.method public final d(J)V
    .locals 0

    .line 291
    iput-wide p1, p0, Lccsancom/mbridge/msdk/b/a;->j:J

    .line 292
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 977
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/b/a;->af:Z

    .line 978
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final e(I)V
    .locals 0

    .line 154
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->B:I

    .line 155
    return-void
.end method

.method public final e(J)V
    .locals 0

    .line 541
    iput-wide p1, p0, Lccsancom/mbridge/msdk/b/a;->d:J

    .line 542
    return-void
.end method

.method public final f()I
    .locals 1

    .line 142
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->A:I

    return v0
.end method

.method public final f(I)V
    .locals 0

    .line 162
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->C:I

    .line 163
    return-void
.end method

.method public final g()I
    .locals 1

    .line 150
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->B:I

    return v0
.end method

.method public final g(I)V
    .locals 0

    .line 170
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->D:I

    .line 171
    return-void
.end method

.method public final h()I
    .locals 1

    .line 158
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->C:I

    return v0
.end method

.method public final h(I)V
    .locals 0

    .line 178
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->E:I

    .line 179
    return-void
.end method

.method public final i()I
    .locals 1

    .line 166
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->D:I

    return v0
.end method

.method public final i(I)V
    .locals 0

    .line 186
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->F:I

    .line 187
    return-void
.end method

.method public final j()I
    .locals 1

    .line 174
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->E:I

    return v0
.end method

.method public final j(I)V
    .locals 0

    .line 194
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->s:I

    .line 195
    return-void
.end method

.method public final k()I
    .locals 1

    .line 182
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->F:I

    return v0
.end method

.method public final k(I)V
    .locals 0

    .line 243
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->O:I

    .line 244
    return-void
.end method

.method public final l()I
    .locals 1

    .line 190
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->s:I

    return v0
.end method

.method public final l(I)V
    .locals 0

    .line 305
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->b:I

    .line 306
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lccsancom/mbridge/msdk/b/a;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final m(I)V
    .locals 0

    .line 967
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->ae:I

    .line 968
    return-void
.end method

.method public final n()I
    .locals 1

    .line 207
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->q:I

    return v0
.end method

.method public final n(I)V
    .locals 0

    .line 987
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->ag:I

    .line 988
    return-void
.end method

.method public final o()I
    .locals 1

    .line 215
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->p:I

    return v0
.end method

.method public final o(I)V
    .locals 0

    .line 1027
    iput p1, p0, Lccsancom/mbridge/msdk/b/a;->ak:I

    .line 1028
    return-void
.end method

.method public final p()J
    .locals 5

    .line 224
    iget-wide v0, p0, Lccsancom/mbridge/msdk/b/a;->o:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 225
    const-wide/16 v0, 0x1c20

    iput-wide v0, p0, Lccsancom/mbridge/msdk/b/a;->o:J

    .line 227
    :cond_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/b/a;->o:J

    return-wide v0
.end method

.method public final q()I
    .locals 1

    .line 239
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->O:I

    return v0
.end method

.method public final r()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lccsancom/mbridge/msdk/b/a;->N:J

    return-wide v0
.end method

.method public final s()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/b/a;->l:Z

    return v0
.end method

.method public final t()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lccsancom/mbridge/msdk/b/a;->k:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " cfc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/mbridge/msdk/b/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getpf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/b/a;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/b/a;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/b/a;->h:Z

    return v0
.end method

.method public final v()J
    .locals 2

    .line 279
    iget-wide v0, p0, Lccsancom/mbridge/msdk/b/a;->i:J

    return-wide v0
.end method

.method public final w()I
    .locals 1

    .line 301
    iget v0, p0, Lccsancom/mbridge/msdk/b/a;->b:I

    return v0
.end method

.method public final x()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lccsancom/mbridge/msdk/b/a;->c:J

    return-wide v0
.end method

.method public final y()J
    .locals 2

    .line 521
    iget-wide v0, p0, Lccsancom/mbridge/msdk/b/a;->g:J

    return-wide v0
.end method

.method public final z()J
    .locals 4

    .line 537
    iget-wide v0, p0, Lccsancom/mbridge/msdk/b/a;->d:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method
