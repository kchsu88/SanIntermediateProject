.class public Lccsancom/mbridge/msdk/videocommon/d/a;
.super Ljava/lang/Object;
.source "RewardSetting.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->j:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/a;
    .locals 8

    .line 127
    nop

    .line 128
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 130
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/videocommon/d/a;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/videocommon/d/a;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    const-string p0, "caplist"

    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    .line 133
    const-string v2, "ab_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1043
    iput-object v2, v0, Lccsancom/mbridge/msdk/videocommon/d/a;->i:Ljava/lang/String;

    .line 134
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 135
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 137
    :goto_0
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 139
    const/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 140
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 141
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v6, :cond_0

    .line 142
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 144
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_1
    :goto_1
    goto :goto_0

    .line 149
    :cond_2
    nop

    .line 1115
    iput-object v2, v0, Lccsancom/mbridge/msdk/videocommon/d/a;->a:Ljava/util/Map;

    .line 151
    :cond_3
    const-string p0, "reward"

    .line 152
    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    .line 151
    invoke-static {p0}, Lccsancom/mbridge/msdk/videocommon/b/c;->a(Lccsanorg/json/JSONArray;)Ljava/util/Map;

    move-result-object p0

    .line 153
    nop

    .line 1123
    iput-object p0, v0, Lccsancom/mbridge/msdk/videocommon/d/a;->b:Ljava/util/Map;

    .line 155
    const-string p0, "getpf"

    const-wide/32 v2, 0xa8c0

    invoke-virtual {v1, p0, v2, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2050
    iput-wide v2, v0, Lccsancom/mbridge/msdk/videocommon/d/a;->c:J

    .line 157
    const-string p0, "ruct"

    const-wide/16 v2, 0x1518

    invoke-virtual {v1, p0, v2, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2058
    iput-wide v2, v0, Lccsancom/mbridge/msdk/videocommon/d/a;->d:J

    .line 159
    const-string p0, "plct"

    const-wide/16 v2, 0xe10

    invoke-virtual {v1, p0, v2, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2066
    iput-wide v4, v0, Lccsancom/mbridge/msdk/videocommon/d/a;->e:J

    .line 161
    const-string p0, "dlct"

    invoke-virtual {v1, p0, v2, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2074
    iput-wide v2, v0, Lccsancom/mbridge/msdk/videocommon/d/a;->f:J

    .line 163
    const-string p0, "vcct"

    const-wide/16 v2, 0x5

    invoke-virtual {v1, p0, v2, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2082
    iput-wide v2, v0, Lccsancom/mbridge/msdk/videocommon/d/a;->g:J

    .line 165
    const-string p0, "current_time"

    .line 166
    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 165
    nop

    .line 2098
    iput-wide v1, v0, Lccsancom/mbridge/msdk/videocommon/d/a;->h:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    return-object v0

    .line 168
    :catch_0
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 169
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    :cond_4
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 90
    iput p1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->j:I

    .line 91
    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->c:J

    .line 51
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->a:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public final b()J
    .locals 4

    .line 46
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->c:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final b(J)V
    .locals 0

    .line 58
    iput-wide p1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->d:J

    .line 59
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/b/c;",
            ">;)V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->b:Ljava/util/Map;

    .line 124
    return-void
.end method

.method public final c()J
    .locals 4

    .line 54
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->d:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final c(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->e:J

    .line 67
    return-void
.end method

.method public final d()J
    .locals 4

    .line 62
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->e:J

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public final d(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->f:J

    .line 75
    return-void
.end method

.method public final e()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->f:J

    return-wide v0
.end method

.method public final e(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->g:J

    .line 83
    return-void
.end method

.method public final f()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->g:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->h:J

    return-wide v0
.end method

.method public final h()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->a:Ljava/util/Map;

    .line 104
    nop

    .line 105
    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 104
    const-string v3, "1"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->a:Ljava/util/Map;

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 106
    const-string v3, "9"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->a:Ljava/util/Map;

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 108
    const-string v2, "8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->a:Ljava/util/Map;

    return-object v0
.end method

.method public final i()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/videocommon/b/c;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->b:Ljava/util/Map;

    return-object v0
.end method

.method public final j()Lccsanorg/json/JSONObject;
    .locals 8

    .line 194
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 197
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->a:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v1, :cond_1

    .line 199
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 201
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 203
    goto :goto_0

    .line 205
    :cond_0
    const-string v2, "caplist"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    goto :goto_1

    .line 206
    :catch_0
    move-exception v1

    .line 207
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    :cond_1
    :goto_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->b:Ljava/util/Map;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-lez v1, :cond_4

    .line 213
    :try_start_3
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 215
    iget-object v2, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 216
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 218
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 219
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/videocommon/b/c;

    .line 221
    if-eqz v3, :cond_2

    .line 222
    const-string v6, "name"

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/b/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 223
    const-string v6, "amount"

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/b/c;->b()I

    move-result v3

    invoke-virtual {v4, v6, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 224
    const-string v3, "id"

    invoke-virtual {v4, v3, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 227
    :cond_2
    invoke-virtual {v1, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 228
    goto :goto_2

    .line 230
    :cond_3
    const-string v2, "reward"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 233
    goto :goto_3

    .line 231
    :catch_1
    move-exception v1

    .line 232
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :cond_4
    :goto_3
    const-string v1, "getpf"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 237
    const-string v1, "ruct"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 238
    const-string v1, "plct"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 239
    const-string v1, "dlct"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 240
    const-string v1, "vcct"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 241
    const-string v1, "current_time"

    iget-wide v2, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 243
    const-string v1, "isDefault"

    iget v2, p0, Lccsancom/mbridge/msdk/videocommon/d/a;->j:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 245
    return-object v0

    .line 246
    :catch_2
    move-exception v1

    .line 247
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    return-object v0
.end method
