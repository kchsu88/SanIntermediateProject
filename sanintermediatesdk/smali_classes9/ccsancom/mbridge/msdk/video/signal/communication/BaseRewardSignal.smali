.class public Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;
.super Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;
.source "BaseRewardSignal.java"

# interfaces
.implements Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;


# instance fields
.field protected d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;-><init>()V

    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .line 190
    const-string v0, ""

    .line 192
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 193
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 194
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 195
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 201
    :cond_0
    goto :goto_0

    .line 199
    :catchall_0
    move-exception p1

    .line 200
    const-string p1, "JS-Reward-Brigde"

    const-string v1, "code to string is error"

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-object v0
.end method


# virtual methods
.method public cai(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7

    .line 232
    const-string v0, "cai"

    const-string v1, "exception: "

    const-string v2, "JS-Reward-Brigde"

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    const-string p2, "params is null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    return-void

    .line 236
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 238
    nop

    .line 239
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    const-string p2, "packageName"

    invoke-virtual {v3, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 241
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    const-string v3, "packageName is empty"

    invoke-static {p1, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    :cond_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, p2}, Lccsancom/mbridge/msdk/foundation/tools/u;->c(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    const/4 v3, 0x2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    .line 247
    :goto_0
    :try_start_1
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 248
    const-string v5, "code"

    sget v6, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->b:I

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 249
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 250
    const-string v6, "result"

    invoke-virtual {v5, v6, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 251
    const-string p2, "data"

    invoke-virtual {v4, p2, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 252
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {v4}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    goto :goto_1

    .line 253
    :catch_0
    move-exception p2

    .line 254
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 260
    :catchall_0
    move-exception p2

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    invoke-static {v2, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 257
    :catch_1
    move-exception p2

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsanorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    invoke-static {v2, v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    :cond_3
    :goto_1
    return-void
.end method

.method public getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 89
    const-string v0, "JS-Reward-Brigde"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    if-eqz v1, :cond_0

    .line 90
    invoke-interface {v1, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;->getEndScreenInfo(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    const-string p1, "getEndScreenInfo factory is true"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_0
    const-string p2, "getEndScreenInfo factory is null"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_1

    .line 95
    move-object p2, p1

    check-cast p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 96
    iget-object v1, p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    instance-of v1, v1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v1, :cond_1

    .line 97
    iget-object p2, p2, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 98
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getWebViewListener()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/b/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_1
    :goto_0
    goto :goto_1

    .line 104
    :catchall_0
    move-exception p1

    .line 105
    const-string p2, "getEndScreenInfo"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :goto_1
    return-void
.end method

.method public handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 181
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;->handlerPlayableException(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    goto :goto_0

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    const-string p2, "JS-Reward-Brigde"

    const-string v0, "handlerPlayableException"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :goto_0
    return-void
.end method

.method public initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 7

    .line 32
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;->initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 33
    nop

    .line 35
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.mbridge.msdk.video.signal.factory.IJSFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    .line 41
    :goto_0
    if-eqz v1, :cond_0

    .line 42
    :try_start_1
    const-string v1, "com.mbridge.msdk.video.signal.communication.BaseRewardSignalH5"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    .line 44
    const-string v2, "initialize"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lccsanandroid/content/Context;

    aput-object v5, v4, v0

    const-class v5, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    if-eqz p1, :cond_1

    .line 48
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    :cond_1
    :goto_1
    goto :goto_2

    .line 51
    :catch_1
    move-exception p1

    .line 52
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 53
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    :cond_2
    :goto_2
    return-void
.end method

.method public initialize(Ljava/lang/Object;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 7

    .line 60
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;->initialize(Ljava/lang/Object;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 61
    nop

    .line 63
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.mbridge.msdk.video.signal.factory.IJSFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 64
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 66
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    .line 69
    :goto_0
    if-eqz v1, :cond_0

    .line 70
    :try_start_1
    const-string v1, "com.mbridge.msdk.video.signal.communication.BaseRewardSignalH5"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    iput-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    .line 72
    const-string v2, "initialize"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v0

    const-class v5, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    iget-object v2, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    goto :goto_1

    .line 75
    :cond_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :cond_1
    :goto_1
    goto :goto_2

    .line 79
    :catch_1
    move-exception p1

    .line 80
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :cond_2
    :goto_2
    return-void
.end method

.method public install(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 112
    const-string v0, "JS-Reward-Brigde"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    if-eqz v1, :cond_0

    .line 113
    invoke-interface {v1, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;->install(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    return-void

    .line 118
    :cond_1
    if-eqz p1, :cond_2

    .line 119
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 120
    iget-object v1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lccsancom/mbridge/msdk/video/signal/a/j;

    if-eqz v1, :cond_2

    .line 121
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/video/signal/a/j;

    .line 122
    const/4 v1, 0x1

    invoke-virtual {p1, v1, p2}, Lccsancom/mbridge/msdk/video/signal/a/j;->click(ILjava/lang/String;)V

    .line 123
    const-string p1, "JSCommon install jump success"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_2
    const-string p1, "JSCommon install failed"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    goto :goto_1

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    const-string p2, "install"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :goto_1
    return-void
.end method

.method public notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 136
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;->notifyCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_0
    goto :goto_0

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    const-string p2, "JS-Reward-Brigde"

    const-string v0, "notifyCloseBtn"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_0
    return-void
.end method

.method public openURL(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openURL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JS-Reward-Brigde"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string p2, "params is null"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/communication/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    return-void

    .line 212
    :cond_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 214
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    const-string p2, "url"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 216
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 217
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 218
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->a:Lccsanandroid/content/Context;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/click/b;->a(Lccsanandroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 220
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->a:Lccsanandroid/content/Context;

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/click/b;->b(Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception p1

    .line 225
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_2
    :goto_0
    return-void
.end method

.method public setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 170
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;->setOrientation(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    goto :goto_0

    .line 173
    :catchall_0
    move-exception p1

    .line 174
    const-string p2, "JS-Reward-Brigde"

    const-string v0, "setOrientation"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    :goto_0
    return-void
.end method

.method public toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 147
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;->toggleCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    goto :goto_0

    .line 150
    :catchall_0
    move-exception p1

    .line 151
    const-string p2, "JS-Reward-Brigde"

    const-string v0, "toggleCloseBtn"

    invoke-static {p2, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    :goto_0
    return-void
.end method

.method public triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 158
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->d:Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/communication/IRewardCommunication;->triggerCloseBtn(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    goto :goto_0

    .line 161
    :catchall_0
    move-exception p2

    .line 162
    const-string v0, "JS-Reward-Brigde"

    const-string v1, "triggerCloseBtn"

    invoke-static {v0, v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/video/signal/communication/BaseRewardSignal;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    :goto_0
    return-void
.end method
