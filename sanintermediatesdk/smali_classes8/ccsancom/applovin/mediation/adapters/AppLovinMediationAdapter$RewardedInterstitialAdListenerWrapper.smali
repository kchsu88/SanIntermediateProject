.class Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;
.super Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;

# interfaces
.implements Lccsancom/applovin/impl/sdk/a/i;
.implements Lccsancom/applovin/sdk/AppLovinAdClickListener;
.implements Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RewardedInterstitialAdListenerWrapper"
.end annotation


# instance fields
.field private final listener:Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

.field final synthetic this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;


# direct methods
.method private constructor <init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;)V
    .locals 1

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;)V

    iput-object p2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->listener:Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;)V

    return-void
.end method


# virtual methods
.method public adClicked(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v0, "Rewarded interstitial ad clicked"

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->listener:Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;->onRewardedInterstitialAdClicked()V

    return-void
.end method

.method public adDisplayed(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v0, "Rewarded interstitial ad shown"

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->listener:Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;->onRewardedInterstitialAdDisplayed()V

    return-void
.end method

.method public adHidden(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2

    iget-boolean p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->isFullyWatched:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$800(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/mediation/MaxReward;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->shouldAlwaysRewardUser()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rewarded interstitial user with reward: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$800(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/mediation/MaxReward;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->listener:Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$800(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/mediation/MaxReward;

    move-result-object v0

    invoke-interface {p1, v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;->onUserRewarded(Lccsancom/applovin/mediation/MaxReward;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxReward;)Lccsancom/applovin/mediation/MaxReward;

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v0, "Rewarded interstitial ad hidden"

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->listener:Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;->onRewardedInterstitialAdHidden()V

    return-void
.end method

.method public onAdDisplayFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rewarded interstitial ad failed to display with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    const/16 v1, -0x1450

    invoke-direct {v0, v1, p1}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->listener:Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    invoke-interface {p1, v0}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;->onRewardedInterstitialAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    return-void
.end method

.method public videoPlaybackBegan(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v0, "Rewarded interstitial ad video started"

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->listener:Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;->onRewardedInterstitialAdVideoStarted()V

    return-void
.end method

.method public videoPlaybackEnded(Lccsancom/applovin/sdk/AppLovinAd;DZ)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rewarded interstitial ad video ended at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, "% and is fully watched: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iput-boolean p4, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->isFullyWatched:Z

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;->listener:Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;->onRewardedInterstitialAdVideoCompleted()V

    return-void
.end method
