.class Lccsancom/applovin/impl/adview/f$1;
.super Lccsanandroid/webkit/WebViewRenderProcessClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/f;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/f;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/f$1;->a:Lccsancom/applovin/impl/adview/f;

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewRenderProcessClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderProcessResponsive(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebViewRenderProcess;)V
    .locals 0

    return-void
.end method

.method public onRenderProcessUnresponsive(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebViewRenderProcess;)V
    .locals 2

    instance-of p2, p1, Lccsancom/applovin/impl/adview/d;

    if-eqz p2, :cond_0

    check-cast p1, Lccsancom/applovin/impl/adview/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/d;->getCurrentAd()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/f$1;->a:Lccsancom/applovin/impl/adview/f;

    invoke-static {p2}, Lccsancom/applovin/impl/adview/f;->a(Lccsancom/applovin/impl/adview/f;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->aa()Lccsancom/applovin/impl/sdk/d/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p2

    sget-object v0, Lccsancom/applovin/impl/sdk/d/b;->D:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p2, v0}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/f$1;->a:Lccsancom/applovin/impl/adview/f;

    invoke-static {p2}, Lccsancom/applovin/impl/adview/f;->a(Lccsancom/applovin/impl/adview/f;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebView render process unresponsive for ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdWebViewRenderProcessClient"

    invoke-virtual {p2, v0, p1}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
