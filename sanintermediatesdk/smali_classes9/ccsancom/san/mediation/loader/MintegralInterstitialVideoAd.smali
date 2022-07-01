.class public Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;
.super Lccsancom/san/mediation/loader/BaseMintegralAd;
.source "MintegralInterstitialVideoAd.java"

# interfaces
.implements Lccsancom/san/ads/base/IFullScreenAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mintegral.Interstitial"


# instance fields
.field private hasShown:Z

.field private mInterstitialHandler:Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0, p1, p2}, Lccsancom/san/mediation/loader/BaseMintegralAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method static synthetic access$002(Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;)Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;
    .param p1, "x1"    # Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;

    .line 19
    iput-object p1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mInterstitialHandler:Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;

    return-object p1
.end method


# virtual methods
.method protected doStartLoadAd()V
    .locals 5

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#startLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    .line 32
    .local v0, "topActivity":Lccsanandroid/app/Activity;
    if-nez v0, :cond_0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#onAdLoadError spotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", error:activity is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lccsancom/san/ads/AdError;->PARAMETER_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 35
    return-void

    .line 38
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->getRealPlacementId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->getUnitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .local v1, "interstitialHandler":Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;
    new-instance v2, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;

    invoke-direct {v2, p0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;-><init>(Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->setInterstitialVideoListener(Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;)V

    .line 99
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->load()V

    .line 100
    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 104
    sget-object v0, Lccsancom/san/ads/AdFormat;->INTERSTITIAL:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mInterstitialHandler:Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->hasShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->hasShown:Z

    .line 116
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mInterstitialHandler:Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;->show()V

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "Mintegral.Interstitial"

    const-string v1, "The interstitial ad wasn\'t ready yet."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void
.end method
