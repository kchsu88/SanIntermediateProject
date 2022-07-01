.class public Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;
.super Ljava/lang/Object;
.source "BaseRewardSignalH5.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;


# instance fields
.field protected a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .line 183
    const-string v0, ""

    .line 185
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 186
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 187
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 194
    :cond_0
    goto :goto_0

    .line 192
    :catchall_0
    move-exception p1

    .line 193
    const-string p1, "JS-Reward-Communication"

    const-string v1, "code to string is error"

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-object v0
.end method


# virtual methods
.method public cai(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 200
    const-string v0, "cai"

    const-string v1, "exception: "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cai:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JS-Reward-Communication"

    invoke-static {v3, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 203
    nop

    .line 204
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 205
    const-string p2, "packageName"

    invoke-virtual {v2, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 206
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    const-string v2, "packageName is empty"

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :cond_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    const/4 v2, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 212
    :goto_0
    :try_start_1
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 213
    const-string v5, "code"

    sget v6, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->b:I

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 214
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 215
    const-string v6, "result"

    invoke-virtual {v5, v6, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 216
    const-string p2, "data"

    invoke-virtual {v4, p2, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 217
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v4}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    goto :goto_1

    .line 218
    :catch_0
    move-exception p2

    .line 219
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 225
    :catchall_0
    move-exception p2

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {v3, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 222
    :catch_1
    move-exception p2

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsanorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-static {v3, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    :cond_2
    :goto_1
    return-void
.end method

.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 40
    const-string p2, "JS-Reward-Communication"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_1

    .line 41
    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "getEndScreenInfo success"

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    const-string v0, ""

    .line 47
    const-string v1, "getEndScreenInfo failed"

    invoke-static {p2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    goto :goto_1

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    const-string v0, "getEndScreenInfo"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :goto_1
    return-void
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 171
    const-string p1, "JS-Reward-Communication"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v1, "msg"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerPlayableException,msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;

    move-result-object p2

    invoke-interface {p2, v0}, Lccsancom/mbridge/msdk/video/signal/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    goto :goto_0

    .line 177
    :catchall_0
    move-exception p2

    .line 178
    const-string v0, "setOrientation"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    :goto_0
    return-void
.end method

.method public initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    .line 26
    instance-of p2, p1, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz p2, :cond_0

    .line 27
    check-cast p1, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 29
    :cond_0
    return-void
.end method

.method public initialize(Ljava/lang/Object;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    .line 32
    instance-of p2, p1, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz p2, :cond_0

    .line 33
    check-cast p1, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    .line 35
    :cond_0
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 59
    const-string p1, "JS-Reward-Communication"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_1

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "install:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSContainerModule()Lccsancom/mbridge/msdk/video/signal/e;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/e;->endCardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, p2}, Lccsancom/mbridge/msdk/video/signal/c;->click(ILjava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getJSCommon()Lccsancom/mbridge/msdk/video/signal/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p2}, Lccsancom/mbridge/msdk/video/signal/c;->click(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    :goto_0
    goto :goto_1

    .line 67
    :catchall_0
    move-exception p2

    .line 68
    const-string v0, "install"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :goto_1
    return-void
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 110
    const-string p1, "JS-Reward-Communication"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCloseBtn,state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;

    move-result-object p2

    invoke-interface {p2, v0}, Lccsancom/mbridge/msdk/video/signal/h;->notifyCloseBtn(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    goto :goto_0

    .line 116
    :catchall_0
    move-exception p2

    .line 117
    const-string v0, "notifyCloseBtn"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :goto_0
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JS-Reward-Communication"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v0

    .line 76
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 78
    if-nez v0, :cond_0

    :try_start_0
    instance-of v2, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v2, :cond_0

    .line 79
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 84
    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :cond_0
    :goto_0
    nop

    .line 87
    :goto_1
    if-nez v0, :cond_1

    .line 88
    return-void

    .line 91
    :cond_1
    :try_start_1
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    const-string p2, "url"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 93
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 94
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 95
    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 97
    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/click/b;->b(Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 99
    :catch_1
    move-exception p1

    .line 100
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_3
    :goto_2
    return-void
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 156
    const-string p1, "JS-Reward-Communication"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientation,state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;

    move-result-object p2

    invoke-interface {p2, v0}, Lccsancom/mbridge/msdk/video/signal/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    goto :goto_0

    .line 162
    :catchall_0
    move-exception p2

    .line 163
    const-string v0, "setOrientation"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :goto_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 124
    const-string p1, "JS-Reward-Communication"

    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v1, "state"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleCloseBtn,state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;

    move-result-object p2

    invoke-interface {p2, v0}, Lccsancom/mbridge/msdk/video/signal/h;->toggleCloseBtn(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p2

    .line 131
    const-string v0, "toggleCloseBtn"

    invoke-static {p1, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 138
    const-string v0, "JS-Reward-Communication"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    if-eqz v1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 141
    const-string v2, "state"

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a:Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/video/signal/factory/IJSFactory;->getIJSRewardVideoV1()Lccsancom/mbridge/msdk/video/signal/h;

    move-result-object v2

    invoke-interface {v2, v1}, Lccsancom/mbridge/msdk/video/signal/h;->a(Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerCloseBtn,state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    goto :goto_0

    .line 147
    :catchall_0
    move-exception p2

    .line 148
    const-string v1, "triggerCloseBtn"

    invoke-static {v0, v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignalH5;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    :goto_0
    return-void
.end method
