.class abstract Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RewardListenerWrapper"
.end annotation


# instance fields
.field protected isFullyWatched:Z

.field final synthetic this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;


# direct methods
.method private constructor <init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)V

    return-void
.end method


# virtual methods
.method public userDeclinedToViewAd(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const-string v0, "User declined to view rewarded ad"

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxReward;)Lccsancom/applovin/mediation/MaxReward;

    return-void
.end method

.method public userOverQuota(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
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

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User is over quota: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxReward;)Lccsancom/applovin/mediation/MaxReward;

    return-void
.end method

.method public userRewardRejected(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 2
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

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reward rejected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxReward;)Lccsancom/applovin/mediation/MaxReward;

    return-void
.end method

.method public userRewardVerified(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 5
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

    const-string p1, "currency"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v0, "amount"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    double-to-int v0, v0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse AppLovin reward amount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2, v1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->create(ILjava/lang/String;)Lccsancom/applovin/mediation/MaxReward;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxReward;)Lccsancom/applovin/mediation/MaxReward;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {}, Lccsancom/applovin/impl/mediation/MaxRewardImpl;->createDefault()Lccsancom/applovin/mediation/MaxReward;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxReward;)Lccsancom/applovin/mediation/MaxReward;

    :goto_1
    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Rewarded verified: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    invoke-static {v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$800(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/mediation/MaxReward;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    return-void
.end method

.method public validationRequestFailed(Lccsancom/applovin/sdk/AppLovinAd;I)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reward validation request failed with code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;->this$0:Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->access$802(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxReward;)Lccsancom/applovin/mediation/MaxReward;

    return-void
.end method
