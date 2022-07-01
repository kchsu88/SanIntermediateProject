.class public Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;
.super Lccsanandroid/widget/FrameLayout;


# instance fields
.field private final a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

.field private final b:Lccsanandroid/widget/TextView;

.field private final c:Lccsanandroid/widget/TextView;

.field private final d:Lccsanandroid/widget/ImageView;

.field private final e:Lccsanandroid/widget/FrameLayout;

.field private final f:Lccsanandroid/widget/FrameLayout;

.field private final g:Lccsanandroid/widget/FrameLayout;

.field private final h:Lccsanandroid/widget/Button;


# direct methods
.method public constructor <init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;Lccsanandroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;-><init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Lccsanandroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;Ljava/lang/String;Lccsanandroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    invoke-virtual {p1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "vertical_banner_template"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p2, Lccsancom/applovin/sdk/R$layout;->max_native_ad_vertical_banner_view:I

    goto :goto_1

    :cond_0
    const-string v0, "media_banner_template"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "no_body_banner_template"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "vertical_media_banner_template"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget p2, Lccsancom/applovin/sdk/R$layout;->max_native_ad_vertical_media_banner_view:I

    goto :goto_1

    :cond_2
    sget p2, Lccsancom/applovin/sdk/R$layout;->max_native_ad_banner_view:I

    goto :goto_1

    :cond_3
    :goto_0
    sget p2, Lccsancom/applovin/sdk/R$layout;->max_native_ad_media_banner_view:I

    goto :goto_1

    :cond_4
    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "vertical_leader_template"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget p2, Lccsancom/applovin/sdk/R$layout;->max_native_ad_vertical_leader_view:I

    goto :goto_1

    :cond_5
    sget p2, Lccsancom/applovin/sdk/R$layout;->max_native_ad_leader_view:I

    goto :goto_1

    :cond_6
    sget-object p2, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, p2, :cond_7

    sget p2, Lccsancom/applovin/sdk/R$layout;->max_native_ad_mrec_view:I

    :goto_1
    invoke-virtual {p3}, Lccsanandroid/app/Activity;->getLayoutInflater()Lccsanandroid/view/LayoutInflater;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->addView(Lccsanandroid/view/View;)V

    sget p2, Lccsancom/applovin/sdk/R$id;->native_title_text_view:I

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/TextView;

    iput-object p2, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Lccsanandroid/widget/TextView;

    sget p2, Lccsancom/applovin/sdk/R$id;->native_body_text_view:I

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/TextView;

    iput-object p2, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Lccsanandroid/widget/TextView;

    sget p2, Lccsancom/applovin/sdk/R$id;->native_icon_image_view:I

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/ImageView;

    iput-object p2, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Lccsanandroid/widget/ImageView;

    sget p2, Lccsancom/applovin/sdk/R$id;->native_icon_view:I

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/FrameLayout;

    iput-object p2, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Lccsanandroid/widget/FrameLayout;

    sget p2, Lccsancom/applovin/sdk/R$id;->options_view:I

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/FrameLayout;

    iput-object p2, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Lccsanandroid/widget/FrameLayout;

    sget p2, Lccsancom/applovin/sdk/R$id;->native_media_content_view:I

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/FrameLayout;

    iput-object p2, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Lccsanandroid/widget/FrameLayout;

    sget p2, Lccsancom/applovin/sdk/R$id;->native_cta_button:I

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/widget/Button;

    iput-object p2, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->h:Lccsanandroid/widget/Button;

    iput-object p1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    invoke-direct {p0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a()V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported ad format: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Lccsanandroid/widget/TextView;

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    invoke-virtual {v1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    invoke-virtual {v1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->h:Lccsanandroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    invoke-virtual {v1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->getIcon()Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    invoke-virtual {v1}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->getIconView()Lccsanandroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setImageDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getUri()Lccsanandroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getUri()Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;->getUri()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setImageURI(Lccsanandroid/net/Uri;)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->getOptionsView()Lccsanandroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Lccsanandroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    goto :goto_1

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    :cond_6
    :goto_1
    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->getMediaView()Lccsanandroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Lccsanandroid/widget/FrameLayout;

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    :cond_8
    :goto_2
    invoke-direct {p0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->b()V

    new-instance v0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$1;-><init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b()V
    .locals 3

    sget v0, Lccsancom/applovin/sdk/R$id;->inner_parent_layout:I

    invoke-virtual {p0, v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$2;

    invoke-direct {v2, p0, v0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView$2;-><init>(Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;Lccsanandroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAd()Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->a:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    return-object v0
.end method

.method public getBodyTextView()Lccsanandroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->c:Lccsanandroid/widget/TextView;

    return-object v0
.end method

.method public getCallToActionButton()Lccsanandroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->h:Lccsanandroid/widget/Button;

    return-object v0
.end method

.method public getIconContentView()Lccsanandroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->e:Lccsanandroid/widget/FrameLayout;

    return-object v0
.end method

.method public getIconImageView()Lccsanandroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->d:Lccsanandroid/widget/ImageView;

    return-object v0
.end method

.method public getMediaContentView()Lccsanandroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->g:Lccsanandroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOptionsContentView()Lccsanandroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->f:Lccsanandroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTitleTextView()Lccsanandroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->b:Lccsanandroid/widget/TextView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/nativeAds/MaxNativeAdView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MaxAdView"

    const-string v1, "Attached to non-hardware accelerated window: some native ad views require hardware accelerated Activities to render properly."

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
