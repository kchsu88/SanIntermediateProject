.class public Lccsancom/applovin/impl/sdk/utils/i;
.super Ljava/lang/Object;


# direct methods
.method static synthetic a(Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;
    .locals 0

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$26;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$26;-><init>(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/i$2;-><init>(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;Z)V

    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$14;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$14;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V

    invoke-static {p3, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;Z)V

    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;Z)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p0, Lccsancom/applovin/mediation/MaxRewardedAdListener;

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$17;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$17;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V

    invoke-static {p3, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$7;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$7;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;Z)V

    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$8;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$8;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    invoke-static {p3, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdRevenueListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdRevenueListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public static a(Lccsancom/applovin/mediation/MaxAdRevenueListener;Lccsancom/applovin/mediation/MaxAd;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$13;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$13;-><init>(Lccsancom/applovin/mediation/MaxAdRevenueListener;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$23;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$23;-><init>(Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$12;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$12;-><init>(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V
    .locals 1

    instance-of v0, p0, Lccsancom/applovin/impl/sdk/a/i;

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$1;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$1;-><init>(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;I)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$6;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$6;-><init>(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;I)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/sdk/AppLovinAdRewardListener;",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$3;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$3;-><init>(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$24;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$24;-><init>(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;DZ)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v6, Lccsancom/applovin/impl/sdk/utils/i$25;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/impl/sdk/utils/i$25;-><init>(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;DZ)V

    invoke-static {v6}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$20;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$20;-><init>(Lccsancom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;I)V
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$21;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$21;-><init>(Lccsancom/applovin/sdk/AppLovinPostbackListener;Ljava/lang/String;I)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static b(Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;
    .locals 2

    move-object v0, p0

    check-cast v0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getDummyAd()Lccsancom/applovin/impl/sdk/a/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getDummyAd()Lccsancom/applovin/impl/sdk/a/h;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$27;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$27;-><init>(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static b(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public static b(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$9;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$9;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$22;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$22;-><init>(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static b(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/sdk/AppLovinAdRewardListener;",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$4;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$4;-><init>(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static c(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$28;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$28;-><init>(Lccsancom/applovin/adview/AppLovinAdViewEventListener;Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static c(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->c(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public static c(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$10;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$10;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static c(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/sdk/AppLovinAdRewardListener;",
            "Lccsancom/applovin/sdk/AppLovinAd;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$5;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i$5;-><init>(Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static d(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->d(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public static d(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$11;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$11;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static e(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->e(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public static e(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p0, Lccsancom/applovin/mediation/MaxRewardedAdListener;

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$15;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$15;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static f(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->f(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public static f(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p0, Lccsancom/applovin/mediation/MaxRewardedAdListener;

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$16;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$16;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static g(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->g(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public static g(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p0, Lccsancom/applovin/mediation/MaxAdViewAdListener;

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$18;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$18;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static h(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsancom/applovin/impl/sdk/utils/i;->h(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public static h(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p0, Lccsancom/applovin/mediation/MaxAdViewAdListener;

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/impl/sdk/utils/i$19;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/utils/i$19;-><init>(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {p2, v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method
