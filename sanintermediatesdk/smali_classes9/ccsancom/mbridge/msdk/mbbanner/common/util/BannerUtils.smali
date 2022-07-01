.class public Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;
.super Ljava/lang/Object;
.source "BannerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized fillIdInList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/d/a;",
            ">;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/same/d/a;",
            ">;"
        }
    .end annotation

    const-class v0, Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;

    monitor-enter v0

    .line 75
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 76
    if-nez p0, :cond_0

    .line 77
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 80
    if-eqz v1, :cond_2

    .line 81
    new-instance v2, Lccsancom/mbridge/msdk/foundation/same/d/a;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/d/a;-><init>(Ljava/lang/String;J)V

    .line 82
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x14

    if-lt v1, v3, :cond_1

    .line 83
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    :cond_1
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_2
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 89
    :cond_3
    monitor-exit v0

    return-object p0
.end method

.method public static getCloseIds(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 31
    const-string v0, ""

    .line 33
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/a/d;->b:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 34
    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/a/d;->b:Ljava/util/Map;

    .line 35
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 37
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 38
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 39
    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 40
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 41
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/mbridge/msdk/foundation/same/d/a;

    .line 42
    const-string v5, "cid"

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/same/d/a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 43
    const-string v5, "crid"

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/same/d/a;->c()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 44
    invoke-virtual {v1, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_1
    goto :goto_1

    .line 50
    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 53
    :goto_1
    return-object v0
.end method

.method public static inserCloseId(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 58
    sget-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->b:Ljava/util/Map;

    .line 59
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 60
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/tools/x;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 63
    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;->fillIdInList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/mbbanner/common/util/BannerUtils;->fillIdInList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    :goto_0
    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/a/d;->b:Ljava/util/Map;

    .line 71
    :cond_2
    return-void
.end method

.method public static managerCampaignEX(Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 7

    .line 116
    const-string v0, "deep_link"

    .line 117
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    return-object p1

    .line 120
    :cond_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto/16 :goto_5

    .line 121
    :cond_2
    :goto_0
    const-string v1, "notice"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "unitId"

    if-nez v1, :cond_a

    .line 123
    :try_start_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    .line 125
    if-nez v1, :cond_3

    .line 126
    move-object v1, p1

    .line 128
    :cond_3
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 129
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 131
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 133
    :cond_4
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    sget-object p0, Lccsancom/mbridge/msdk/foundation/same/a;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    nop

    .line 136
    const-string v0, "-999"

    if-eqz p0, :cond_5

    .line 137
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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

    .line 138
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    sget-object v3, Lccsancom/mbridge/msdk/foundation/same/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

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

    .line 136
    :cond_5
    move-object v2, v0

    .line 140
    :goto_1
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lccsancom/mbridge/msdk/click/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz p0, :cond_9

    .line 144
    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 147
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    invoke-virtual {p0, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 150
    sget-object v6, Lccsancom/mbridge/msdk/foundation/same/a;->e:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lccsancom/mbridge/msdk/foundation/same/a;->f:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 151
    :cond_6
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v6, v5}, Lccsancom/mbridge/msdk/foundation/tools/u;->b(Lccsanandroid/content/Context;F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 153
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    goto :goto_2

    .line 155
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 156
    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_9
    move-object p1, v1

    goto :goto_5

    .line 161
    :catchall_0
    move-exception p0

    .line 162
    goto :goto_3

    .line 159
    :catch_0
    move-exception p0

    .line 160
    nop

    .line 163
    :goto_3
    goto :goto_5

    .line 165
    :cond_a
    nop

    .line 167
    :try_start_2
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->campaignToJsonObject(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)Lccsanorg/json/JSONObject;

    move-result-object v1

    .line 168
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 171
    :try_start_3
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 172
    const-string v4, ""

    invoke-virtual {v1, v0, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 176
    :cond_b
    goto :goto_4

    .line 174
    :catch_1
    move-exception v0

    .line 177
    :goto_4
    :try_start_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 178
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 179
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    invoke-virtual {v1, v0, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 181
    goto :goto_4

    .line 182
    :cond_c
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaignWithBackData(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p0

    .line 183
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 185
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 190
    :cond_d
    move-object p1, p0

    goto :goto_5

    .line 187
    :catch_2
    move-exception p0

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Lccsanorg/json/JSONException;->printStackTrace()V

    .line 194
    :goto_5
    return-object p1
.end method

.method public static uisList(Lccsanandroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 94
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/db/f;->a(Lccsanandroid/content/Context;)Lccsancom/mbridge/msdk/foundation/db/f;

    move-result-object p0

    invoke-static {p0}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/j;

    move-result-object p0

    .line 99
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 100
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 101
    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    new-instance v3, Lccsancom/mbridge/msdk/foundation/entity/f;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/foundation/entity/f;-><init>()V

    .line 103
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v4

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(I)V

    .line 105
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v2

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/foundation/entity/f;->b(I)V

    .line 106
    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/foundation/entity/f;->d(I)V

    .line 107
    invoke-virtual {v3, v0}, Lccsancom/mbridge/msdk/foundation/entity/f;->c(I)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lccsancom/mbridge/msdk/foundation/entity/f;->a(J)V

    .line 109
    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/foundation/db/j;->a(Lccsancom/mbridge/msdk/foundation/entity/f;)V

    .line 99
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_2
    return-void

    .line 95
    :cond_3
    :goto_1
    return-void
.end method
