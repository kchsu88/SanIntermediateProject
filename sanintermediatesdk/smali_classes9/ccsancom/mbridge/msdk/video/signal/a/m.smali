.class public final Lccsancom/mbridge/msdk/video/signal/a/m;
.super Lccsancom/mbridge/msdk/video/signal/a/f;
.source "JSRewardVideoV1.java"


# instance fields
.field private a:Lccsanandroid/app/Activity;

.field private b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;


# direct methods
.method public constructor <init>(Lccsanandroid/app/Activity;Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/f;-><init>()V

    .line 32
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->a:Lccsanandroid/app/Activity;

    .line 33
    iput-object p2, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    .line 34
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsanorg/json/JSONObject;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsanorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 153
    const-string v0, ""

    .line 155
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 156
    new-instance v2, Lccsancom/mbridge/msdk/foundation/tools/b;

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/b;-><init>(Lccsanandroid/content/Context;)V

    .line 157
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCamplistToJson(Ljava/util/List;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 158
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 159
    const-string v4, "campaignList"

    invoke-virtual {v3, v4, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 160
    const-string p1, "device"

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/tools/b;->a()Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 161
    const-string p1, "unit_id"

    invoke-virtual {v3, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 162
    const-string p1, "sdk_info"

    invoke-virtual {v3, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 163
    const-string p1, "unitSetting"

    invoke-virtual {v3, p1, p4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 164
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 165
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p3

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/b/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 168
    new-instance p3, Lccsanorg/json/JSONObject;

    invoke-direct {p3, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    nop

    .line 1197
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object p1

    .line 1198
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MBridge_ConfirmTitle"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MBridge_ConfirmContent"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MBridge_CancelText"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MBridge_ConfirmText"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v0}, Lccsancom/mbridge/msdk/foundation/tools/w;->b(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1202
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    const-string v0, "confirm_title"

    invoke-virtual {p3, v0, p4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1205
    :cond_0
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    .line 1206
    const-string p4, "confirm_description"

    invoke-virtual {p3, p4, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1208
    :cond_1
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 1209
    const-string p4, "confirm_t"

    invoke-virtual {p3, p4, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1211
    :cond_2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 1212
    const-string p4, "confirm_c_play"

    invoke-virtual {p3, p4, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1214
    :cond_3
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 1215
    const-string p4, "confirm_c_rv"

    invoke-virtual {p3, p4, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1219
    :cond_4
    goto :goto_0

    .line 1217
    :catch_0
    move-exception p1

    .line 1218
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/b/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 173
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    const-string p1, "ivreward"

    invoke-virtual {p3, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 177
    :cond_5
    const-string p1, "appSetting"

    invoke-virtual {v3, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 180
    :cond_6
    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 182
    :catch_1
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 184
    :cond_7
    :goto_1
    nop

    .line 185
    :goto_2
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    .line 38
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-nez v0, :cond_0

    .line 39
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/f;->a()Ljava/lang/String;

    goto :goto_1

    .line 42
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getUnitID()Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "MAL_15.7.41,3.0.1"

    .line 46
    nop

    .line 1189
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1190
    const/4 v3, 0x0

    goto :goto_0

    .line 1192
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/d/b;->a()Lccsancom/mbridge/msdk/videocommon/d/b;

    move-result-object v3

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lccsancom/mbridge/msdk/videocommon/d/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/videocommon/d/c;

    move-result-object v3

    .line 46
    :goto_0
    nop

    .line 47
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 48
    if-eqz v3, :cond_2

    .line 49
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/videocommon/d/c;->C()Lccsanorg/json/JSONObject;

    move-result-object v4

    .line 51
    :cond_2
    const-string v3, "JSRewardVideoV1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEndScreenInfo success campaign = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->getCampaign()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, v0, v1, v2, v4}, Lccsancom/mbridge/msdk/video/signal/a/m;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lccsanorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    :goto_1
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/f;->a(Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->a:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "click"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->triggerCloseBtn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_0
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/f;->b(Ljava/lang/String;)V

    .line 116
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->a:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->a:Lccsanandroid/app/Activity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 119
    :cond_0
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 120
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->a:Lccsanandroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    :cond_1
    :goto_0
    goto :goto_1

    .line 123
    :catchall_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 126
    :goto_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/f;->c(Ljava/lang/String;)V

    .line 102
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->a:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->handlerPlayableException(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    :goto_0
    return-void
.end method

.method public final notifyCloseBtn(I)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/f;->notifyCloseBtn(I)V

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->notifyCloseBtn(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public final toggleCloseBtn(I)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/f;->toggleCloseBtn(I)V

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/m;->b:Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/video/module/MBridgeContainerView;->toggleCloseBtn(I)V

    .line 74
    :cond_0
    return-void
.end method
