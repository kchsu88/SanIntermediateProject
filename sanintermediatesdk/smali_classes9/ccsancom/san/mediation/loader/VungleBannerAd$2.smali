.class Lccsancom/san/mediation/loader/VungleBannerAd$2;
.super Ljava/lang/Object;
.source "VungleBannerAd.java"

# interfaces
.implements Lccsancom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/VungleBannerAd;->loadMRECAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/VungleBannerAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/VungleBannerAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/VungleBannerAd;

    .line 53
    iput-object p1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$2;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 5
    .param p1, "placementId"    # Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$2;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$200(Lccsancom/san/mediation/loader/VungleBannerAd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lccsancom/vungle/warren/AdConfig;

    invoke-direct {v0}, Lccsancom/vungle/warren/AdConfig;-><init>()V

    .line 58
    .local v0, "adConfig":Lccsancom/vungle/warren/AdConfig;
    sget-object v1, Lccsancom/vungle/warren/AdConfig$AdSize;->VUNGLE_MREC:Lccsancom/vungle/warren/AdConfig$AdSize;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/AdConfig;->setAdSize(Lccsancom/vungle/warren/AdConfig$AdSize;)V

    .line 59
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/AdConfig;->setMuted(Z)V

    .line 60
    invoke-static {p1}, Lccsancom/san/mediation/helper/VungleHelper;->clearNativeAdCache(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$2;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$400(Lccsancom/san/mediation/loader/VungleBannerAd;)Lccsancom/vungle/warren/PlayAdCallback;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lccsancom/vungle/warren/Vungle;->getNativeAd(Ljava/lang/String;Lccsancom/vungle/warren/AdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleNativeAd;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$302(Lccsancom/san/mediation/loader/VungleBannerAd;Lccsancom/vungle/warren/VungleNativeAd;)Lccsancom/vungle/warren/VungleNativeAd;

    .line 62
    iget-object v1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$2;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    new-instance v2, Lccsancom/san/ads/base/BannerAdWrapper;

    iget-object v3, p0, Lccsancom/san/mediation/loader/VungleBannerAd$2;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-virtual {v3}, Lccsancom/san/mediation/loader/VungleBannerAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v3

    iget-object v4, p0, Lccsancom/san/mediation/loader/VungleBannerAd$2;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/base/BannerAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-virtual {v1, v2}, Lccsancom/san/mediation/loader/VungleBannerAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 63
    iget-object v1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$2;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$300(Lccsancom/san/mediation/loader/VungleBannerAd;)Lccsancom/vungle/warren/VungleNativeAd;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/san/mediation/helper/VungleHelper;->putNativeAdToMap(Ljava/lang/String;Lccsancom/vungle/warren/VungleNativeAd;)V

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "e"    # Lccsancom/vungle/warren/error/VungleException;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onError_load placementReferenceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\uff0c exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd$2;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$302(Lccsancom/san/mediation/loader/VungleBannerAd;Lccsancom/vungle/warren/VungleNativeAd;)Lccsancom/vungle/warren/VungleNativeAd;

    .line 71
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd$2;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-virtual {v0, p2}, Lccsancom/san/mediation/loader/VungleBannerAd;->parseToSanError(Lccsancom/vungle/warren/error/VungleException;)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 72
    return-void
.end method
