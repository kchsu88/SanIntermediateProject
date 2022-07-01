.class public Lccsancom/san/mediation/loader/VungleBannerAd;
.super Lccsancom/san/mediation/loader/BaseVungleAd;
.source "VungleBannerAd.java"

# interfaces
.implements Lccsancom/san/ads/base/IBannerAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "Vungle.BannerAd"


# instance fields
.field private final mPlayAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

.field private mVungleBanner:Lccsancom/vungle/warren/VungleBanner;

.field private mVungleNativeAd:Lccsancom/vungle/warren/VungleNativeAd;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0, p1, p2}, Lccsancom/san/mediation/loader/BaseVungleAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lccsancom/san/mediation/loader/VungleBannerAd$4;

    invoke-direct {v0, p0}, Lccsancom/san/mediation/loader/VungleBannerAd$4;-><init>(Lccsancom/san/mediation/loader/VungleBannerAd;)V

    iput-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd;->mPlayAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lccsancom/san/mediation/loader/VungleBannerAd;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleBannerAd;

    .line 27
    invoke-direct {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->loadMRECAd()V

    return-void
.end method

.method static synthetic access$100(Lccsancom/san/mediation/loader/VungleBannerAd;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleBannerAd;

    .line 27
    invoke-direct {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->loadBannerAd()V

    return-void
.end method

.method static synthetic access$200(Lccsancom/san/mediation/loader/VungleBannerAd;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleBannerAd;

    .line 27
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getLoadDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lccsancom/san/mediation/loader/VungleBannerAd;)Lccsancom/vungle/warren/VungleNativeAd;
    .locals 1
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleBannerAd;

    .line 27
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd;->mVungleNativeAd:Lccsancom/vungle/warren/VungleNativeAd;

    return-object v0
.end method

.method static synthetic access$302(Lccsancom/san/mediation/loader/VungleBannerAd;Lccsancom/vungle/warren/VungleNativeAd;)Lccsancom/vungle/warren/VungleNativeAd;
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleBannerAd;
    .param p1, "x1"    # Lccsancom/vungle/warren/VungleNativeAd;

    .line 27
    iput-object p1, p0, Lccsancom/san/mediation/loader/VungleBannerAd;->mVungleNativeAd:Lccsancom/vungle/warren/VungleNativeAd;

    return-object p1
.end method

.method static synthetic access$400(Lccsancom/san/mediation/loader/VungleBannerAd;)Lccsancom/vungle/warren/PlayAdCallback;
    .locals 1
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleBannerAd;

    .line 27
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd;->mPlayAdCallback:Lccsancom/vungle/warren/PlayAdCallback;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/san/mediation/loader/VungleBannerAd;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleBannerAd;

    .line 27
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getLoadDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$602(Lccsancom/san/mediation/loader/VungleBannerAd;Lccsancom/vungle/warren/VungleBanner;)Lccsancom/vungle/warren/VungleBanner;
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleBannerAd;
    .param p1, "x1"    # Lccsancom/vungle/warren/VungleBanner;

    .line 27
    iput-object p1, p0, Lccsancom/san/mediation/loader/VungleBannerAd;->mVungleBanner:Lccsancom/vungle/warren/VungleBanner;

    return-object p1
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dip"    # F

    .line 184
    invoke-static {}, Lccsanandroid/content/res/Resources;->getSystem()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->density:F

    .line 185
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private loadBannerAd()V
    .locals 3

    .line 77
    const-string v0, "Vungle.BannerAd"

    const-string v1, "#loadBannerAd"

    invoke-static {v0, v1}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lccsancom/vungle/warren/BannerAdConfig;

    invoke-direct {v0}, Lccsancom/vungle/warren/BannerAdConfig;-><init>()V

    .line 79
    .local v0, "bannerAdConfig":Lccsancom/vungle/warren/BannerAdConfig;
    sget-object v1, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/BannerAdConfig;->setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 80
    new-instance v1, Lccsancom/san/mediation/loader/VungleBannerAd$3;

    invoke-direct {v1, p0, v0}, Lccsancom/san/mediation/loader/VungleBannerAd$3;-><init>(Lccsancom/san/mediation/loader/VungleBannerAd;Lccsancom/vungle/warren/BannerAdConfig;)V

    .line 95
    .local v1, "adCallback":Lccsancom/vungle/warren/LoadAdCallback;
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getSpotId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lccsancom/vungle/warren/Banners;->loadBanner(Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 96
    return-void
.end method

.method private loadMRECAd()V
    .locals 2

    .line 52
    const-string v0, "Vungle.BannerAd"

    const-string v1, "#loadMRECAd"

    invoke-static {v0, v1}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getSpotId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/loader/VungleBannerAd$2;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/VungleBannerAd$2;-><init>(Lccsancom/san/mediation/loader/VungleBannerAd;)V

    invoke-static {v0, v1}, Lccsancom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected doStartLoadAd()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#startLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getSpotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/loader/VungleBannerAd$1;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/VungleBannerAd$1;-><init>(Lccsancom/san/mediation/loader/VungleBannerAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 49
    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 151
    sget-object v0, Lccsancom/san/ads/AdFormat;->BANNER:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public getAdSize()Lccsancom/san/ads/AdSize;
    .locals 1

    .line 165
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdView()Lccsanandroid/view/View;
    .locals 4

    .line 170
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/AdSize;->getHeight()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd;->mVungleBanner:Lccsancom/vungle/warren/VungleBanner;

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd;->mVungleNativeAd:Lccsancom/vungle/warren/VungleNativeAd;

    invoke-interface {v0}, Lccsancom/vungle/warren/VungleNativeAd;->renderNativeView()Lccsanandroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "nativeBanner":Lccsanandroid/view/View;
    new-instance v1, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x437a0000    # 250.0f

    invoke-direct {p0, v3}, Lccsancom/san/mediation/loader/VungleBannerAd;->dip2px(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-object v0

    .line 179
    .end local v0    # "nativeBanner":Lccsanandroid/view/View;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAdReady()Z
    .locals 4

    .line 156
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/AdSize;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x32

    if-ne v0, v3, :cond_1

    .line 157
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd;->mVungleBanner:Lccsancom/vungle/warren/VungleBanner;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleBannerAd;->getSpotId()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lccsancom/vungle/warren/AdConfig$AdSize;->BANNER:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-static {v0, v3}, Lccsancom/vungle/warren/Banners;->canPlayAd(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig$AdSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 159
    :cond_1
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd;->mVungleNativeAd:Lccsancom/vungle/warren/VungleNativeAd;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method
