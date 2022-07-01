.class public Lccsancom/applovin/impl/adview/activity/a/d;
.super Lccsancom/applovin/impl/adview/activity/a/a;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lccsancom/applovin/impl/adview/activity/a/a;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/adview/AppLovinFullscreenActivity;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method


# virtual methods
.method public a(Lccsanandroid/widget/ImageView;Lccsancom/applovin/impl/adview/n;Lccsancom/applovin/impl/adview/n;Lccsancom/applovin/impl/adview/a;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/a/d;->d:Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p5}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    const/4 p5, 0x3

    const/4 v0, 0x5

    if-eqz p2, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/a/d;->c:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/g;->ab()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    :goto_0
    or-int/lit8 v1, v1, 0x30

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/a/d;->c:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/a/g;->W()Lccsancom/applovin/impl/sdk/a/g$c;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p2}, Lccsancom/applovin/impl/adview/activity/a/d;->a(Lccsancom/applovin/impl/sdk/a/g$c;ILccsancom/applovin/impl/adview/n;)V

    :cond_1
    if-eqz p3, :cond_3

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/d;->c:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/a/g;->aa()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p5, 0x5

    :goto_1
    or-int/lit8 p2, p5, 0x30

    iget-object p5, p0, Lccsancom/applovin/impl/adview/activity/a/d;->c:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {p5}, Lccsancom/applovin/impl/sdk/a/g;->W()Lccsancom/applovin/impl/sdk/a/g$c;

    move-result-object p5

    invoke-virtual {p0, p5, p2, p3}, Lccsancom/applovin/impl/adview/activity/a/d;->a(Lccsancom/applovin/impl/sdk/a/g$c;ILccsancom/applovin/impl/adview/n;)V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/d;->b:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    iget-object p3, p0, Lccsancom/applovin/impl/adview/activity/a/d;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object p5, Lccsancom/applovin/impl/sdk/c/b;->cw:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p3, p5}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p2, p3}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result p2

    new-instance p3, Lccsanandroid/widget/FrameLayout$LayoutParams;

    iget-object p5, p0, Lccsancom/applovin/impl/adview/activity/a/d;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->cy:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p5, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-direct {p3, p2, p2, p5}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/d;->b:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    iget-object p5, p0, Lccsancom/applovin/impl/adview/activity/a/d;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->cx:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p5, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-static {p2, p5}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result p2

    invoke-virtual {p3, p2, p2, p2, p2}, Lccsanandroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/d;->d:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p2, p1, p3}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    if-eqz p4, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/a/d;->d:Lccsanandroid/view/ViewGroup;

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/d;->e:Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, p4, p2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/a/d;->b:Lccsancom/applovin/adview/AppLovinFullscreenActivity;

    iget-object p2, p0, Lccsancom/applovin/impl/adview/activity/a/d;->d:Lccsanandroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lccsancom/applovin/adview/AppLovinFullscreenActivity;->setContentView(Lccsanandroid/view/View;)V

    return-void
.end method
