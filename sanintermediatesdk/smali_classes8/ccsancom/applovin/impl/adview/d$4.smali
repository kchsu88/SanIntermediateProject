.class final Lccsancom/applovin/impl/adview/d$4;
.super Lccsanandroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/d;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessGone(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    invoke-static {}, Lccsancom/applovin/impl/adview/d;->b()Lccsanandroid/webkit/WebView;

    move-result-object p2

    if-ne p1, p2, :cond_0

    invoke-static {}, Lccsancom/applovin/impl/adview/d;->b()Lccsanandroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->destroy()V

    const/4 p1, 0x0

    invoke-static {p1}, Lccsancom/applovin/impl/adview/d;->a(Lccsanandroid/webkit/WebView;)Lccsanandroid/webkit/WebView;

    new-instance p1, Lccsancom/applovin/impl/adview/d$4$1;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/adview/d$4$1;-><init>(Lccsancom/applovin/impl/adview/d$4;)V

    invoke-static {p1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
