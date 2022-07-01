.class public Lccsancom/iab/omid/library/vungle/publisher/a;
.super Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;


# direct methods
.method public constructor <init>(Lccsanandroid/webkit/WebView;)V
    .locals 2

    invoke-direct {p0}, Lccsancom/iab/omid/library/vungle/publisher/AdSessionStatePublisher;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/iab/omid/library/vungle/publisher/a;->a(Lccsanandroid/webkit/WebView;)V

    return-void
.end method
