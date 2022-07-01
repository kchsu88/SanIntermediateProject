.class public Lccsancom/mbridge/msdk/videocommon/a/a;
.super Ljava/lang/Object;
.source "VideoCampaignCache.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lccsancom/mbridge/msdk/videocommon/a/a;


# instance fields
.field private c:Lccsancom/mbridge/msdk/foundation/db/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lccsancom/mbridge/msdk/videocommon/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/videocommon/a/a;->a:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/videocommon/a/a;->b:Lccsancom/mbridge/msdk/videocommon/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/videocommon/a/a;->a:Ljava/lang/String;

    const-string v1, "RewardCampaignCache get Context is null"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    goto :goto_1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    :goto_1
    return-void
.end method

.method public static declared-synchronized a()Lccsancom/mbridge/msdk/videocommon/a/a;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/videocommon/a/a;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/a/a;->b:Lccsancom/mbridge/msdk/videocommon/a/a;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lccsancom/mbridge/msdk/videocommon/a/a;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/videocommon/a/a;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/videocommon/a/a;->b:Lccsancom/mbridge/msdk/videocommon/a/a;

    .line 45
    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/videocommon/a/a;->b:Lccsancom/mbridge/msdk/videocommon/a/a;
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

.method private b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 12

    .line 157
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v1

    .line 158
    nop

    .line 159
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/a;->d()J

    move-result-wide v4

    goto :goto_0

    .line 159
    :cond_0
    move-wide v4, v2

    .line 163
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 164
    if-eqz p1, :cond_3

    .line 165
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    .line 166
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v6, v10

    .line 167
    cmp-long p1, v8, v2

    if-lez p1, :cond_1

    cmp-long p1, v8, v6

    if-gez p1, :cond_2

    :cond_1
    cmp-long p1, v8, v2

    if-gtz p1, :cond_3

    cmp-long p1, v4, v6

    if-ltz p1, :cond_3

    .line 168
    :cond_2
    const/4 p1, 0x0

    return p1

    .line 172
    :cond_3
    return v0

    .line 173
    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/b;",
            ">;"
        }
    .end annotation

    .line 254
    nop

    .line 256
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    .line 261
    :cond_0
    goto :goto_0

    .line 259
    :catch_0
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    :goto_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 86
    nop

    .line 88
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, p2}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;III)Ljava/util/List;

    move-result-object p1

    .line 90
    if-eqz p1, :cond_2

    .line 91
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    move-object v0, p2

    goto :goto_1

    .line 100
    :catch_0
    move-exception p1

    move-object v0, p2

    goto :goto_2

    .line 99
    :cond_2
    :goto_1
    return-object v0

    .line 100
    :catch_1
    move-exception p1

    .line 101
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    return-object v0
.end method

.method public final a(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 181
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsancom/mbridge/msdk/videocommon/a/a;->a(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 187
    move-object v1, p0

    .line 189
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v0

    .line 190
    nop

    .line 191
    const-wide/16 v3, 0x0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/a;->d()J

    move-result-wide v5

    goto :goto_0

    .line 191
    :cond_0
    move-wide v5, v3

    .line 194
    :goto_0
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 196
    if-eqz p3, :cond_1

    .line 197
    iget-object v7, v1, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v11, p2

    move-object/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 199
    :cond_1
    iget-object v7, v1, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object v0

    .line 201
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 202
    if-eqz v0, :cond_7

    .line 203
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 205
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReadyState()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 206
    :cond_2
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    .line 207
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v12

    sub-long v12, v7, v12

    .line 208
    cmp-long v14, v10, v3

    if-lez v14, :cond_3

    cmp-long v14, v10, v12

    if-gez v14, :cond_4

    :cond_3
    cmp-long v14, v10, v3

    if-gtz v14, :cond_5

    cmp-long v10, v5, v12

    if-ltz v10, :cond_5

    .line 209
    :cond_4
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    :cond_5
    goto :goto_2

    .line 204
    :cond_6
    move-object v2, v9

    goto :goto_3

    .line 216
    :catch_0
    move-exception v0

    move-object v2, v9

    goto :goto_4

    .line 215
    :cond_7
    :goto_3
    return-object v2

    .line 216
    :catch_1
    move-exception v0

    .line 217
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    return-object v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    if-eqz v0, :cond_3

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/db/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 117
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 118
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 120
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReadyState()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/videocommon/a/a;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_1
    goto :goto_0

    .line 124
    :cond_2
    return-object p2

    .line 127
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 224
    nop

    .line 226
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 227
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v1

    .line 228
    nop

    .line 229
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/a;->d()J

    move-result-wide v4

    goto :goto_0

    .line 229
    :cond_0
    move-wide v4, v2

    .line 232
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 233
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 236
    if-eqz v0, :cond_3

    .line 237
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    .line 238
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v10

    sub-long v10, v6, v10

    .line 239
    cmp-long v12, v8, v2

    if-lez v12, :cond_1

    cmp-long v12, v8, v10

    if-gez v12, :cond_2

    :cond_1
    cmp-long v12, v8, v2

    if-gtz v12, :cond_3

    cmp-long v8, v4, v10

    if-ltz v8, :cond_3

    .line 240
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 243
    :cond_3
    goto :goto_1

    .line 235
    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 247
    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 248
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 250
    return-object v0

    .line 246
    :cond_5
    :goto_3
    return-object v0
.end method

.method public final declared-synchronized a(JLjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 518
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/db/d;->a(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    goto :goto_0

    .line 517
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 519
    :catch_0
    move-exception p1

    .line 520
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    sget-object p2, Lccsancom/mbridge/msdk/videocommon/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    :goto_0
    monitor-exit p0

    return-void

    .line 517
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 2

    .line 396
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception p1

    .line 400
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 401
    :cond_0
    :goto_0
    nop

    .line 402
    :goto_1
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)V
    .locals 3

    .line 381
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p2, v2, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 390
    :cond_1
    :goto_0
    nop

    .line 392
    :goto_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 486
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p1, p2, v1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    goto :goto_0

    .line 489
    :catch_0
    move-exception p1

    .line 490
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 492
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/db/d;->b(Ljava/lang/String;Ljava/util/List;)V

    .line 140
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 131
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V

    .line 134
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;IZLjava/lang/String;)I
    .locals 7

    .line 268
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 271
    if-eqz p3, :cond_0

    .line 272
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object p1

    .line 276
    :goto_0
    if-eqz p1, :cond_3

    .line 277
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 278
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReadyState()I

    move-result p3

    if-nez p3, :cond_1

    .line 279
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_1
    goto :goto_1

    .line 282
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 287
    :cond_3
    goto :goto_2

    .line 285
    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    :goto_2
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 324
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    return-object p1

    .line 330
    :cond_0
    goto :goto_0

    .line 328
    :catch_0
    move-exception p1

    .line 329
    sget-object p2, Lccsancom/mbridge/msdk/videocommon/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 14

    .line 418
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->f(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 423
    nop

    .line 424
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 425
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 426
    if-nez v1, :cond_1

    .line 427
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 429
    :cond_1
    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->p()J

    move-result-wide v4

    goto :goto_0

    .line 429
    :cond_2
    move-wide v4, v2

    .line 432
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 433
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/b;

    .line 435
    if-eqz v1, :cond_5

    .line 436
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/b;->c()J

    move-result-wide v8

    .line 437
    cmp-long v10, v8, v2

    if-gtz v10, :cond_3

    .line 438
    move-wide v8, v4

    .line 441
    :cond_3
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/b;->d()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v8, v8, v12

    add-long/2addr v10, v8

    cmp-long v8, v10, v6

    if-ltz v8, :cond_4

    .line 442
    goto :goto_1

    .line 444
    :cond_4
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/b;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 445
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lccsancom/mbridge/msdk/videocommon/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_5
    goto :goto_1

    .line 453
    :cond_6
    goto :goto_2

    .line 451
    :catch_0
    move-exception p1

    .line 452
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    :goto_2
    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    .line 458
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 459
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 460
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p2

    .line 461
    if-lez v1, :cond_0

    .line 462
    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_0

    .line 464
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/b;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lccsancom/mbridge/msdk/videocommon/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/b;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/foundation/same/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 472
    :cond_0
    goto :goto_1

    .line 470
    :catch_0
    move-exception p1

    .line 471
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/db/d;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_0
    return-void
.end method

.method public final c(Ljava/lang/String;IZLjava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 340
    move-object/from16 v1, p0

    .line 342
    nop

    .line 343
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 345
    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->p()J

    move-result-wide v5

    mul-long v5, v5, v3

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->p()J

    move-result-wide v5

    mul-long v5, v5, v3

    .line 351
    :goto_0
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 353
    if-eqz p3, :cond_1

    .line 354
    iget-object v7, v1, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, p1

    move/from16 v11, p2

    move-object/from16 v12, p4

    invoke-virtual/range {v7 .. v12}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 356
    :cond_1
    iget-object v7, v1, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p1

    move/from16 v11, p2

    invoke-virtual/range {v7 .. v12}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object v0

    .line 358
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 359
    if-eqz v0, :cond_6

    .line 360
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 361
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 362
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReadyState()I

    move-result v10

    if-nez v10, :cond_4

    .line 363
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlctb()J

    move-result-wide v10

    mul-long v10, v10, v3

    .line 364
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v12

    sub-long v12, v7, v12

    .line 365
    const-wide/16 v14, 0x0

    cmp-long v16, v10, v14

    if-gtz v16, :cond_2

    cmp-long v16, v5, v12

    if-gez v16, :cond_3

    :cond_2
    cmp-long v16, v10, v14

    if-lez v16, :cond_4

    cmp-long v14, v10, v12

    if-ltz v14, :cond_4

    .line 366
    :cond_3
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    :cond_4
    goto :goto_2

    .line 361
    :cond_5
    move-object v2, v9

    goto :goto_3

    .line 373
    :catch_0
    move-exception v0

    move-object v2, v9

    goto :goto_4

    .line 372
    :cond_6
    :goto_3
    return-object v2

    .line 373
    :catch_1
    move-exception v0

    .line 374
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    return-object v2
.end method

.method public final declared-synchronized c(Ljava/lang/String;I)V
    .locals 10

    monitor-enter p0

    .line 527
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 528
    if-nez v0, :cond_0

    .line 529
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 532
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->W()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 536
    :cond_1
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1, p1, p2, v5}, Lccsancom/mbridge/msdk/foundation/db/d;->b(Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v1

    .line 537
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 538
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 539
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v6

    .line 540
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v7

    .line 541
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v8

    .line 542
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v5

    .line 544
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 546
    invoke-static {v5}, Lccsancom/mbridge/msdk/videocommon/a;->b(Ljava/lang/String;)V

    .line 547
    goto :goto_1

    .line 550
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    if-ne v0, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, p1, p2, v2}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    goto :goto_3

    .line 526
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 552
    :catch_0
    move-exception p1

    .line 553
    :try_start_2
    sget-object p2, Lccsancom/mbridge/msdk/videocommon/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 555
    :goto_3
    monitor-exit p0

    return-void

    .line 526
    :goto_4
    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/a/a;->c:Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    goto :goto_0

    .line 476
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 478
    :catch_0
    move-exception p1

    .line 479
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    :goto_0
    monitor-exit p0

    return-void

    .line 476
    :goto_1
    monitor-exit p0

    throw p1
.end method
