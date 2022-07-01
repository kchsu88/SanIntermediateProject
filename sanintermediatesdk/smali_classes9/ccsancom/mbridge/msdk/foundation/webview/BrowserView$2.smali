.class final Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;
.super Lccsanandroid/webkit/WebViewClient;
.source "BrowserView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/foundation/webview/BrowserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb! = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    .line 162
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->e(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->setVisible(Z)V

    .line 164
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->e(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/webview/ProgressBar;->setProgressState(I)V

    .line 165
    return-void
.end method

.method public final shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "js\u5927\u8df3! = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrowserView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object v0

    const-string v1, "backward"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object v0

    const-string v1, "forward"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$2;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    .line 178
    :cond_0
    return v1
.end method
