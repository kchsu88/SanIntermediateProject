.class public Lccsancom/san/mediation/loader/MintegralBannerAd;
.super Lccsancom/san/mediation/loader/BaseMintegralAd;
.source "MintegralBannerAd.java"

# interfaces
.implements Lccsancom/san/ads/base/IBannerAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mintegral.BannerAd"


# instance fields
.field private mBannerView:Lccsancom/mbridge/msdk/out/MBBannerView;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1, p2}, Lccsancom/san/mediation/loader/BaseMintegralAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method static synthetic access$002(Lccsancom/san/mediation/loader/MintegralBannerAd;Lccsancom/mbridge/msdk/out/MBBannerView;)Lccsancom/mbridge/msdk/out/MBBannerView;
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/MintegralBannerAd;
    .param p1, "x1"    # Lccsancom/mbridge/msdk/out/MBBannerView;

    .line 19
    iput-object p1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd;->mBannerView:Lccsancom/mbridge/msdk/out/MBBannerView;

    return-object p1
.end method

.method private getMBAdSize()Lccsancom/mbridge/msdk/out/BannerSize;
    .locals 4

    .line 85
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    sget-object v1, Lccsancom/san/ads/AdSize;->BANNER:Lccsancom/san/ads/AdSize;

    if-ne v0, v1, :cond_0

    .line 86
    new-instance v0, Lccsancom/mbridge/msdk/out/BannerSize;

    const/4 v1, 0x4

    const/16 v2, 0x140

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/out/BannerSize;-><init>(III)V

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/out/BannerSize;

    const/4 v1, 0x2

    const/16 v2, 0x12c

    const/16 v3, 0xfa

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/out/BannerSize;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method protected doStartLoadAd()V
    .locals 4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#startLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/AdSize;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Lccsancom/mbridge/msdk/out/MBBannerView;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/out/MBBannerView;-><init>(Lccsanandroid/content/Context;)V

    .line 31
    .local v0, "mbBannerView":Lccsancom/mbridge/msdk/out/MBBannerView;
    invoke-direct {p0}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getMBAdSize()Lccsancom/mbridge/msdk/out/BannerSize;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/mediation/loader/MintegralBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getRealPlacementId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/MintegralBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getUnitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/out/MBBannerView;->init(Lccsancom/mbridge/msdk/out/BannerSize;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/out/MBBannerView;->setAllowShowCloseBtn(Z)V

    .line 33
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    .line 34
    invoke-direct {p0}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getMBAdSize()Lccsancom/mbridge/msdk/out/BannerSize;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/out/BannerSize;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Lccsancom/san/mediation/helper/MintegralHelper;->dip2px(F)I

    move-result v2

    invoke-direct {p0}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getMBAdSize()Lccsancom/mbridge/msdk/out/BannerSize;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/out/BannerSize;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lccsancom/san/mediation/helper/MintegralHelper;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/out/MBBannerView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 35
    new-instance v1, Lccsancom/san/mediation/loader/MintegralBannerAd$1;

    invoke-direct {v1, p0, v0}, Lccsancom/san/mediation/loader/MintegralBannerAd$1;-><init>(Lccsancom/san/mediation/loader/MintegralBannerAd;Lccsancom/mbridge/msdk/out/MBBannerView;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/out/MBBannerView;->setBannerAdListener(Lccsancom/mbridge/msdk/out/BannerAdListener;)V

    .line 81
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/MBBannerView;->load()V

    .line 82
    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 93
    sget-object v0, Lccsancom/san/ads/AdFormat;->BANNER:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public getAdSize()Lccsancom/san/ads/AdSize;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdView()Lccsanandroid/view/View;
    .locals 1

    .line 108
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralBannerAd;->mBannerView:Lccsancom/mbridge/msdk/out/MBBannerView;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralBannerAd;->mBannerView:Lccsancom/mbridge/msdk/out/MBBannerView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
