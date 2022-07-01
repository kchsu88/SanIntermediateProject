.class public Lccsancom/applovin/mediation/ads/MaxAdView;
.super Lccsanandroid/widget/RelativeLayout;


# instance fields
.field private a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

.field private b:Lccsanandroid/view/View;

.field private c:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/applovin/mediation/ads/MaxAdView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    const-string p3, "http://schemas.applovin.com/android/1.0"

    const-string v0, "adUnitId"

    invoke-interface {p2, p3, v0}, Lccsanandroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "adFormat"

    invoke-interface {p2, p3, v0}, Lccsanandroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lccsancom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/b;->a(Lccsanandroid/content/Context;)Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p3

    :goto_0
    move-object v3, p3

    const/16 p3, 0x31

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "gravity"

    invoke-interface {p2, v0, v1, p3}, Lccsanandroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eqz v2, :cond_3

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    instance-of p2, p1, Lccsanandroid/app/Activity;

    if-eqz p2, :cond_1

    move-object v6, p1

    check-cast v6, Lccsanandroid/app/Activity;

    invoke-static {v6}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lccsancom/applovin/mediation/ads/MaxAdView;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;ILccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max ad view context is not an activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty ad unit ID specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad unit ID specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lccsanandroid/app/Activity;)V
    .locals 1

    invoke-static {p2}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lccsancom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;)V
    .locals 1

    invoke-static {p3}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lccsancom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V
    .locals 8

    invoke-direct {p0, p4}, Lccsanandroid/widget/RelativeLayout;-><init>(Lccsanandroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxAdView(adUnitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaxAdView"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/mediation/ads/a;->logApiCall(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x31

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lccsancom/applovin/mediation/ads/MaxAdView;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;ILccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V
    .locals 1

    invoke-static {p3}, Lccsancom/applovin/impl/sdk/utils/b;->a(Lccsanandroid/content/Context;)Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lccsancom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    return-void
.end method

.method private a(Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/content/Context;)V
    .locals 3

    invoke-virtual {p2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->getSize()Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v2, v1, v0}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->getSize()Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {v2, p1, v0}, Lccsanandroid/util/TypedValue;->applyDimension(IFLccsanandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    new-instance v0, Lccsanandroid/widget/TextView;

    invoke-direct {v0, p2}, Lccsanandroid/widget/TextView;-><init>(Lccsanandroid/content/Context;)V

    const/16 p2, 0xdc

    invoke-static {p2, p2, p2}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result p2

    invoke-virtual {v0, p2}, Lccsanandroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 p2, -0x1000000

    invoke-virtual {v0, p2}, Lccsanandroid/widget/TextView;->setTextColor(I)V

    const-string p2, "AppLovin MAX Ad"

    invoke-virtual {v0, p2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p2, 0x11

    invoke-virtual {v0, p2}, Lccsanandroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v0, v1, p1}, Lccsancom/applovin/mediation/ads/MaxAdView;->addView(Lccsanandroid/view/View;II)V

    return-void
.end method

.method private a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;ILccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V
    .locals 9

    invoke-virtual {p0}, Lccsancom/applovin/mediation/ads/MaxAdView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lccsanandroid/view/View;

    invoke-direct {v0, p5}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->b:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->b:Lccsanandroid/view/View;

    invoke-virtual {p0, v0}, Lccsancom/applovin/mediation/ads/MaxAdView;->addView(Lccsanandroid/view/View;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->b:Lccsanandroid/view/View;

    new-instance v2, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/ads/MaxAdView;->getVisibility()I

    move-result v0

    iput v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->c:I

    new-instance v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->b:Lccsanandroid/view/View;

    iget-object v7, p4, Lccsancom/applovin/sdk/AppLovinSdk;->coreSdk:Lccsancom/applovin/impl/sdk/k;

    move-object v2, v0

    move-object v4, p2

    move-object v5, p0

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;-><init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/mediation/ads/MaxAdView;Lccsanandroid/view/View;Lccsancom/applovin/impl/sdk/k;Lccsanandroid/app/Activity;)V

    iput-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {p0, p3}, Lccsancom/applovin/mediation/ads/MaxAdView;->setGravity(I)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/ads/MaxAdView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Lccsanandroid/graphics/drawable/ColorDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/mediation/ads/MaxAdView;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lccsanandroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/mediation/ads/MaxAdView;->setBackgroundColor(I)V

    :cond_0
    invoke-super {p0, v1}, Lccsanandroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p5}, Lccsancom/applovin/mediation/ads/MaxAdView;->a(Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/content/Context;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->destroy()V

    return-void
.end method

.method public getAdFormat()Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->getAdFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->getPlacement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadAd()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadAd()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Lccsanandroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowVisibilityChanged(visibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->c:I

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/o;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->onWindowVisibilityChanged(I)V

    :cond_0
    iput p1, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->c:I

    return-void
.end method

.method public setAlpha(F)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAlpha(alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->b:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackgroundColor(color="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->setPublisherBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->b:Lccsanandroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExtraParameter(key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1, p2}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lccsancom/applovin/mediation/MaxAdViewAdListener;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListener(listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->setListener(Lccsancom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method public setPlacement(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->setPlacement(Ljava/lang/String;)V

    return-void
.end method

.method public setRevenueListener(Lccsancom/applovin/mediation/MaxAdRevenueListener;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRevenueListener(listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->setRevenueListener(Lccsancom/applovin/mediation/MaxAdRevenueListener;)V

    return-void
.end method

.method public startAutoRefresh()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->startAutoRefresh()V

    return-void
.end method

.method public stopAutoRefresh()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->stopAutoRefresh()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxAdView;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "MaxAdView"

    :goto_0
    return-object v0
.end method
