.class public Lccsancom/applovin/impl/sdk/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/b/a$a;,
        Lccsancom/applovin/impl/sdk/b/a$b;
    }
.end annotation


# instance fields
.field protected final a:Lccsancom/applovin/impl/sdk/k;

.field protected final b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

.field private c:Lccsancom/applovin/sdk/AppLovinAd;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lccsancom/applovin/sdk/AppLovinAdLoadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private volatile g:Ljava/lang/String;

.field private volatile h:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/applovin/impl/sdk/b/a;->h:Z

    iget-object v0, p2, Lccsancom/applovin/sdk/AppLovinSdk;->coreSdk:Lccsancom/applovin/impl/sdk/k;

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/sdk/AppLovinSdk;->getAdService()Lccsancom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    check-cast p2, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/b/a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/b/a;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/b/a;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 8

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lccsancom/applovin/sdk/AppLovinAdType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/sdk/AppLovinAdType;->AUTO_INCENTIVIZED:Lccsancom/applovin/sdk/AppLovinAdType;

    if-eq v0, v1, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Failed to render an ad of type "

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object p6

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p6, " in an Incentivized Ad interstitial."

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p6, "IncentivizedAdController"

    invoke-virtual {p2, p6, p3}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p4, p5}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->maybeRetrieveNonDummyAd(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-static {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAd;->create(Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/content/Context;)Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p1

    new-instance p2, Lccsancom/applovin/impl/sdk/b/a$b;

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v1 .. v7}, Lccsancom/applovin/impl/sdk/b/a$b;-><init>(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;Lccsancom/applovin/impl/sdk/b/a$1;)V

    invoke-interface {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-interface {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    invoke-interface {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    invoke-interface {p1, v0}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lccsancom/applovin/sdk/AppLovinAd;)V

    instance-of p1, v0, Lccsancom/applovin/impl/sdk/a/g;

    if-eqz p1, :cond_2

    check-cast v0, Lccsancom/applovin/impl/sdk/a/g;

    invoke-direct {p0, v0, p2}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/sdk/AppLovinAdRewardListener;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p4, p5}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 2

    new-instance v0, Lccsancom/applovin/impl/sdk/e/z;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p1, p2, v1}, Lccsancom/applovin/impl/sdk/e/z;-><init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/impl/sdk/k;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    sget-object p2, Lccsancom/applovin/impl/sdk/e/o$a;->i:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, v0, p2}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->c:Lccsancom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lccsancom/applovin/impl/sdk/a/h;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lccsancom/applovin/impl/sdk/a/h;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/h;->a()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    :goto_0
    iput-object v2, p0, Lccsancom/applovin/impl/sdk/b/a;->c:Lccsancom/applovin/sdk/AppLovinAd;

    :cond_1
    return-void
.end method

.method private a(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 7

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/b/a;->c:Lccsancom/applovin/sdk/AppLovinAd;

    :goto_0
    check-cast p1, Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    move-object v1, p1

    if-eqz v1, :cond_1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    goto :goto_1

    :cond_1
    const-string p1, "IncentivizedAdController"

    const-string p2, "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded."

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/b/a;->d()V

    :goto_1
    return-void
.end method

.method private a(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->j:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/g;->a(Lccsancom/applovin/impl/sdk/d/f;)J

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAd;DZ)V

    invoke-static {p3, p1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/a;->g:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/b/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/b/a;->h:Z

    return p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b/a;->c:Lccsancom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method private b(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->b:Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextIncentivizedAd(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/b/a;)Z
    .locals 0

    iget-boolean p0, p0, Lccsancom/applovin/impl/sdk/b/a;->h:Z

    return p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->e:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_0

    const/16 v1, -0x12c

    invoke-interface {v0, v1}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :cond_0
    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b/a;->g:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f()Lccsancom/applovin/sdk/AppLovinAdRewardListener;
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/sdk/b/a$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/sdk/b/a$1;-><init>(Lccsancom/applovin/impl/sdk/b/a;)V

    return-object v0
.end method


# virtual methods
.method public a(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 7

    if-nez p4, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/b/a;->f()Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object p4

    :cond_0
    move-object v3, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lccsancom/applovin/impl/sdk/b/a;->a(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public a(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "IncentivizedAdController"

    const-string v2, "User requested preload of incentivized ad..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->e:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/b/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden)."

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->c:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, v0}, Lccsancom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lccsancom/applovin/impl/sdk/b/a$a;

    invoke-direct {v0, p0, p1}, Lccsancom/applovin/impl/sdk/b/a$a;-><init>(Lccsancom/applovin/impl/sdk/b/a;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/b/a;->b(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->c:Lccsancom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()V
    .locals 0

    return-void
.end method
