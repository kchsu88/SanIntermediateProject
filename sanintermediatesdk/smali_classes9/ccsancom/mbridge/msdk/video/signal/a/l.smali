.class public final Lccsancom/mbridge/msdk/video/signal/a/l;
.super Lccsancom/mbridge/msdk/video/signal/a/e;
.source "JSNotifyProxy.java"


# instance fields
.field private a:Lccsanandroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lccsanandroid/webkit/WebView;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/e;-><init>()V

    .line 26
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/l;->a:Lccsanandroid/webkit/WebView;

    .line 27
    return-void
.end method

.method private a(II)Ljava/lang/String;
    .locals 3

    .line 78
    const-string v0, ""

    if-eqz p2, :cond_0

    .line 79
    int-to-float p1, p1

    int-to-float v1, p2

    div-float/2addr p1, v1

    float-to-double v1, p1

    .line 81
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/tools/u;->a(Ljava/lang/Double;)D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/e;->a(I)V

    .line 39
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 40
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 41
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/l;->a:Lccsanandroid/webkit/WebView;

    const-string v2, "onVideoStatusNotify"

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    goto :goto_0

    .line 43
    :catch_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    :goto_0
    return-void
.end method

.method public final a(IIII)V
    .locals 4

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/video/signal/a/e;->a(IIII)V

    .line 103
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 104
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    nop

    .line 106
    const-string v2, "landscape"

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 107
    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 108
    goto :goto_0

    .line 110
    :cond_0
    goto :goto_1

    .line 113
    :cond_1
    if-ne p2, v3, :cond_2

    .line 114
    goto :goto_1

    .line 116
    :cond_2
    :goto_0
    :try_start_1
    const-string v2, "portrait"

    .line 119
    :goto_1
    const-string p1, "orientation"

    invoke-virtual {v1, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 120
    const-string p1, "screen_width"

    invoke-virtual {v1, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 121
    const-string p1, "screen_height"

    invoke-virtual {v1, p1, p4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 122
    const-string p1, "data"

    invoke-virtual {v0, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 123
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    iget-object p3, p0, Lccsancom/mbridge/msdk/video/signal/a/l;->a:Lccsanandroid/webkit/WebView;

    const-string p4, "showDataInfo"

    invoke-virtual {p2, p3, p4, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    goto :goto_2

    .line 125
    :catch_0
    move-exception p1

    .line 126
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 127
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    :cond_3
    :goto_2
    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 50
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/video/signal/a/e;->a(ILjava/lang/String;)V

    .line 52
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 53
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 54
    const-string p1, "pt"

    invoke-virtual {v0, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 55
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/signal/a/l;->a:Lccsanandroid/webkit/WebView;

    const-string v1, "onJSClick"

    invoke-virtual {p2, v0, v1, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :goto_0
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/e;->a(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;)V

    .line 66
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 67
    const-string v1, "progress"

    iget v2, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->a:I

    iget v3, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->b:I

    invoke-direct {p0, v2, v3}, Lccsancom/mbridge/msdk/video/signal/a/l;->a(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 68
    const-string v1, "time"

    iget v2, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 69
    const-string v1, "duration"

    iget p1, p1, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$a;->b:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 70
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/l;->a:Lccsanandroid/webkit/WebView;

    const-string v2, "onVideoProgressNotify"

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 91
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/e;->a(Ljava/lang/Object;)V

    .line 92
    nop

    .line 93
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 96
    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/l;->a:Lccsanandroid/webkit/WebView;

    const-string v2, "webviewshow"

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method
