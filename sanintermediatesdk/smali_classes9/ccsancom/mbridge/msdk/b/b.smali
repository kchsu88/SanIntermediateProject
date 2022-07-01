.class public Lccsancom/mbridge/msdk/b/b;
.super Ljava/lang/Object;
.source "SettingManager.java"


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lccsancom/mbridge/msdk/b/b;

.field private static c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lccsancom/mbridge/msdk/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lccsancom/mbridge/msdk/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/b/b;->a:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/b/b;->b:Lccsancom/mbridge/msdk/b/b;

    .line 142
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/b/b;->c:Ljava/util/HashMap;

    .line 144
    sput-object v0, Lccsancom/mbridge/msdk/b/b;->d:Lccsancom/mbridge/msdk/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized a()Lccsancom/mbridge/msdk/b/b;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/b/b;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/b/b;->b:Lccsancom/mbridge/msdk/b/b;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lccsancom/mbridge/msdk/b/b;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/b/b;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/b/b;->b:Lccsancom/mbridge/msdk/b/b;

    .line 34
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/b/b;->b:Lccsancom/mbridge/msdk/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 148
    :try_start_0
    const-string v0, "mbridge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object p0

    .line 149
    invoke-interface {p0}, Lccsanandroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 150
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 151
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    sget-object v2, Lccsancom/mbridge/msdk/b/b;->c:Ljava/util/HashMap;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lccsancom/mbridge/msdk/b/d;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    goto :goto_0

    .line 159
    :cond_1
    goto :goto_1

    .line 157
    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    :goto_1
    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;
    .locals 1

    .line 190
    nop

    .line 191
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    const/4 p2, 0x0

    .line 196
    sget-object v0, Lccsancom/mbridge/msdk/b/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    sget-object p2, Lccsancom/mbridge/msdk/b/b;->c:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/b/d;

    goto :goto_0

    .line 200
    :cond_1
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Lccsancom/mbridge/msdk/b/d;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p2

    .line 202
    sget-object v0, Lccsancom/mbridge/msdk/b/b;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    move-object p1, p2

    goto :goto_0

    .line 203
    :catch_0
    move-exception p1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, p2

    .line 208
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 218
    nop

    .line 219
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {p3}, Lccsancom/mbridge/msdk/b/d;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p2

    .line 221
    sget-object p3, Lccsancom/mbridge/msdk/b/b;->c:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 6

    .line 38
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->x()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 42
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->y()J

    move-result-wide v4

    add-long/2addr v4, v0

    .line 43
    cmp-long p1, v4, v2

    if-lez p1, :cond_0

    .line 44
    const/4 p1, 0x0

    return p1

    .line 47
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 11

    .line 52
    const-string v0, "_"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 55
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {v2, p2, p3}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 57
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 58
    if-nez p1, :cond_0

    .line 59
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    .line 60
    goto :goto_0

    .line 58
    :cond_0
    move-wide v5, v7

    .line 63
    :goto_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->r()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 64
    add-long/2addr v5, v7

    .line 65
    cmp-long p1, v5, v3

    if-lez p1, :cond_1

    .line 66
    return v1

    .line 68
    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v2, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/w;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 p1, 0x1

    return p1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    return v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 79
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 81
    invoke-virtual {p0, p2}, Lccsancom/mbridge/msdk/b/b;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, v2, p1}, Lccsancom/mbridge/msdk/b/b;->a(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Lccsancom/mbridge/msdk/b/c;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/b/c;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    .line 83
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->h()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v1, v3, p2, v4}, Lccsancom/mbridge/msdk/b/c;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-virtual {p0, p2, p1}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    .line 87
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->t()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 90
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/d;->v()J

    move-result-wide p1

    add-long/2addr p1, v0

    .line 92
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 93
    const/4 p1, 0x0

    return p1

    .line 97
    :cond_1
    return v2
.end method

.method public final b()Lccsancom/mbridge/msdk/b/a;
    .locals 5

    .line 237
    new-instance v0, Lccsancom/mbridge/msdk/b/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/b/a;-><init>()V

    .line 238
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->l(I)V

    .line 239
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->c(Z)V

    .line 240
    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v2, v3}, Lccsancom/mbridge/msdk/b/a;->c(J)V

    .line 241
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lccsancom/mbridge/msdk/b/a;->d(J)V

    .line 242
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/b/a;->b(Z)V

    .line 243
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/b/a;->a(Z)V

    .line 244
    const-wide/16 v3, 0x1c20

    invoke-virtual {v0, v3, v4}, Lccsancom/mbridge/msdk/b/a;->a(J)V

    .line 245
    const-string v3, "mbridge"

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/b/a;->a(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->j(I)V

    .line 247
    const-wide/16 v3, 0x708

    invoke-virtual {v0, v3, v4}, Lccsancom/mbridge/msdk/b/a;->b(J)V

    .line 248
    const v3, 0x3f480

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/b/a;->k(I)V

    .line 249
    const-wide/16 v3, 0xa

    invoke-virtual {v0, v3, v4}, Lccsancom/mbridge/msdk/b/a;->e(J)V

    .line 250
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->e(I)V

    .line 251
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->d(I)V

    .line 252
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->f(I)V

    .line 253
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/b/a;->g(I)V

    .line 254
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->h(I)V

    .line 255
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/b/a;->i(I)V

    .line 256
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/b/a;->b(I)V

    .line 257
    const-string v3, "https://cdn-adn-https.rayjump.com/cdn-adn/v2/portal/19/08/20/11/06/5d5b63cb457e2.js"

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/b/a;->c(Ljava/lang/String;)V

    .line 258
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/b/a;->a(I)V

    .line 259
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/b/a;->d(Z)V

    .line 260
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/b/a;->m(I)V

    .line 261
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/b/a;->n(I)V

    .line 262
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/a;->o(I)V

    .line 263
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;
    .locals 1

    .line 109
    sget-object v0, Lccsancom/mbridge/msdk/b/b;->d:Lccsancom/mbridge/msdk/b/a;

    if-nez v0, :cond_1

    .line 111
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Lccsancom/mbridge/msdk/b/a;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    sput-object p1, Lccsancom/mbridge/msdk/b/b;->d:Lccsancom/mbridge/msdk/b/a;

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->H()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    :cond_1
    :goto_0
    sget-object p1, Lccsancom/mbridge/msdk/b/b;->d:Lccsancom/mbridge/msdk/b/a;

    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {p2}, Lccsancom/mbridge/msdk/b/a;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object p1

    sput-object p1, Lccsancom/mbridge/msdk/b/b;->d:Lccsancom/mbridge/msdk/b/a;

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/a;->H()V

    .line 106
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;
    .locals 0

    .line 164
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/b/b;->e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    .line 165
    if-nez p1, :cond_0

    .line 166
    invoke-static {}, Lccsancom/mbridge/msdk/b/d;->m()Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    .line 168
    :cond_0
    return-object p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 125
    const-string v0, ""

    if-nez p1, :cond_0

    .line 126
    return-object v0

    .line 129
    :cond_0
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    if-nez p1, :cond_1

    .line 131
    goto :goto_0

    .line 130
    :cond_1
    move-object v0, p1

    .line 133
    :goto_0
    return-object v0

    .line 134
    :catch_0
    move-exception p1

    .line 135
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    :cond_2
    return-object v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;
    .locals 0

    .line 172
    nop

    .line 1213
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/b/b;->g(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    .line 172
    nop

    .line 173
    if-nez p1, :cond_0

    .line 174
    invoke-static {}, Lccsancom/mbridge/msdk/b/d;->m()Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    .line 176
    :cond_0
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 229
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ivreward_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/b/b;->g(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    .line 182
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/d;->j()I

    move-result p2

    if-nez p2, :cond_0

    .line 183
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/b/d;->c(I)V

    .line 186
    :cond_0
    return-object p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 3

    .line 233
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ivreward_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->c(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;
    .locals 0

    .line 213
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/b/b;->g(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    return-object p1
.end method
