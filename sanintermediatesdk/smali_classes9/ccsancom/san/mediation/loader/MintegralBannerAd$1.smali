.class Lccsancom/san/mediation/loader/MintegralBannerAd$1;
.super Ljava/lang/Object;
.source "MintegralBannerAd.java"

# interfaces
.implements Lccsancom/mbridge/msdk/out/BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/MintegralBannerAd;->doStartLoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

.field final synthetic val$mbBannerView:Lccsancom/mbridge/msdk/out/MBBannerView;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/MintegralBannerAd;Lccsancom/mbridge/msdk/out/MBBannerView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/MintegralBannerAd;

    .line 35
    iput-object p1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    iput-object p2, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->val$mbBannerView:Lccsancom/mbridge/msdk/out/MBBannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeFullScreen(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0
    .param p1, "bridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 73
    return-void
.end method

.method public onClick(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "bridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onClick spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralBannerAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 60
    return-void
.end method

.method public onCloseBanner(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "bridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onCloseBanner spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLOSED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralBannerAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 79
    return-void
.end method

.method public onLeaveApp(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "bridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onLeaveApp spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public onLoadFailed(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 2
    .param p1, "bridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;
    .param p2, "s"    # Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onLoadFailed spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/MintegralBannerAd;->access$002(Lccsancom/san/mediation/loader/MintegralBannerAd;Lccsancom/mbridge/msdk/out/MBBannerView;)Lccsancom/mbridge/msdk/out/MBBannerView;

    .line 40
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    invoke-static {p2}, Lccsancom/san/mediation/loader/BaseMintegralAd;->parseToSanError(Ljava/lang/String;)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralBannerAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 41
    return-void
.end method

.method public onLoadSuccessed(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 4
    .param p1, "bridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onLoadSuccessed spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->val$mbBannerView:Lccsancom/mbridge/msdk/out/MBBannerView;

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/MintegralBannerAd;->access$002(Lccsancom/san/mediation/loader/MintegralBannerAd;Lccsancom/mbridge/msdk/out/MBBannerView;)Lccsancom/mbridge/msdk/out/MBBannerView;

    .line 47
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    new-instance v1, Lccsancom/san/ads/base/BannerAdWrapper;

    iget-object v2, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    invoke-virtual {v2}, Lccsancom/san/mediation/loader/MintegralBannerAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/BannerAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralBannerAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 48
    return-void
.end method

.method public onLogImpression(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "bridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onLogImpression spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralBannerAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralBannerAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralBannerAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 54
    return-void
.end method

.method public showFullScreen(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0
    .param p1, "bridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 69
    return-void
.end method
