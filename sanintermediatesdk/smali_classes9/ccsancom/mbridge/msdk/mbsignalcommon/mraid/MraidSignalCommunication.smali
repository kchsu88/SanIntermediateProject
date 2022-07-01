.class public Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;
.super Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;
.source "MraidSignalCommunication.java"


# instance fields
.field private d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 61
    const-string p2, "MRAID close"

    const-string v0, "MraidSignalCommunication"

    instance-of v1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v1, :cond_0

    .line 62
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 2026
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    .line 63
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "close"

    invoke-virtual {v1, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 67
    :cond_0
    :try_start_0
    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz p1, :cond_1

    .line 69
    invoke-interface {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :goto_0
    return-void
.end method

.method public expand(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 114
    const-string v0, "MraidSignalCommunication"

    instance-of v1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v1, :cond_0

    .line 115
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 5026
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    .line 116
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "expand"

    invoke-virtual {v1, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 120
    :cond_0
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    const-string p2, "url"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    const-string v1, "shouldUseCustomClose"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MRAID expand "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 128
    iget-object v1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    invoke-interface {v1, p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;->expand(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_1
    goto :goto_0

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    const-string p2, "MRAID expand"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    :goto_0
    return-void
.end method

.method public initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 1

    .line 20
    invoke-super {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/h;->initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V

    .line 22
    :try_start_0
    instance-of v0, p1, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    .line 29
    :cond_1
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getMraidObject()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getMraidObject()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getMraidObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :cond_2
    :goto_0
    goto :goto_1

    .line 33
    :catch_0
    move-exception p1

    .line 34
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 35
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 38
    :cond_3
    :goto_1
    return-void
.end method

.method public open(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 41
    const-string v0, "MraidSignalCommunication"

    instance-of v1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v1, :cond_0

    .line 42
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 1026
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    .line 43
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "open"

    invoke-virtual {v1, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 47
    :cond_0
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    const-string p2, "url"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID Open "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz p2, :cond_1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 53
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;->open(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p1

    .line 56
    const-string p2, "MRAID Open"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :goto_0
    return-void
.end method

.method public setOrientationProperties(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 136
    const-string v0, "MRAID setOrientationProperties"

    const-string v1, "MraidSignalCommunication"

    instance-of v2, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v2, :cond_0

    .line 137
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 6026
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v2

    .line 138
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v3, "setOrientationProperties"

    invoke-virtual {v2, p1, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 142
    :cond_0
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 143
    const-string p2, "allowOrientationChange"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 144
    const-string v2, "forceOrientation"

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 146
    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz v2, :cond_2

    .line 148
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v2, "true"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "landscape"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "portrait"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 160
    goto :goto_1

    .line 156
    :pswitch_0
    nop

    .line 157
    goto :goto_1

    .line 152
    :pswitch_1
    nop

    .line 166
    :cond_2
    :goto_1
    goto :goto_2

    .line 164
    :catchall_0
    move-exception p1

    .line 165
    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2b77bb9b -> :sswitch_1
        0x5545f2bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unload(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 77
    const-string p2, "MRAID unload"

    const-string v0, "MraidSignalCommunication"

    instance-of v1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v1, :cond_0

    .line 78
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 3026
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    .line 79
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "unload"

    invoke-virtual {v1, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 83
    :cond_0
    :try_start_0
    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz p1, :cond_1

    .line 85
    invoke-interface {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;->unload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    goto :goto_0

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    :goto_0
    return-void
.end method

.method public useCustomClose(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 93
    const-string v0, "MraidSignalCommunication"

    instance-of v1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    if-eqz v1, :cond_0

    .line 94
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;

    .line 4026
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v1

    .line 95
    iget-object p1, p1, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/a;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "useCustomClose"

    invoke-virtual {v1, p1, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 99
    :cond_0
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 100
    const-string p2, "shouldUseCustomClose"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MRAID useCustomClose "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    if-eqz p2, :cond_1

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 106
    iget-object p2, p0, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/MraidSignalCommunication;->d:Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/b;->useCustomClose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_1
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    const-string p2, "MRAID useCustomClose"

    invoke-static {v0, p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    :goto_0
    return-void
.end method
