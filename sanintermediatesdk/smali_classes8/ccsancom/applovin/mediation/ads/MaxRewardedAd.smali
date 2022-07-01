.class public Lccsancom/applovin/mediation/ads/MaxRewardedAd;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$a;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/applovin/mediation/ads/MaxRewardedAd;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;

.field private static c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->a:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->b:Ljava/lang/Object;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v5, p2, Lccsancom/applovin/sdk/AppLovinSdk;->coreSdk:Lccsancom/applovin/impl/sdk/k;

    const-string v4, "MaxRewardedAd"

    move-object v0, v6

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;-><init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$a;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object v6, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    return-void
.end method

.method public static getInstance(Ljava/lang/String;Lccsanandroid/app/Activity;)Lccsancom/applovin/mediation/ads/MaxRewardedAd;
    .locals 1

    invoke-static {p1}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->getInstance(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)Lccsancom/applovin/mediation/ads/MaxRewardedAd;
    .locals 3

    const-string v0, "MaxRewardedAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance(adUnitId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sdk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/ads/a;->logApiCall(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_4

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p2}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->updateActivity(Lccsanandroid/app/Activity;)V

    sget-object p2, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->b:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget-object v0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    if-eqz v1, :cond_0

    monitor-exit p2

    return-object v1

    :cond_0
    new-instance v1, Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    invoke-direct {v1, p0, p1}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;-><init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No activity specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty ad unit ID specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No ad unit ID specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updateActivity(Lccsanandroid/app/Activity;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateActivity(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MaxRewardedAd"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/mediation/ads/a;->logApiCall(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->c:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    const-string v1, "destroy()"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logApiCall(Ljava/lang/String;)V

    sget-object v0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->a:Ljava/util/Map;

    iget-object v2, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->getAdUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->destroy()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getActivity()Lccsanandroid/app/Activity;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    const-string v1, "getActivity()"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logApiCall(Ljava/lang/String;)V

    sget-object v0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->isReady()Z

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isReady() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for ad unit id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {v3}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->getAdUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logApiCall(Ljava/lang/String;)V

    return v0
.end method

.method public loadAd()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    const-string v1, "loadAd()"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {p0}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->loadAd(Lccsanandroid/app/Activity;)V

    return-void
.end method

.method public setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setExtraParameter(key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {v0, p1, p2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->setExtraParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lccsancom/applovin/mediation/MaxRewardedAdListener;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setListener(listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->setListener(Lccsancom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method public setRevenueListener(Lccsancom/applovin/mediation/MaxAdRevenueListener;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRevenueListener(listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->setRevenueListener(Lccsancom/applovin/mediation/MaxAdRevenueListener;)V

    return-void
.end method

.method public showAd()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->showAd(Ljava/lang/String;)V

    return-void
.end method

.method public showAd(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showAd(placement="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logApiCall(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {p0}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->getActivity()Lccsanandroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->showAd(Ljava/lang/String;Lccsanandroid/app/Activity;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
