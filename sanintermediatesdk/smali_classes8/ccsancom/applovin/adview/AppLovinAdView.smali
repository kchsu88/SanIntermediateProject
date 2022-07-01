.class public Lccsancom/applovin/adview/AppLovinAdView;
.super Lccsanandroid/widget/RelativeLayout;


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "http://schemas.applovin.com/android/1.0"


# instance fields
.field private a:Lccsancom/applovin/impl/adview/b;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/applovin/adview/AppLovinAdView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 6

    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/adview/AppLovinAdView;->a(Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsanandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lccsancom/applovin/adview/AppLovinAdView;-><init>(Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p3}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/adview/AppLovinAdView;->a(Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/sdk/AppLovinSdk;Lccsancom/applovin/sdk/AppLovinAdSize;Lccsanandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lccsancom/applovin/adview/AppLovinAdView;-><init>(Lccsancom/applovin/sdk/AppLovinSdk;Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/sdk/AppLovinSdk;Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsanandroid/content/Context;)V
    .locals 6

    invoke-direct {p0, p4}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/adview/AppLovinAdView;->a(Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Lccsanandroid/util/AttributeSet;Lccsanandroid/content/Context;)V
    .locals 3

    invoke-virtual {p2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object p1

    iget v0, p1, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    const/4 v1, 0x1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v1, v2, p1}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    new-instance v1, Lccsanandroid/widget/TextView;

    invoke-direct {v1, p2}, Lccsanandroid/widget/TextView;-><init>(Lccsanandroid/content/Context;)V

    const/16 p2, 0xdc

    invoke-static {p2, p2, p2}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {v1, p2}, Lccsanandroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 p2, -0x1000000

    invoke-virtual {v1, p2}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    const-string p2, "AppLovin Ad"

    invoke-virtual {v1, p2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    invoke-virtual {v1, p2}, Lccsanandroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v1, v0, p1}, Lccsancom/applovin/adview/AppLovinAdView;->addView(Lccsanandroid/view/View;II)V

    return-void
.end method

.method private a(Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 8

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinAdView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/adview/b;

    invoke-direct {v0}, Lccsancom/applovin/impl/adview/b;-><init>()V

    move-object v1, v0

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/adview/AppLovinAdView;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/util/AttributeSet;)V

    iput-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p5, p4}, Lccsancom/applovin/adview/AppLovinAdView;->a(Lccsanandroid/util/AttributeSet;Lccsanandroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->f()V

    :cond_0
    return-void
.end method

.method public getAdViewController()Lccsancom/applovin/impl/adview/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    return-object v0
.end method

.method public getSize()Lccsancom/applovin/sdk/AppLovinAdSize;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->b()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadNextAd()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "AppLovinSdk"

    const-string v1, "Unable to load next ad: AppLovinAdView is not initialized."

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->g(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lccsanandroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->i()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->j()V

    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->d()V

    :cond_0
    return-void
.end method

.method public renderAd(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/b;->e()V

    :cond_0
    return-void
.end method

.method public setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    :cond_0
    return-void
.end method

.method public setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    :cond_0
    return-void
.end method

.method public setAdLoadListener(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    :cond_0
    return-void
.end method

.method public setAdViewEventListener(Lccsancom/applovin/adview/AppLovinAdViewEventListener;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinAdView;->a:Lccsancom/applovin/impl/adview/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/b;->a(Lccsancom/applovin/adview/AppLovinAdViewEventListener;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinAdView{zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinAdView;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinAdView;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
