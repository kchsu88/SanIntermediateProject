.class public Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/b/a;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Lccsancom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->createIncentivizedAdController(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)Lccsancom/applovin/impl/sdk/b/a;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lccsancom/applovin/impl/sdk/b/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(Lccsanandroid/content/Context;)Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 0

    invoke-static {p0}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p0

    invoke-static {p0}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lccsancom/applovin/sdk/AppLovinSdk;)Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lccsancom/applovin/sdk/AppLovinSdk;)Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;
    .locals 1

    new-instance v0, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)V

    return-object v0
.end method


# virtual methods
.method protected createIncentivizedAdController(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)Lccsancom/applovin/impl/sdk/b/a;
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/sdk/b/a;

    invoke-direct {v0, p1, p2}, Lccsancom/applovin/impl/sdk/b/a;-><init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/a;->c()V

    return-void
.end method

.method public getUserIdentifier()Ljava/lang/String;
    .locals 2

    const-string v0, "AppLovinIncentivizedInterstitial"

    const-string v1, "Please use AppLovinSdk.getUserIdentifier() instead to properly identify your users in our system. This property is now deprecated and will be removed in a future SDK version."

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lccsancom/applovin/sdk/AppLovinSdk;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v0}, Lccsancom/applovin/sdk/AppLovinSdk;->getUserIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdReadyToDisplay()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b/a;->a()Z

    move-result v0

    return v0
.end method

.method public preload(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "AppLovinIncentivizedInterstitial"

    const-string v1, "AppLovinAdLoadListener was null when preloading incentivized interstitials; using a listener is highly recommended."

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/r;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lccsancom/applovin/impl/sdk/b/a;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public setUserIdentifier(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lccsancom/applovin/sdk/AppLovinSdk;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v1, p1}, Lccsancom/applovin/sdk/AppLovinSdk;->setUserIdentifier(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Please use AppLovinSdk.setUserIdentifier(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\") instead to properly identify your users in our system. This property is now deprecated and will be removed in a future SDK version."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppLovinIncentivizedInterstitial"

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public show(Lccsanandroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    return-void
.end method

.method public show(Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    return-void
.end method

.method public show(Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    return-void
.end method

.method public show(Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public show(Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public show(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lccsancom/applovin/impl/sdk/b/a;

    const/4 v1, 0x0

    const-string v3, ""

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public show(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->a:Lccsancom/applovin/impl/sdk/b/a;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinIncentivizedInterstitial{zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isAdReadyToDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
