.class public Lccsancom/vungle/warren/ui/view/WebSettingsUtils;
.super Ljava/lang/Object;
.source "WebSettingsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDefault(Lccsanandroid/webkit/WebView;)V
    .locals 3
    .param p0, "webView"    # Lccsanandroid/webkit/WebView;

    .line 14
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    .line 15
    .local v0, "webSettings":Lccsanandroid/webkit/WebSettings;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 16
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 17
    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 18
    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 19
    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 20
    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 21
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lccsanandroid/webkit/WebView;->setVisibility(I)V

    .line 26
    return-void
.end method
