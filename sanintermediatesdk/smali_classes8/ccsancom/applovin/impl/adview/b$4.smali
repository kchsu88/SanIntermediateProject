.class Lccsancom/applovin/impl/adview/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/b;->a(Lccsanandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/graphics/PointF;

.field final synthetic b:Lccsancom/applovin/impl/adview/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/b;Lccsanandroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    iput-object p2, p0, Lccsancom/applovin/impl/adview/b$4;->a:Lccsanandroid/graphics/PointF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    instance-of v0, v0, Lccsancom/applovin/impl/sdk/a/a;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lccsancom/applovin/impl/sdk/a/a;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->f(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->f(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->g(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->retrieveParentActivity(Lccsanandroid/view/View;Lccsancom/applovin/impl/sdk/k;)Lccsanandroid/app/Activity;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->h(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->h(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/view/ViewGroup;

    move-result-object v1

    iget-object v3, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v3}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    new-instance v3, Lccsancom/applovin/impl/adview/m;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v4}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v4

    iget-object v5, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v5}, Lccsancom/applovin/impl/adview/b;->g(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v5

    invoke-direct {v3, v2, v4, v0, v5}, Lccsancom/applovin/impl/adview/m;-><init>(Lccsancom/applovin/impl/sdk/a/a;Lccsancom/applovin/impl/adview/d;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/sdk/k;)V

    invoke-static {v1, v3}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;Lccsancom/applovin/impl/adview/m;)Lccsancom/applovin/impl/adview/m;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/adview/b$4$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/adview/b$4$1;-><init>(Lccsancom/applovin/impl/adview/b$4;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/m;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->b(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/m;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/m;->show()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->i(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/b;->e(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/a/g;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v2}, Lccsancom/applovin/impl/adview/b;->h(Lccsancom/applovin/impl/adview/b;)Lccsanandroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/adview/AppLovinAdView;

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->j(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/d/d;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->j(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/d;->d()V

    goto :goto_1

    :cond_5
    const-string v0, "AppLovinAdView"

    const-string v1, "Unable to expand ad. No Activity found."

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/a;->j()Lccsanandroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->l(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->r()Lccsancom/applovin/adview/AppLovinAdView;

    move-result-object v3

    iget-object v4, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    iget-object v6, p0, Lccsancom/applovin/impl/adview/b$4;->a:Lccsanandroid/graphics/PointF;

    invoke-static {v4}, Lccsancom/applovin/impl/adview/b;->k(Lccsancom/applovin/impl/adview/b;)Z

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->trackAndLaunchClick(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/impl/adview/b;Lccsanandroid/net/Uri;Lccsanandroid/graphics/PointF;Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->j(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/d/d;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->j(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/sdk/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/d;->b()V

    :cond_6
    iget-object v0, p0, Lccsancom/applovin/impl/adview/b$4;->b:Lccsancom/applovin/impl/adview/b;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/impl/adview/b;)Lccsancom/applovin/impl/adview/d;

    move-result-object v0

    const-string v1, "javascript:al_onFailedExpand();"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/adview/d;->a(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method
