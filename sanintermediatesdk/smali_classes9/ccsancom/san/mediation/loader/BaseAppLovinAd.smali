.class public abstract Lccsancom/san/mediation/loader/BaseAppLovinAd;
.super Lccsancom/san/ads/base/SANBaseAd;
.source "BaseAppLovinAd.java"


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/ads/base/SANBaseAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected abstract doStartLoadAd()V
.end method

.method protected getActivityContext()Lccsanandroid/content/Context;
    .locals 2

    .line 60
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    .line 61
    .local v0, "topActivity":Lccsanandroid/app/Activity;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/BaseAppLovinAd;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .line 66
    const-string v0, "AppLovin"

    return-object v0
.end method

.method public getTrackKey()Ljava/lang/String;
    .locals 1

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public load(Lccsancom/san/ads/AdInfo;)V
    .locals 2
    .param p1, "adInfo"    # Lccsancom/san/ads/AdInfo;

    .line 25
    invoke-super {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->load(Lccsancom/san/ads/AdInfo;)V

    .line 26
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/BaseAppLovinAd;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/loader/BaseAppLovinAd$1;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/BaseAppLovinAd$1;-><init>(Lccsancom/san/mediation/loader/BaseAppLovinAd;)V

    invoke-static {v0, v1}, Lccsancom/san/mediation/helper/AppLovinHelper;->initialize(Lccsanandroid/content/Context;Lccsancom/san/ads/base/InitListener;)V

    .line 37
    return-void
.end method

.method protected parseToSanError(I)Lccsancom/san/ads/AdError;
    .locals 3
    .param p1, "errorCode"    # I

    .line 46
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    .line 47
    sget-object v0, Lccsancom/san/ads/AdError;->NO_FILL:Lccsancom/san/ads/AdError;

    return-object v0

    .line 48
    :cond_0
    const/16 v0, -0x3f1

    if-ne p1, v0, :cond_1

    .line 49
    sget-object v0, Lccsancom/san/ads/AdError;->NETWORK_ERROR:Lccsancom/san/ads/AdError;

    return-object v0

    .line 50
    :cond_1
    const/16 v0, -0x3e9

    if-ne p1, v0, :cond_2

    .line 51
    sget-object v0, Lccsancom/san/ads/AdError;->TIMEOUT_ERROR:Lccsancom/san/ads/AdError;

    return-object v0

    .line 52
    :cond_2
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_3

    .line 53
    sget-object v0, Lccsancom/san/ads/AdError;->SERVER_ERROR:Lccsancom/san/ads/AdError;

    return-object v0

    .line 55
    :cond_3
    new-instance v0, Lccsancom/san/ads/AdError;

    const/16 v1, 0x1389

    const-string v2, "Internal errors"

    invoke-direct {v0, v1, v2}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
