.class Lccsancom/san/mediation/loader/VungleBannerAd$3;
.super Ljava/lang/Object;
.source "VungleBannerAd.java"

# interfaces
.implements Lccsancom/vungle/warren/LoadAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/VungleBannerAd;->loadBannerAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

.field final synthetic val$bannerAdConfig:Lccsancom/vungle/warren/BannerAdConfig;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/VungleBannerAd;Lccsancom/vungle/warren/BannerAdConfig;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/VungleBannerAd;

    .line 80
    iput-object p1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    iput-object p2, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->val$bannerAdConfig:Lccsancom/vungle/warren/BannerAdConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoad(Ljava/lang/String;)V
    .locals 4
    .param p1, "placementId"    # Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->getSpotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$500(Lccsancom/san/mediation/loader/VungleBannerAd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    iget-object v1, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->val$bannerAdConfig:Lccsancom/vungle/warren/BannerAdConfig;

    invoke-static {v0}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$400(Lccsancom/san/mediation/loader/VungleBannerAd;)Lccsancom/vungle/warren/PlayAdCallback;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lccsancom/vungle/warren/Banners;->getBanner(Ljava/lang/String;Lccsancom/vungle/warren/BannerAdConfig;Lccsancom/vungle/warren/PlayAdCallback;)Lccsancom/vungle/warren/VungleBanner;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$602(Lccsancom/san/mediation/loader/VungleBannerAd;Lccsancom/vungle/warren/VungleBanner;)Lccsancom/vungle/warren/VungleBanner;

    .line 85
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    new-instance v1, Lccsancom/san/ads/base/BannerAdWrapper;

    iget-object v2, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-virtual {v2}, Lccsancom/san/mediation/loader/VungleBannerAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/BannerAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 86
    return-void
.end method

.method public onError(Ljava/lang/String;Lccsancom/vungle/warren/error/VungleException;)V
    .locals 2
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "ex"    # Lccsancom/vungle/warren/error/VungleException;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onLoadError placementId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", throwable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/vungle/warren/error/VungleException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vungle.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->access$602(Lccsancom/san/mediation/loader/VungleBannerAd;Lccsancom/vungle/warren/VungleBanner;)Lccsancom/vungle/warren/VungleBanner;

    .line 92
    iget-object v0, p0, Lccsancom/san/mediation/loader/VungleBannerAd$3;->this$0:Lccsancom/san/mediation/loader/VungleBannerAd;

    invoke-virtual {v0, p2}, Lccsancom/san/mediation/loader/VungleBannerAd;->parseToSanError(Lccsancom/vungle/warren/error/VungleException;)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/VungleBannerAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 93
    return-void
.end method
