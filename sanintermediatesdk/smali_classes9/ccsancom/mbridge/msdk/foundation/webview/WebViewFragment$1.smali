.class final Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment$1;
.super Ljava/lang/Object;
.source "WebViewFragment.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/webview/BrowserView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;->onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment$1;->a:Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 31
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment$1;->a:Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    .line 32
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 0

    .line 36
    invoke-static {p2}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment$1;->a:Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;

    .line 38
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    const/4 p3, 0x0

    .line 37
    invoke-static {p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/tools/t$a;->a(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/mbridge/msdk/out/NativeListener$NativeTrackingListener;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment$1;->a:Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/webview/WebViewFragment;->getActivity()Lccsanandroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroidx/fragment/app/FragmentActivity;->finish()V

    .line 42
    :cond_0
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 47
    const/4 p1, 0x0

    return p1
.end method
