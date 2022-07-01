.class public final Lccsancom/mbridge/msdk/video/signal/a/h;
.super Lccsancom/mbridge/msdk/video/signal/a/a;
.source "JSActivityProxy.java"


# instance fields
.field private a:Lccsanandroid/webkit/WebView;

.field private b:I


# direct methods
.method public constructor <init>(Lccsanandroid/webkit/WebView;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lccsancom/mbridge/msdk/video/signal/a/a;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->b:I

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->a:Lccsanandroid/webkit/WebView;

    .line 28
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 32
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/a;->a()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->b:I

    .line 34
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->a:Lccsanandroid/webkit/WebView;

    const-string v2, "onSystemPause"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public final a(I)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/a;->a(I)V

    .line 77
    iput p1, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->b:I

    .line 78
    return-void
.end method

.method public final a(Lccsanandroid/content/res/Configuration;)V
    .locals 3

    .line 52
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/video/signal/a/a;->a(Lccsanandroid/content/res/Configuration;)V

    .line 54
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 56
    iget p1, p1, Lccsanandroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    const-string v2, "orientation"

    if-ne p1, v1, :cond_0

    .line 57
    :try_start_1
    const-string p1, "landscape"

    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_0

    .line 59
    :cond_0
    const-string p1, "portrait"

    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 61
    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->a:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    goto :goto_1

    .line 63
    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    :goto_1
    return-void
.end method

.method public final b()V
    .locals 4

    .line 39
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/a;->b()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->b:I

    .line 41
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->a:Lccsanandroid/webkit/WebView;

    const-string v2, "onSystemResume"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public final f()V
    .locals 4

    .line 46
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/a;->f()V

    .line 47
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->a:Lccsanandroid/webkit/WebView;

    const-string v2, "onSystemDestory"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public final g()V
    .locals 4

    .line 70
    invoke-super {p0}, Lccsancom/mbridge/msdk/video/signal/a/a;->g()V

    .line 71
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->a:Lccsanandroid/webkit/WebView;

    const-string v2, "onSystemBackPressed"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final h()I
    .locals 1

    .line 82
    iget v0, p0, Lccsancom/mbridge/msdk/video/signal/a/h;->b:I

    return v0
.end method
