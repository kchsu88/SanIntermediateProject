.class Lccsancom/applovin/impl/adview/e$1;
.super Lccsancom/applovin/impl/sdk/utils/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/e;->a(Lccsanandroid/net/Uri;Lccsancom/applovin/impl/adview/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/applovin/impl/adview/e;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/e$1;->b:Lccsancom/applovin/impl/adview/e;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/e$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lccsanandroid/app/Activity;Lccsanandroid/os/Bundle;)V
    .locals 1

    instance-of p2, p1, Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    if-eqz p2, :cond_0

    check-cast p1, Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e$1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lccsancom/applovin/sdk/AppLovinWebViewActivity;->loadUrl(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinWebViewActivity$EventListener;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e$1;->b:Lccsancom/applovin/impl/adview/e;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/adview/e;)Lccsancom/applovin/impl/adview/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->g()Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/e$1;->b:Lccsancom/applovin/impl/adview/e;

    invoke-static {p2}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/adview/e;)Lccsancom/applovin/impl/adview/b;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/adview/b;->p()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object p2

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e$1;->b:Lccsancom/applovin/impl/adview/e;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/adview/e;)Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->r()Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Lccsanandroid/app/Activity;)V
    .locals 2

    instance-of p1, p1, Lccsancom/applovin/sdk/AppLovinWebViewActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e$1;->b:Lccsancom/applovin/impl/adview/e;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/adview/e;)Lccsancom/applovin/impl/adview/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/b;->g()Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/e$1;->b:Lccsancom/applovin/impl/adview/e;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/adview/e;)Lccsancom/applovin/impl/adview/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->p()Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/e$1;->b:Lccsancom/applovin/impl/adview/e;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/e;->a(Lccsancom/applovin/impl/adview/e;)Lccsancom/applovin/impl/adview/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/adview/b;->r()Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/e$1;->b:Lccsancom/applovin/impl/adview/e;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/e;->b(Lccsancom/applovin/impl/adview/e;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/a;->b(Lccsancom/applovin/impl/sdk/utils/a;)V

    :cond_0
    return-void
.end method
