.class public Lccsancom/applovin/impl/mediation/debugger/ui/a/d;
.super Lccsanandroid/app/Dialog;


# instance fields
.field private a:Lccsancom/applovin/mediation/ads/MaxAdView;

.field private b:Lccsancom/applovin/mediation/MaxAdFormat;

.field private c:Lccsanandroid/app/Activity;

.field private d:Lccsanandroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Lccsancom/applovin/mediation/ads/MaxAdView;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;)V
    .locals 1

    const v0, 0x1030010

    invoke-direct {p0, p3, v0}, Lccsanandroid/app/Dialog;-><init>(Lccsanandroid/content/Context;I)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->a:Lccsancom/applovin/mediation/ads/MaxAdView;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->b:Lccsancom/applovin/mediation/MaxAdFormat;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->c:Lccsanandroid/app/Activity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->requestWindowFeature(I)Z

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->d:Lccsanandroid/widget/RelativeLayout;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->a:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->removeView(Lccsanandroid/view/View;)V

    invoke-super {p0}, Lccsanandroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lccsanandroid/app/Dialog;->onCreate(Lccsanandroid/os/Bundle;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->c:Lccsanandroid/app/Activity;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->b:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->getSize()Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;->getWidth()I

    move-result v0

    invoke-static {p1, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result p1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->c:Lccsanandroid/app/Activity;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->b:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->getSize()Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result v0

    new-instance v1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p1, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xd

    invoke-virtual {v1, p1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->a:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {p1, v1}, Lccsancom/applovin/mediation/ads/MaxAdView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->c:Lccsanandroid/app/Activity;

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result p1

    new-instance v0, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0xe

    invoke-virtual {v0, p1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance p1, Lccsanandroid/widget/ImageButton;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->c:Lccsanandroid/app/Activity;

    invoke-direct {p1, v1}, Lccsanandroid/widget/ImageButton;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageButton;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->c:Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsancom/applovin/sdk/R$drawable;->ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_ccsan_applovin_ic_x_mark:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageButton;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    sget-object v0, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageButton;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageButton;->setColorFilter(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageButton;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/ui/a/d$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/d$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/d;)V

    invoke-virtual {p1, v1}, Lccsanandroid/widget/ImageButton;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    new-instance v1, Lccsanandroid/widget/RelativeLayout;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->c:Lccsanandroid/app/Activity;

    invoke-direct {v1, v2}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->d:Lccsanandroid/widget/RelativeLayout;

    new-instance v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lccsanandroid/widget/RelativeLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->d:Lccsanandroid/widget/RelativeLayout;

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->d:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->d:Lccsanandroid/widget/RelativeLayout;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->a:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/RelativeLayout;->addView(Lccsanandroid/view/View;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->d:Lccsanandroid/widget/RelativeLayout;

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d$2;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/d$2;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/d;)V

    invoke-virtual {p1, v0}, Lccsanandroid/widget/RelativeLayout;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->d:Lccsanandroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->setContentView(Lccsanandroid/view/View;)V

    return-void
.end method
