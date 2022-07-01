.class Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;
.super Ljava/lang/Object;
.source "FullAdWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DestroyRunnable"
.end annotation


# instance fields
.field private webView:Lccsanandroid/webkit/WebView;


# direct methods
.method constructor <init>(Lccsanandroid/webkit/WebView;)V
    .locals 0
    .param p1, "webView"    # Lccsanandroid/webkit/WebView;

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->webView:Lccsanandroid/webkit/WebView;

    .line 500
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 504
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->webView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->stopLoading()V

    .line 505
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->webView:Lccsanandroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 506
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    .line 507
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->webView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setWebViewRenderProcessClient(Lccsanandroid/webkit/WebViewRenderProcessClient;)V

    .line 509
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->webView:Lccsanandroid/webkit/WebView;

    const-string v2, ""

    invoke-virtual {v0, v2, v1, v1}, Lccsanandroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/FullAdWidget$DestroyRunnable;->webView:Lccsanandroid/webkit/WebView;

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->destroy()V

    .line 511
    return-void
.end method
