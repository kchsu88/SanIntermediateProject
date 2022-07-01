.class public Lccsancom/san/mediation/loader/VungleInterstitialAd;
.super Lccsancom/san/mediation/loader/VungleBannerAd;
.source "VungleInterstitialAd.java"

# interfaces
.implements Lccsancom/san/ads/base/IFullScreenAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "Vungle.Interstitial"


# instance fields
.field private hasLoaded:Z

.field private hasShown:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 24
    invoke-direct {p0, p1, p2}, Lccsancom/san/mediation/loader/VungleBannerAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lccsancom/san/mediation/loader/VungleInterstitialAd;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleInterstitialAd;

    .line 18
    invoke-direct {p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd;->startLoad()V

    return-void
.end method

.method static synthetic access$100(Lccsancom/san/mediation/loader/VungleInterstitialAd;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleInterstitialAd;

    .line 18
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd;->getLoadDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$202(Lccsancom/san/mediation/loader/VungleInterstitialAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleInterstitialAd;
    .param p1, "x1"    # Z

    .line 18
    iput-boolean p1, p0, Lccsancom/san/mediation/loader/VungleInterstitialAd;->hasLoaded:Z

    return p1
.end method

.method static synthetic access$302(Lccsancom/san/mediation/loader/VungleInterstitialAd;Z)Z
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/VungleInterstitialAd;
    .param p1, "x1"    # Z

    .line 18
    iput-boolean p1, p0, Lccsancom/san/mediation/loader/VungleInterstitialAd;->hasShown:Z

    return p1
.end method

.method private startLoad()V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#startLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd;->getSpotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd;->getSpotId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/loader/VungleInterstitialAd$2;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd$2;-><init>(Lccsancom/san/mediation/loader/VungleInterstitialAd;)V

    invoke-static {v0, v1}, Lccsancom/vungle/warren/Vungle;->loadAd(Ljava/lang/String;Lccsancom/vungle/warren/LoadAdCallback;)V

    .line 55
    return-void
.end method


# virtual methods
.method protected doStartLoadAd()V
    .locals 2

    .line 29
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/loader/VungleInterstitialAd$1;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd$1;-><init>(Lccsancom/san/mediation/loader/VungleInterstitialAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 35
    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 59
    sget-object v0, Lccsancom/san/ads/AdFormat;->INTERSTITIAL:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lccsancom/san/mediation/loader/VungleInterstitialAd;->hasLoaded:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd;->getSpotId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/Vungle;->canPlayAd(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/san/mediation/loader/VungleInterstitialAd;->hasShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 3

    .line 69
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd;->getSpotId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lccsancom/san/mediation/loader/VungleInterstitialAd$3;

    invoke-direct {v2, p0}, Lccsancom/san/mediation/loader/VungleInterstitialAd$3;-><init>(Lccsancom/san/mediation/loader/VungleInterstitialAd;)V

    invoke-static {v0, v1, v2}, Lccsancom/vungle/warren/Vungle;->playAd(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)V

    goto :goto_0

    .line 122
    :cond_0
    const-string v0, "Vungle.Interstitial"

    const-string v1, "The interstitial ad wasn\'t ready yet."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    return-void
.end method
