.class Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;
.super Ljava/lang/Object;
.source "AppLovinRewardedAd.java"

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/AppLovinRewardedAd;->show()V
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

    .line 55
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public userDeclinedToViewAd(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#userDeclinedToViewAd spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.RewardedAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public userOverQuota(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 64
    .local p2, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#userOverQuota spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.RewardedAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public userRewardRejected(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 69
    .local p2, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#userRewardRejected spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.RewardedAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public userRewardVerified(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    .local p2, "response":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#userRewardVerified spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.RewardedAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_COMPLETE:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 60
    return-void
.end method

.method public validationRequestFailed(Lccsancom/applovin/sdk/AppLovinAd;I)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;
    .param p2, "errorCode"    # I

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#validationRequestFailed spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.RewardedAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
