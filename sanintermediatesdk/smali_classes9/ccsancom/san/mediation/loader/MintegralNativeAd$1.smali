.class Lccsancom/san/mediation/loader/MintegralNativeAd$1;
.super Ljava/lang/Object;
.source "MintegralNativeAd.java"

# interfaces
.implements Lccsancom/mbridge/msdk/out/NativeListener$NativeAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/MintegralNativeAd;->doStartLoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

.field final synthetic val$mbNativeHandler:Lccsancom/mbridge/msdk/out/MBNativeHandler;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/MintegralNativeAd;Lccsancom/mbridge/msdk/out/MBNativeHandler;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/MintegralNativeAd;

    .line 44
    iput-object p1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    iput-object p2, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->val$mbNativeHandler:Lccsancom/mbridge/msdk/out/MBNativeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lccsancom/mbridge/msdk/out/Campaign;)V
    .locals 2
    .param p1, "campaign"    # Lccsancom/mbridge/msdk/out/Campaign;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdClick spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralNativeAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.NativeAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 67
    return-void
.end method

.method public onAdFramesLoaded(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/out/Frame;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdFramesLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.NativeAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public onAdLoadError(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralNativeAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.NativeAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->access$002(Lccsancom/san/mediation/loader/MintegralNativeAd;Lccsancom/mbridge/msdk/out/MBNativeHandler;)Lccsancom/mbridge/msdk/out/MBNativeHandler;

    .line 60
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    invoke-static {p1}, Lccsancom/san/mediation/loader/BaseMintegralAd;->parseToSanError(Ljava/lang/String;)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 61
    return-void
.end method

.method public onAdLoaded(Ljava/util/List;I)V
    .locals 3
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            ">;I)V"
        }
    .end annotation

    .line 47
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/out/Campaign;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralNativeAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.NativeAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->val$mbNativeHandler:Lccsancom/mbridge/msdk/out/MBNativeHandler;

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->access$002(Lccsancom/san/mediation/loader/MintegralNativeAd;Lccsancom/mbridge/msdk/out/MBNativeHandler;)Lccsancom/mbridge/msdk/out/MBNativeHandler;

    .line 49
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/out/Campaign;

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->access$102(Lccsancom/san/mediation/loader/MintegralNativeAd;Lccsancom/mbridge/msdk/out/Campaign;)Lccsancom/mbridge/msdk/out/Campaign;

    .line 52
    :cond_0
    new-instance v0, Lccsancom/san/ads/base/AdWrapper;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    invoke-direct {v0, v1, v2}, Lccsancom/san/ads/base/AdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    .line 53
    .local v0, "adWrapper":Lccsancom/san/ads/base/AdWrapper;
    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    invoke-virtual {v1, v0}, Lccsancom/san/mediation/loader/MintegralNativeAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 54
    return-void
.end method

.method public onLoggingImpression(I)V
    .locals 2
    .param p1, "i"    # I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onLoggingImpression spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralNativeAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.NativeAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralNativeAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralNativeAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralNativeAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 78
    return-void
.end method
