.class public final Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;
.super Ljava/lang/Object;
.source "CallMraidJS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;
    .locals 1

    .line 26
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a$a;->a()Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;

    move-result-object v0

    return-object v0
.end method

.method private c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 121
    if-eqz p1, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    goto :goto_0

    .line 124
    :catchall_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;)V
    .locals 1

    .line 34
    nop

    .line 35
    const-string v0, "javascript:window.mraidbridge.fireReadyEvent();"

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;D)V
    .locals 2

    .line 73
    nop

    .line 74
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v1, p3

    const-string p2, "javascript:window.mraidbridge.audioVolumeChange(%s);"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;FF)V
    .locals 3

    .line 67
    nop

    .line 68
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const-string p2, "javascript:window.mraidbridge.notifySizeChangeEvent(%.1f, %.1f);"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 69
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;FFFF)V
    .locals 3

    .line 91
    nop

    .line 92
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    const-string p2, "javascript:window.mraidbridge.setDefaultPosition(%.1f, %.1f, %.1f, %.1f);"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 93
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 109
    nop

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "javascript:window.mraidbridge.nativeCallComplete(\'%s\');"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 111
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    nop

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "javascript:window.mraidbridge.fireErrorEvent(\'%1s\', \'%2s\');"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/webkit/WebView;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 39
    nop

    .line 41
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 46
    nop

    .line 48
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :goto_1
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "javascript:window.mraidbridge.fireChangeEvent(%s);"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 57
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 58
    return-void

    .line 42
    :cond_2
    :goto_2
    return-void
.end method

.method public final b(Lccsanandroid/webkit/WebView;FF)V
    .locals 3

    .line 79
    nop

    .line 80
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const-string p2, "javascript:window.mraidbridge.setScreenSize(%.1f, %.1f);"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final b(Lccsanandroid/webkit/WebView;FFFF)V
    .locals 3

    .line 97
    nop

    .line 98
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    const-string p2, "javascript:window.mraidbridge.setCurrentPosition(%.1f, %.1f, %.1f, %.1f);"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 99
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final b(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 115
    nop

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "javascript:window.mraidbridge.setIsViewable(%s);"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public final c(Lccsanandroid/webkit/WebView;FF)V
    .locals 3

    .line 85
    nop

    .line 86
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    const-string p2, "javascript:window.mraidbridge.setMaxSize(%.1f, %.1f);"

    invoke-static {v0, p2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 87
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/mraid/a;->c(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 88
    return-void
.end method
