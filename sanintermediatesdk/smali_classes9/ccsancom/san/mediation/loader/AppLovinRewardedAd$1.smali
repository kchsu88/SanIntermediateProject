.class Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;
.super Ljava/lang/Object;
.source "AppLovinRewardedAd.java"

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/AppLovinRewardedAd;->doStartLoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    .line 35
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 4
    .param p1, "appLovinAd"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 39
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    new-instance v1, Lccsancom/san/ads/base/FullScreenAdWrapper;

    iget-object v2, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    invoke-virtual {v2}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/FullScreenAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->access$000(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.RewardedAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .line 46
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    invoke-virtual {v0, p1}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->parseToSanError(I)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdFailedToLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->access$100(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.RewardedAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
