.class public Lccsancom/san/mediation/loader/MintegralRewardedAd;
.super Lccsancom/san/mediation/loader/BaseMintegralAd;
.source "MintegralRewardedAd.java"

# interfaces
.implements Lccsancom/san/ads/base/IFullScreenAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mintegral.Rewarded"


# instance fields
.field private mMBRewardVideoHandler:Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1, p2}, Lccsancom/san/mediation/loader/BaseMintegralAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method static synthetic access$002(Lccsancom/san/mediation/loader/MintegralRewardedAd;Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;)Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/MintegralRewardedAd;
    .param p1, "x1"    # Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;

    .line 17
    iput-object p1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mMBRewardVideoHandler:Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;

    return-object p1
.end method


# virtual methods
.method protected doStartLoadAd()V
    .locals 4

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#startLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->getRealPlacementId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->getUnitId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v0, "mbRewardVideoHandler":Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->playVideoMute(I)V

    .line 30
    new-instance v1, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;

    invoke-direct {v1, p0, v0}, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;-><init>(Lccsancom/san/mediation/loader/MintegralRewardedAd;Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->setRewardVideoListener(Lccsancom/mbridge/msdk/video/bt/module/b/g;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->setRewardPlus(Z)V

    .line 86
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->load()V

    .line 87
    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 91
    sget-object v0, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mMBRewardVideoHandler:Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 2

    .line 101
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mMBRewardVideoHandler:Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;->show()V

    goto :goto_0

    .line 104
    :cond_0
    const-string v0, "Mintegral.Rewarded"

    const-string v1, "The rewarded ad wasn\'t ready yet."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_0
    return-void
.end method
