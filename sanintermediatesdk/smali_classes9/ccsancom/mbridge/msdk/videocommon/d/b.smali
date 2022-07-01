.class public final Lccsancom/mbridge/msdk/videocommon/d/b;
.super Ljava/lang/Object;
.source "RewardSettingManager.java"


# static fields
.field public static a:Lccsancom/mbridge/msdk/videocommon/d/a;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lccsancom/mbridge/msdk/videocommon/d/b;


# instance fields
.field private b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/videocommon/d/b;->c:Ljava/util/Map;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/videocommon/d/b;->a:Lccsancom/mbridge/msdk/videocommon/d/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/b;->b:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static declared-synchronized a()Lccsancom/mbridge/msdk/videocommon/d/b;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/videocommon/d/b;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/d/b;->d:Lccsancom/mbridge/msdk/videocommon/d/b;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lccsancom/mbridge/msdk/videocommon/d/b;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/videocommon/d/b;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/videocommon/d/b;->d:Lccsancom/mbridge/msdk/videocommon/d/b;

    .line 45
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/d/b;->d:Lccsancom/mbridge/msdk/videocommon/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Z)Lccsancom/mbridge/msdk/videocommon/d/c;
    .locals 7

    .line 259
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;-><init>()V

    .line 261
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 262
    new-instance v2, Lccsancom/mbridge/msdk/videocommon/b/b;

    const/16 v3, 0xf

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3, v4}, Lccsancom/mbridge/msdk/videocommon/b/b;-><init>(IILccsancom/mbridge/msdk/videocommon/b/a;)V

    .line 263
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->a(Ljava/util/List;)V

    .line 265
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->m(I)V

    .line 266
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->l(I)V

    .line 267
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->n(I)V

    .line 268
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->q(I)V

    .line 269
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->o(I)V

    .line 270
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->p(I)V

    .line 271
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->h(I)V

    .line 272
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->i(I)V

    .line 273
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->j(I)V

    .line 274
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->k(I)V

    .line 275
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->g(I)V

    .line 276
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->e(I)V

    .line 277
    const/16 v6, 0x46

    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/videocommon/d/c;->v(I)V

    .line 278
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->d(I)V

    .line 279
    if-eqz p0, :cond_0

    .line 280
    const/4 p0, 0x5

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/videocommon/d/c;->c(I)V

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/videocommon/d/c;->c(I)V

    .line 284
    :goto_0
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->b(I)V

    .line 285
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->a(I)V

    .line 286
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->f(I)V

    .line 287
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->r(I)V

    .line 289
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/d/c;->t(I)V

    .line 290
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 291
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/videocommon/d/c;->a(Ljava/util/ArrayList;)V

    .line 294
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/videocommon/d/c;->u(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_1

    .line 295
    :catch_0
    move-exception p0

    .line 296
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    :goto_1
    return-object v0
.end method

.method private final a(Lccsancom/mbridge/msdk/videocommon/d/c;)Z
    .locals 6

    .line 170
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/a;->c()J

    move-result-wide v0

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 175
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/d/c;->v()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 176
    cmp-long p1, v4, v2

    if-lez p1, :cond_0

    .line 177
    const/4 p1, 0x0

    return p1

    .line 181
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 74
    nop

    .line 75
    nop

    .line 76
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/c/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/videocommon/c/a;-><init>()V

    .line 78
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/mbridge/msdk/videocommon/c/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    .line 235
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    const-string p0, "unitSetting"

    .line 238
    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    .line 239
    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v1

    .line 241
    const-string v2, "unitId"

    .line 242
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 244
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    .line 245
    const/4 p0, 0x1

    return p0

    .line 253
    :cond_0
    nop

    .line 254
    return v0

    .line 250
    :catch_0
    move-exception p0

    .line 251
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    return v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 210
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alert url is exception ,url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, p2, v1, v2}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    return-void

    .line 214
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/videocommon/d/b$1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/d/b$1;-><init>(Lccsancom/mbridge/msdk/videocommon/d/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/download/g$a;)V

    .line 225
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;
    .locals 3

    .line 95
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reward"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 97
    sget-object p2, Lccsancom/mbridge/msdk/videocommon/d/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 98
    sget-object p2, Lccsancom/mbridge/msdk/videocommon/d/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/videocommon/d/c;

    monitor-exit v0

    return-object p1

    .line 100
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/d/c;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p2

    .line 102
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)Z

    move-result v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 106
    :cond_1
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/d/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v0

    return-object p2

    .line 110
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;
    .locals 3

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reward_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    sget-object p2, Lccsancom/mbridge/msdk/videocommon/d/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 117
    sget-object p2, Lccsancom/mbridge/msdk/videocommon/d/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/videocommon/d/c;

    monitor-exit v0

    return-object p1

    .line 119
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-static {p2}, Lccsancom/mbridge/msdk/videocommon/d/c;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p2

    .line 121
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Lccsancom/mbridge/msdk/videocommon/d/c;)Z

    move-result v1

    .line 122
    if-eqz v1, :cond_2

    .line 123
    if-nez p2, :cond_1

    .line 124
    invoke-static {p3}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 126
    :cond_1
    monitor-exit v0

    return-object p2

    .line 129
    :cond_2
    sget-object p3, Lccsancom/mbridge/msdk/videocommon/d/b;->c:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    monitor-exit v0

    return-object p2

    .line 133
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .line 198
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lccsancom/mbridge/msdk/videocommon/d/c;

    .line 200
    nop

    .line 3394
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/d/c;->a:Ljava/lang/String;

    .line 200
    nop

    .line 201
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/g;->a()Lccsancom/mbridge/msdk/videocommon/download/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/videocommon/download/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/videocommon/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 185
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reward_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p3}, Lccsancom/mbridge/msdk/videocommon/d/c;->c(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object p3

    .line 189
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/d/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    nop

    .line 1394
    sget-object p1, Lccsancom/mbridge/msdk/videocommon/d/c;->a:Ljava/lang/String;

    .line 191
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 192
    nop

    .line 2394
    sget-object p1, Lccsancom/mbridge/msdk/videocommon/d/c;->a:Ljava/lang/String;

    .line 192
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/c/c;)V
    .locals 6

    .line 83
    nop

    .line 84
    nop

    .line 85
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/c/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/videocommon/c/a;-><init>()V

    .line 87
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/videocommon/c/a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/c/c;)V

    .line 88
    return-void
.end method

.method public final b()Lccsancom/mbridge/msdk/videocommon/d/a;
    .locals 7

    .line 49
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/d/b;->a:Lccsancom/mbridge/msdk/videocommon/d/a;

    if-nez v0, :cond_3

    .line 50
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reward_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/d/a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v0

    .line 53
    nop

    .line 1138
    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/a;->b()J

    move-result-wide v1

    .line 1140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1141
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/a;->g()J

    move-result-wide v5

    add-long/2addr v5, v1

    .line 1142
    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    .line 1143
    const/4 v1, 0x0

    goto :goto_0

    .line 1146
    :cond_0
    const/4 v1, 0x1

    .line 53
    :goto_0
    if-nez v1, :cond_1

    .line 55
    return-object v0

    .line 57
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/d/b;->c()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v0

    return-object v0

    .line 63
    :cond_2
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/videocommon/d/b;->c()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v0

    return-object v0

    .line 68
    :cond_3
    return-object v0
.end method

.method public final c()Lccsancom/mbridge/msdk/videocommon/d/a;
    .locals 7

    .line 151
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/d/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/videocommon/d/a;-><init>()V

    .line 152
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 153
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "1"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v4, "9"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v4, "8"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 157
    new-instance v4, Lccsancom/mbridge/msdk/videocommon/b/c;

    const-string v5, "Virtual Item"

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lccsancom/mbridge/msdk/videocommon/b/c;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/videocommon/d/a;->a(Ljava/util/Map;)V

    .line 159
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/videocommon/d/a;->b(Ljava/util/Map;)V

    .line 160
    const-wide/32 v1, 0xa8c0

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/d/a;->a(J)V

    .line 161
    const-wide/16 v1, 0x1518

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/d/a;->b(J)V

    .line 162
    const-wide/16 v1, 0xe10

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/d/a;->c(J)V

    .line 163
    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/d/a;->d(J)V

    .line 164
    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/videocommon/d/a;->e(J)V

    .line 165
    invoke-virtual {v0, v6}, Lccsancom/mbridge/msdk/videocommon/d/a;->a(I)V

    .line 166
    return-object v0
.end method
