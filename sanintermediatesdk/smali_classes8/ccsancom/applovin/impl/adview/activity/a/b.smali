.class public Lccsancom/applovin/impl/adview/activity/a/b;
.super Lccsancom/applovin/impl/adview/activity/a/a;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lccsancom/applovin/impl/adview/activity/a/a;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/adview/n;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a/b;->d:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    if-eqz p1, :cond_1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/b;->c:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/a/g;->aa()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    :goto_0
    or-int/lit8 p2, p2, 0x30

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a/b;->c:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->W()Lccsancom/applovin/impl/sdk/a/g$c;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lccsancom/applovin/impl/adview/activity/a/b;->a(Lccsancom/applovin/impl/sdk/a/g$c;ILccsancom/applovin/impl/adview/n;)V

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/a/b;->b:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/b;->d:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->setContentView(Lccsanandroid/view/View;)V

    return-void
.end method
