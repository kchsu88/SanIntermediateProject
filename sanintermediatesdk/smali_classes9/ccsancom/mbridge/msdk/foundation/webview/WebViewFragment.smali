.class public Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;
.super Lccsancom/mbridge/msdk/foundation/fragment/BaseFragment;
.source "WebViewFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Lccsancom/mbridge/msdk/foundation/fragment/BaseFragment;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
    .locals 0

    .line 24
    new-instance p1, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;-><init>(Lccsanandroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroidx/fragment/app/FragmentActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p2

    const-string p3, "msg"

    invoke-virtual {p2, p3}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->loadUrl(Ljava/lang/String;)V

    .line 28
    new-instance p2, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment$1;

    invoke-direct {p2, p0}, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment$1;-><init>(Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;)V

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/webview/BrowserView;->setListener(Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;)V

    .line 50
    return-object p1
.end method
