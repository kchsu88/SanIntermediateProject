.class public final Lccsancom/mbridge/msdk/video/signal/a/j;
.super Lccsancom/mbridge/msdk/video/signal/a/c;
.source "JSCommon.java"


# instance fields
.field private n:Lccsanandroid/app/Activity;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z


# direct methods
.method public constructor <init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/c;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->t:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->u:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->v:Z

    .line 59
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->w:Z

    .line 66
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    .line 67
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 68
    return-void
.end method

.method public constructor <init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/app/Activity;",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/c;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->t:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->u:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->v:Z

    .line 59
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->w:Z

    .line 71
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    .line 72
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 73
    iput-object p3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->r:Ljava/util/List;

    .line 74
    return-void
.end method

.method private a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 7

    .line 189
    const-string v0, "deep_link"

    .line 190
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    return-object p2

    .line 193
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto/16 :goto_6

    .line 194
    :cond_2
    :goto_0
    const-string v1, "notice"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 196
    :try_start_0
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    .line 198
    if-nez v1, :cond_3

    .line 199
    move-object v1, p2

    .line 201
    :cond_3
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 202
    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 203
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    sget-object p1, Lccsancom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    nop

    .line 206
    const-string v0, "-999"

    if-eqz p1, :cond_4

    .line 207
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    sget-object v3, Lccsancom/mbridge/msdk/foundation/same/a;->f:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 206
    :cond_4
    move-object v2, v0

    .line 210
    :goto_1
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lccsancom/mbridge/msdk/click/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    .line 213
    if-eqz p1, :cond_8

    .line 214
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 217
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 219
    invoke-virtual {p1, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 220
    sget-object v6, Lccsancom/mbridge/msdk/foundation/same/a;->e:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lccsancom/mbridge/msdk/foundation/same/a;->f:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 221
    :cond_5
    iget-object v6, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6, v5}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    goto :goto_2

    .line 225
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 226
    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :cond_8
    move-object p2, v1

    goto :goto_6

    .line 232
    :catchall_0
    move-exception p1

    .line 233
    nop

    .line 234
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 229
    :catch_0
    move-exception p1

    .line 230
    nop

    .line 231
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 235
    :goto_3
    goto :goto_6

    .line 238
    :cond_9
    nop

    .line 240
    :try_start_2
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object v1

    .line 241
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 243
    :try_start_3
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 244
    const-string p1, ""

    invoke-virtual {v1, v0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 248
    :cond_a
    goto :goto_4

    .line 246
    :catch_1
    move-exception p1

    .line 249
    :goto_4
    :try_start_4
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 250
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 251
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {v1, v0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 254
    goto :goto_5

    .line 255
    :cond_b
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    .line 256
    invoke-direct {p0, v1, p1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 260
    move-object p2, p1

    goto :goto_6

    .line 257
    :catch_2
    move-exception p1

    .line 258
    nop

    .line 259
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 264
    :goto_6
    return-object p2
.end method

.method private a(Lccsanorg/json/JSONObject;)V
    .locals 7

    .line 163
    const-string v0, ""

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MBridge_ConfirmTitle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MBridge_ConfirmContent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MBridge_CancelText"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MBridge_ConfirmText"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const-string v1, "confirm_title"

    invoke-virtual {p1, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 171
    :cond_0
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 172
    const-string v1, "confirm_description"

    invoke-virtual {p1, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 174
    :cond_1
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    const-string v1, "confirm_t"

    invoke-virtual {p1, v1, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 177
    :cond_2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 178
    const-string v1, "confirm_c_play"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 180
    :cond_3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 181
    const-string v1, "confirm_c_rv"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_4
    goto :goto_0

    .line 183
    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    :goto_0
    return-void
.end method

.method private a(Lccsanorg/json/JSONObject;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 1

    .line 269
    :try_start_0
    const-string v0, "unitId"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    goto :goto_0

    .line 273
    :catch_0
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    :goto_0
    return-void
.end method

.method private b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z
    .locals 6

    .line 548
    nop

    .line 549
    nop

    .line 550
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    .line 552
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v0

    .line 553
    if-eqz v0, :cond_0

    .line 554
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/b/a;->p()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    goto :goto_0

    .line 558
    :cond_0
    move-wide v0, v2

    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v4

    .line 559
    if-eqz v4, :cond_1

    .line 560
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/videocommon/d/a;->d()J

    move-result-wide v2

    .line 563
    :cond_1
    if-eqz p1, :cond_2

    .line 564
    invoke-virtual {p1, v2, v3, v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isSpareOffer(JJ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 567
    :cond_2
    goto :goto_1

    .line 566
    :catch_0
    move-exception p1

    .line 568
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method private p()Ljava/lang/String;
    .locals 7

    .line 111
    const-string v0, "unit_id"

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 112
    new-instance v2, Lccsancom/mbridge/msdk/foundation/tools/b;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/b;-><init>(Lccsanandroid/content/Context;)V

    .line 114
    :try_start_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 115
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 116
    const-string v4, "instanceId"

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->t:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 117
    const-string v4, "rootViewInstanceId"

    iget-object v5, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->u:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 118
    const-string v4, "isRootTemplateWebView"

    iget-boolean v5, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->v:Z

    invoke-virtual {v3, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 119
    const-string v4, "MAL_15.7.41,3.0.1"

    .line 120
    const-string v5, "sdk_info"

    invoke-virtual {v1, v5, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 121
    const-string v4, "playVideoMute"

    iget v5, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->m:I

    invoke-virtual {v3, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 122
    const-string v4, "sdkSetting"

    invoke-virtual {v1, v4, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 123
    const-string v3, "device"

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/tools/b;->a()Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 124
    new-instance v2, Lccsanorg/json/JSONArray;

    invoke-direct {v2}, Lccsanorg/json/JSONArray;-><init>()V

    .line 125
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->r:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 126
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 127
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isReady()Z

    move-result v5

    invoke-direct {p0, v4}, Lccsancom/mbridge/msdk/video/signal/a/j;->b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Z

    move-result v6

    invoke-static {v4, v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZZ)Lccsanorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 128
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 130
    :cond_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 132
    :goto_1
    const-string v3, "campaignList"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 133
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->y()Lccsanorg/json/JSONObject;

    move-result-object v2

    .line 134
    const-string v3, "unitSetting"

    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 135
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 138
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsanorg/json/JSONObject;)V

    .line 140
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v2

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    const-string v2, "ivreward"

    invoke-virtual {v3, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 145
    :cond_2
    const-string v2, "appSetting"

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 148
    :cond_3
    const-string v2, "rewardSetting"

    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->z()Lccsanorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 150
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 151
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 153
    :cond_4
    const-string v0, "rw_plus"

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->w:Z

    if-eqz v2, :cond_5

    const-string v2, "1"

    goto :goto_2

    :cond_5
    const-string v2, "0"

    :goto_2
    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    goto :goto_3

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 157
    :goto_3
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private q()Lccsancom/mbridge/msdk/click/a;
    .locals 3

    .line 383
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->k:Lccsancom/mbridge/msdk/click/a;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Lccsancom/mbridge/msdk/click/a;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lccsancom/mbridge/msdk/click/a;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->k:Lccsancom/mbridge/msdk/click/a;

    .line 386
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->k:Lccsancom/mbridge/msdk/click/a;

    return-object v0
.end method

.method private r()Lccsanorg/json/JSONObject;
    .locals 5

    .line 419
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 420
    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/b;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/b;-><init>(Lccsanandroid/content/Context;)V

    .line 422
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 423
    const-string v3, "playVideoMute"

    iget v4, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->m:I

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 424
    const-string v3, "sdkSetting"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 425
    const-string v2, "device"

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/tools/b;->a()Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 426
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 427
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 428
    const-string v2, "campaignList"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 429
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->y()Lccsanorg/json/JSONObject;

    move-result-object v1

    .line 430
    const-string v2, "unitSetting"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 431
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 434
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsanorg/json/JSONObject;)V

    .line 436
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 438
    const-string v3, "ivreward"

    invoke-virtual {v2, v3, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 440
    :cond_0
    const-string v1, "appSetting"

    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 442
    :cond_1
    const-string v1, "rewardSetting"

    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->z()Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    goto :goto_0

    .line 443
    :catchall_0
    move-exception v1

    .line 444
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 446
    :goto_0
    return-object v0
.end method

.method private s()Lccsanorg/json/JSONObject;
    .locals 3

    .line 450
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 452
    :try_start_0
    const-string v1, "sdk_info"

    const-string v2, "MAL_15.7.41,3.0.1"

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    goto :goto_0

    .line 453
    :catch_0
    move-exception v1

    .line 454
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 456
    :goto_0
    return-object v0
.end method

.method private t()Lccsanorg/json/JSONObject;
    .locals 3

    .line 460
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 462
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    const-string v1, "unit_id"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 468
    :goto_0
    return-object v0
.end method

.method private u()Lccsanorg/json/JSONObject;
    .locals 4

    .line 472
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 474
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 477
    const-string v2, "appSetting"

    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 481
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 479
    :catch_0
    move-exception v1

    .line 480
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 483
    :cond_0
    :goto_0
    nop

    .line 484
    :goto_1
    return-object v0
.end method

.method private v()Lccsanorg/json/JSONObject;
    .locals 3

    .line 488
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 490
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->j:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v1, :cond_0

    .line 491
    const-string v1, "unitSetting"

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->j:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/videocommon/d/c;->C()Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    :cond_0
    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 496
    :goto_0
    return-object v0
.end method

.method private w()Lccsanorg/json/JSONObject;
    .locals 3

    .line 500
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 502
    :try_start_0
    new-instance v1, Lccsancom/mbridge/msdk/foundation/tools/b;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/b;-><init>(Lccsanandroid/content/Context;)V

    .line 503
    const-string v2, "device"

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/tools/b;->a()Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    goto :goto_0

    .line 504
    :catch_0
    move-exception v1

    .line 505
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 507
    :goto_0
    return-object v0
.end method

.method private x()Lccsanorg/json/JSONObject;
    .locals 4

    .line 511
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 513
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 514
    const-string v2, "playVideoMute"

    iget v3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->m:I

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 515
    const-string v2, "instanceId"

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 516
    const-string v2, "sdkSetting"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    goto :goto_0

    .line 517
    :catch_0
    move-exception v1

    .line 518
    invoke-virtual {v1}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 520
    :goto_0
    return-object v0
.end method

.method private y()Lccsanorg/json/JSONObject;
    .locals 2

    .line 524
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 525
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->j:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz v1, :cond_0

    .line 526
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->j:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/videocommon/d/c;->C()Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 528
    :cond_0
    return-object v0
.end method

.method private z()Lccsanorg/json/JSONObject;
    .locals 2

    .line 532
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 533
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->b()Lccsancom/mbridge/msdk/videocommon/d/a;

    move-result-object v1

    .line 534
    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/videocommon/d/a;->j()Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 537
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 11

    .line 338
    const-string v0, "-1"

    const-string v1, "event"

    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/c;->a(ILjava/lang/String;)V

    .line 340
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p1, v1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    const-string p2, "template"

    invoke-virtual {p1, p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 345
    const-string p2, "layout"

    invoke-virtual {p1, p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 346
    const-string p2, "unit_id"

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->i:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 347
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    invoke-virtual {p1}, Lccsanandroid/app/Activity;->getApplication()Lccsanandroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v9

    .line 348
    new-instance p1, Lccsancom/mbridge/msdk/foundation/entity/m;

    const-string v3, "2000039"

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 350
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v8

    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    invoke-virtual {p2}, Lccsanandroid/app/Activity;->getApplication()Lccsanandroid/app/Application;

    move-result-object p2

    invoke-static {p2, v9}, Lccsancom/mbridge/msdk/foundation/tools/m;->a(Lccsanandroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lccsancom/mbridge/msdk/foundation/entity/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    invoke-virtual {p2}, Lccsanandroid/app/Activity;->getApplication()Lccsanandroid/app/Application;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p2

    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/p;

    move-result-object p2

    .line 352
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/db/p;->a(Lccsancom/mbridge/msdk/foundation/entity/m;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    goto :goto_0

    .line 357
    :catchall_0
    move-exception p1

    .line 358
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DefaultJSCommon"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 359
    :goto_0
    nop

    .line 360
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lccsanandroid/app/Activity;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    .line 544
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 45
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->r:Ljava/util/List;

    .line 51
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 573
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->p:Ljava/lang/String;

    .line 576
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c$a;->a()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->a:Z

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->o:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->o:Ljava/lang/String;

    .line 107
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->t:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->v:Z

    .line 63
    return-void
.end method

.method public final click(ILjava/lang/String;)V
    .locals 5

    .line 280
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/c;->click(ILjava/lang/String;)V

    .line 282
    const/4 v0, 0x1

    const-string v1, "DefaultJSCommon"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 312
    :pswitch_1
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->j:Lccsancom/mbridge/msdk/videocommon/d/c;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->j:Lccsancom/mbridge/msdk/videocommon/d/c;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/videocommon/d/c;->n()I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 313
    new-instance p1, Lccsancom/mbridge/msdk/video/signal/a/c$b;

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    invoke-direct {p1, p0, v2}, Lccsancom/mbridge/msdk/video/signal/a/c$b;-><init>(Lccsancom/mbridge/msdk/video/signal/c;Lccsancom/mbridge/msdk/video/signal/c$a;)V

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Lccsancom/mbridge/msdk/video/signal/c$a;)V

    .line 315
    :cond_0
    invoke-virtual {p0, v0, p2}, Lccsancom/mbridge/msdk/video/signal/a/j;->click(ILjava/lang/String;)V

    .line 316
    goto/16 :goto_3

    .line 284
    :pswitch_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->r:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 285
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->r:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 287
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->q:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-nez p1, :cond_2

    .line 288
    return-void

    .line 290
    :cond_2
    invoke-direct {p0, p2, p1}, Lccsancom/mbridge/msdk/video/signal/a/j;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 293
    nop

    .line 295
    :try_start_1
    invoke-static {p2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    .line 296
    sget-object v3, Lccsancom/mbridge/msdk/foundation/same/a;->h:Ljava/lang/String;

    invoke-virtual {p2, v3}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 297
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 298
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    :cond_3
    const/4 p2, 0x0

    .line 301
    :goto_0
    goto :goto_1

    .line 299
    :catchall_0
    move-exception p2

    .line 300
    :try_start_2
    const-string v3, "INSTALL"

    invoke-static {v1, v3, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 303
    :goto_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    const/4 v4, 0x2

    if-ne p2, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v3, v0}, Lccsancom/mbridge/msdk/video/signal/c$a;->a(Z)V

    .line 305
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->q()Lccsancom/mbridge/msdk/click/a;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)V

    .line 307
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->q()Lccsancom/mbridge/msdk/click/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/click/a;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 308
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/video/module/b/a;->d(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    goto :goto_3

    .line 321
    :catchall_1
    move-exception p1

    .line 322
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 323
    :goto_3
    nop

    .line 324
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final d()V
    .locals 3

    .line 372
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/c;->d()V

    .line 374
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->n:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Lccsanandroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    :cond_0
    goto :goto_0

    .line 377
    :catchall_0
    move-exception v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultJSCommon"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->u:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public final d(Z)V
    .locals 0

    .line 97
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->w:Z

    .line 98
    return-void
.end method

.method public final f()V
    .locals 1

    .line 364
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/c;->f()V

    .line 365
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/c$a;->b()V

    .line 368
    :cond_0
    return-void
.end method

.method public final g(I)Ljava/lang/String;
    .locals 0

    .line 392
    packed-switch p1, :pswitch_data_0

    .line 412
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->r()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 409
    :pswitch_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->x()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 410
    goto :goto_0

    .line 406
    :pswitch_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->w()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 407
    goto :goto_0

    .line 403
    :pswitch_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->v()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 404
    goto :goto_0

    .line 400
    :pswitch_3
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->u()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 401
    goto :goto_0

    .line 397
    :pswitch_4
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->t()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 398
    goto :goto_0

    .line 394
    :pswitch_5
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/j;->s()Lccsanorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 395
    nop

    .line 415
    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final handlerH5Exception(ILjava/lang/String;)V
    .locals 1

    .line 328
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/c;->handlerH5Exception(ILjava/lang/String;)V

    .line 330
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->l:Lccsancom/mbridge/msdk/video/signal/c$a;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/c$a;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    goto :goto_0

    .line 331
    :catchall_0
    move-exception p1

    .line 332
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DefaultJSCommon"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 334
    :goto_0
    return-void
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    .line 580
    const-string v0, "DefaultJSCommon"

    const-string v1, "getNotchArea"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final i(I)V
    .locals 0

    .line 93
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->s:I

    .line 94
    return-void
.end method

.method public final n()V
    .locals 1

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->o:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public final o()I
    .locals 1

    .line 89
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/j;->s:I

    return v0
.end method
