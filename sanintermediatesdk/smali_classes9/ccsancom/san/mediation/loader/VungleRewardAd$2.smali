.class Lccsancom/san/mediation/loader/VungleRewardAd$2;
.super Ljava/lang/Object;
.source "VungleRewardAd.java"

# interfaces
.implements Lccsancom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/VungleRewardAd;->startLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/VungleRewardAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/VungleRewardAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/VungleRewardAd;

    .line 39
    iput-object p1, p0, Lccsancom/san/mediation/loader/VungleRewardAd$2;->this$0:Lccsancom/san/mediation/loader/VungleRewardAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 4
    .param p1, "placementReferenceId"    # Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/VungleRewardAd$2;->this$0:Lccsancom/san/mediation/loader/VungleRewardAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/VungleRewardAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/VungleRewardAd$2;->this$0:Lccsancom/san/mediation/loader/VungleRewardAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/VungleRewardAd;->access$100(Lccsancom/san/mediation/loader/VungleRewardAd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleRewardAd$2;->this$0:Lccsancom/san/mediation/loader/VungleRewardAd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/VungleRewardAd;->access$202(Lccsancom/san/mediation/loader/VungleRewardAd;Z)Z

    .line 44
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleRewardAd$2;->this$0:Lccsancom/san/mediation/loader/VungleRewardAd;

    new-instance v1, Lccsancom/san/ads/base/FullScreenAdWrapper;

    iget-object v2, p0, Lccsancom/san/mediation/loader/VungleRewardAd$2;->this$0:Lccsancom/san/mediation/loader/VungleRewardAd;

    invoke-virtual {v2}, Lccsancom/san/mediation/loader/VungleRewardAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/VungleRewardAd$2;->this$0:Lccsancom/san/mediation/loader/VungleRewardAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/FullScreenAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/VungleRewardAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 45
    return-void
.end method

.method public onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "vungleException"    # Lccsancom/vungle/warren/error/VungleException;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onError_load placementReferenceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleRewardAd$2;->this$0:Lccsancom/san/mediation/loader/VungleRewardAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/VungleRewardAd;->access$202(Lccsancom/san/mediation/loader/VungleRewardAd;Z)Z

    .line 52
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleRewardAd$2;->this$0:Lccsancom/san/mediation/loader/VungleRewardAd;

    invoke-virtual {v0, p2}, Lccsancom/san/mediation/loader/VungleRewardAd;->parseToSanError(Lccsancom/vungle/warren/error/VungleException;)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/VungleRewardAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 53
    return-void
.end method
