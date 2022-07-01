.class final Lccsancom/mbridge/msdk/click/f$3;
.super Lccsanandroid/webkit/WebChromeClient;
.source "WebViewSpider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/click/f;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/click/f;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/click/f;)V
    .locals 0

    .line 270
    iput-object p1, p0, Lccsancom/mbridge/msdk/click/f$3;->a:Lccsancom/mbridge/msdk/click/f;

    invoke-direct {p0}, Lccsanandroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
    .locals 0

    .line 292
    const/4 p1, 0x1

    return p1
.end method

.method public final onJsConfirm(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
    .locals 0

    .line 297
    const/4 p1, 0x1

    return p1
.end method

.method public final onJsPrompt(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsPromptResult;)Z
    .locals 0

    .line 303
    const/4 p1, 0x1

    return p1
.end method

.method public final onProgressChanged(Lccsanandroid/webkit/WebView;I)V
    .locals 1

    .line 274
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 275
    :try_start_0
    const-string p2, "javascript:window.navigator.vibrate([]);"

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 277
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$3;->a:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->b(Lccsancom/mbridge/msdk/click/f;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$3;->a:Lccsancom/mbridge/msdk/click/f;

    iget-boolean p2, p2, Lccsancom/mbridge/msdk/click/f;->c:Z

    if-nez p2, :cond_0

    .line 278
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$3;->a:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->l(Lccsancom/mbridge/msdk/click/f;)V

    .line 281
    :cond_0
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$3;->a:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->d(Lccsancom/mbridge/msdk/click/f;)Lccsancom/mbridge/msdk/click/f$a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 282
    iget-object p2, p0, Lccsancom/mbridge/msdk/click/f$3;->a:Lccsancom/mbridge/msdk/click/f;

    invoke-static {p2}, Lccsancom/mbridge/msdk/click/f;->d(Lccsancom/mbridge/msdk/click/f;)Lccsancom/mbridge/msdk/click/f$a;

    move-result-object p2

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lccsancom/mbridge/msdk/click/f$a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 287
    :cond_1
    :goto_0
    nop

    .line 288
    :goto_1
    return-void
.end method
