.class Lccsancom/san/mediation/loader/AppLovinBannerAd$3;
.super Ljava/lang/Object;
.source "AppLovinBannerAd.java"

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/AppLovinBannerAd;->startLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/AppLovinBannerAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/AppLovinBannerAd;

    .line 64
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$3;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adDisplayed(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#adDisplayed spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$3;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$3;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 69
    return-void
.end method

.method public adHidden(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#adHidden spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$3;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$3;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLOSED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 75
    return-void
.end method
