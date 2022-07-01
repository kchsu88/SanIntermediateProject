.class public final Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;
.super Lccsanandroid/webkit/WebChromeClient;
.source "WindVaneWebViewChromeClient.java"


# instance fields
.field a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lccsanandroid/webkit/WebChromeClient;-><init>()V

    .line 17
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    .line 22
    return-void
.end method

.method public final onConsoleMessage(Lccsanandroid/webkit/ConsoleMessage;)Z
    .locals 7

    .line 49
    invoke-virtual {p1}, Lccsanandroid/webkit/ConsoleMessage;->messageLevel()Lccsanandroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v0

    sget-object v1, Lccsanandroid/webkit/ConsoleMessage$MessageLevel;->LOG:Lccsanandroid/webkit/ConsoleMessage$MessageLevel;

    if-eq v0, v1, :cond_0

    .line 50
    invoke-super {p0, p1}, Lccsanandroid/webkit/WebChromeClient;->onConsoleMessage(Lccsanandroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 53
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getSignalCommunication()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 55
    invoke-virtual {p1}, Lccsanandroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "wv_hybrid:"

    .line 57
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v3, "mv://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConsoleMessage: message.length() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "H5_ENTRY"

    invoke-static {v6, v3}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0, v2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    .line 61
    const/4 v2, 0x1

    add-int/2addr p1, v2

    invoke-virtual {v1, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;->b(Ljava/lang/String;)V

    .line 64
    return v2

    .line 67
    :cond_1
    return v4

    .line 70
    :cond_2
    invoke-super {p0, p1}, Lccsanandroid/webkit/WebChromeClient;->onConsoleMessage(Lccsanandroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public final onJsPrompt(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsPromptResult;)Z
    .locals 1

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "H5_ENTRY"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;->a:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getSignalCommunication()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;

    move-result-object p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    if-eqz p4, :cond_0

    invoke-interface {p1, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;->a(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 31
    invoke-interface {p1, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/c;->b(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p5, p2}, Lccsanandroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 33
    const/4 p1, 0x1

    return p1

    .line 36
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onProgressChanged(Lccsanandroid/webkit/WebView;I)V
    .locals 1

    .line 41
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebChromeClient;->onProgressChanged(Lccsanandroid/webkit/WebView;I)V

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/k;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;->b(Lccsanandroid/webkit/WebView;I)V

    .line 45
    :cond_0
    return-void
.end method
