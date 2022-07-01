.class public final Lccsancom/mbridge/msdk/foundation/same/net/g/c;
.super Ljava/lang/Object;
.source "RequestControlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;,
        Lccsancom/mbridge/msdk/foundation/same/net/g/c$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "IDErrorUtil"

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->c:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 43
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->Y()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->b:I

    .line 45
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->Z()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->Z()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 46
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->Z()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->c:Ljava/util/ArrayList;

    .line 1163
    const/16 v1, 0x14

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, -0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, -0x4b1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/16 v3, -0x4b2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const/16 v3, -0x4b3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const/16 v3, -0x4b5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/16 v3, -0x4b6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, -0x4b8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, -0x515

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, -0x516

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, -0x519

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, -0x51a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, -0x51b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, -0x77b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x296a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x296b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const/16 v3, 0x296c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const/16 v3, 0x2971

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x2972

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x2978

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1164
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 50
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/g/c$1;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/g/c;-><init>()V

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;
    .locals 7

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;

    .line 74
    if-eqz v0, :cond_4

    .line 75
    iget v2, v0, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 76
    monitor-exit p0

    return-object v0

    .line 79
    :cond_0
    :try_start_1
    iget-wide v2, v0, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->a:J

    iget v4, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->b:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 84
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->a:J

    sub-long/2addr v3, v5

    iget v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->b:I

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    .line 88
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    :cond_1
    goto :goto_0

    .line 93
    :cond_2
    monitor-exit p0

    return-object v1

    .line 95
    :cond_3
    monitor-exit p0

    return-object v0

    .line 99
    :cond_4
    monitor-exit p0

    return-object v1

    .line 71
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public static a()Lccsancom/mbridge/msdk/foundation/same/net/g/c;
    .locals 1

    .line 53
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/g/c$b;->a()Lccsancom/mbridge/msdk/foundation/same/net/g/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/h/d;)Lccsancom/mbridge/msdk/foundation/same/net/k;
    .locals 9

    .line 107
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v0

    const-string v1, "app_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v1

    const-string v2, "placement_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v2

    const-string v3, "unit_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object v3

    const-string v4, "ad_type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/h/d;->b()Ljava/util/Map;

    move-result-object p1

    const-string v4, "token"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;

    move-result-object v4

    .line 117
    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-object v6, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->c:Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 119
    :try_start_0
    iget v6, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->b:I

    const/4 v7, -0x1

    const/16 v8, 0xc8

    if-eq v6, v7, :cond_0

    .line 120
    new-instance p1, Lccsanorg/json/JSONObject;

    iget-object v0, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    iget-object v1, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->c:Ljava/lang/String;

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v8, v1, v5}, Lccsancom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    .line 120
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/k;->a(Ljava/lang/Object;Lccsancom/mbridge/msdk/foundation/same/net/f/c;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object p1

    return-object p1

    .line 123
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 124
    return-object v5

    .line 127
    :cond_1
    if-eqz v3, :cond_3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 128
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 129
    const/16 v3, 0x11f

    if-eq p1, v3, :cond_3

    const/16 v3, 0x5e

    if-eq p1, v3, :cond_3

    .line 130
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lccsancom/mbridge/msdk/b/b;->d(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/b/d;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/b/d;->x()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    iget-wide v6, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->a:J

    add-long/2addr v2, v6

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long p1, v6, v2

    if-gez p1, :cond_2

    .line 133
    new-instance p1, Lccsanorg/json/JSONObject;

    iget-object v0, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/f/c;

    iget-object v1, v4, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;->c:Ljava/lang/String;

    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v8, v1, v5}, Lccsancom/mbridge/msdk/foundation/same/net/f/c;-><init>(I[BLjava/util/List;)V

    .line 133
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/k;->a(Ljava/lang/Object;Lccsancom/mbridge/msdk/foundation/same/net/f/c;)Lccsancom/mbridge/msdk/foundation/same/net/k;

    move-result-object p1

    return-object p1

    .line 136
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-object v5

    .line 144
    :cond_3
    goto :goto_0

    .line 142
    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IDErrorUtil"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_4
    :goto_0
    return-object v5
.end method

.method public final declared-synchronized a(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 58
    monitor-exit p0

    return-void

    .line 61
    :cond_0
    :try_start_1
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 62
    monitor-exit p0

    return-void

    .line 65
    :cond_1
    :try_start_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->c:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;

    invoke-direct {v0, p4, p5, p2, p3}, Lccsancom/mbridge/msdk/foundation/same/net/g/c$a;-><init>(JILjava/lang/String;)V

    .line 67
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/net/g/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    :cond_2
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
