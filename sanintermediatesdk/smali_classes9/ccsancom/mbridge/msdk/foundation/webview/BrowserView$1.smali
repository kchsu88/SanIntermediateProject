.class final Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;
.super Ljava/lang/Object;
.source "BrowserView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->init()V
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

    .line 82
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 5

    .line 85
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->stopLoading()V

    .line 88
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 89
    const-string v0, "backward"

    invoke-static {p1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "forward"

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 90
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 91
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->canGoBack()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->goBack()V

    .line 94
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 95
    :cond_3
    invoke-static {p1, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 97
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->canGoForward()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 98
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->goForward()V

    .line 100
    :cond_4
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 101
    :cond_6
    const-string v1, "refresh"

    invoke-static {p1, v1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 102
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 103
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->b(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/ToolBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Lccsanandroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    :cond_8
    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->setEnabled(Z)V

    .line 105
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 106
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->a(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsanandroid/webkit/WebView;

    move-result-object p1

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->c(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_9
    const-string v0, "exits"

    invoke-static {p1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 109
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 110
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$1;->a:Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->d(Lccsancom/mbridge/msdk/foundation/webview/BrowserView;)Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;->a()V

    .line 113
    :cond_a
    :goto_1
    return-void
.end method
