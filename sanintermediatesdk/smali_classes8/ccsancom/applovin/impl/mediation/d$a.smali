.class Lccsancom/applovin/impl/mediation/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/ads/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsanandroid/app/Activity;

.field private final c:Lccsancom/applovin/impl/mediation/d;

.field private final d:Lccsancom/applovin/impl/mediation/d$b;

.field private final e:Lccsancom/applovin/mediation/MaxAdFormat;

.field private f:Lccsancom/applovin/impl/sdk/network/i;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/impl/mediation/d$b;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/mediation/d;Lccsancom/applovin/impl/sdk/k;Lccsanandroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lccsancom/applovin/impl/mediation/d$a;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p6, p0, Lccsancom/applovin/impl/mediation/d$a;->b:Lccsanandroid/app/Activity;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/d$a;->c:Lccsancom/applovin/impl/mediation/d;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/d$a;->e:Lccsancom/applovin/mediation/MaxAdFormat;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/d$a;->f:Lccsancom/applovin/impl/sdk/network/i;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/impl/mediation/d$b;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/mediation/d;Lccsancom/applovin/impl/sdk/k;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/d$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lccsancom/applovin/impl/mediation/d$a;-><init>(Lccsancom/applovin/impl/sdk/network/i;Lccsancom/applovin/impl/mediation/d$b;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/mediation/d;Lccsancom/applovin/impl/sdk/k;Lccsanandroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/d$a;)Lccsancom/applovin/impl/mediation/d$b;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/d$a;Lccsancom/applovin/impl/sdk/network/i;)Lccsancom/applovin/impl/sdk/network/i;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/d$a;->f:Lccsancom/applovin/impl/sdk/network/i;

    return-object p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/d$a;)Lccsancom/applovin/impl/sdk/network/i;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/d$a;->f:Lccsancom/applovin/impl/sdk/network/i;

    return-object p0
.end method

.method static synthetic c(Lccsancom/applovin/impl/mediation/d$a;)Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/d$a;->e:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method

.method static synthetic d(Lccsancom/applovin/impl/mediation/d$a;)Lccsanandroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/d$a;->b:Lccsanandroid/app/Activity;

    return-object p0
.end method

.method static synthetic e(Lccsancom/applovin/impl/mediation/d$a;)Lccsancom/applovin/impl/mediation/d;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/d$a;->c:Lccsancom/applovin/impl/mediation/d;

    return-object p0
.end method


# virtual methods
.method public onAdClicked(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdDisplayFailed(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    return-void
.end method

.method public onAdDisplayed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->Q:Lccsancom/applovin/impl/sdk/c/b;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/d$a;->e:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;Lccsancom/applovin/mediation/MaxAdFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/d$b;->c(Lccsancom/applovin/impl/mediation/d$b;)I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/d$a;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/a;->P:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/d$b;->d(Lccsancom/applovin/impl/mediation/d$b;)I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/d$b;->c(Lccsancom/applovin/impl/mediation/d$b;)I

    move-result p2

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int p2, v0

    new-instance v0, Lccsancom/applovin/impl/mediation/d$a$1;

    invoke-direct {v0, p0, p2, p1}, Lccsancom/applovin/impl/mediation/d$a$1;-><init>(Lccsancom/applovin/impl/mediation/d$a;ILjava/lang/String;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p2

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/d$b;->a(Lccsancom/applovin/impl/mediation/d$b;I)I

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/d$b;->a(Lccsancom/applovin/impl/mediation/d$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/d$b;->b(Lccsancom/applovin/impl/mediation/d$b;)Lccsancom/applovin/impl/mediation/ads/a$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/d$b;->b(Lccsancom/applovin/impl/mediation/d$b;)Lccsancom/applovin/impl/mediation/ads/a$a;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lccsancom/applovin/impl/mediation/d$b;->a(Lccsancom/applovin/impl/mediation/d$b;Lccsancom/applovin/impl/mediation/ads/a$a;)Lccsancom/applovin/impl/mediation/ads/a$a;

    :cond_2
    :goto_1
    return-void
.end method

.method public onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 9

    move-object v0, p1

    check-cast v0, Lccsancom/applovin/impl/mediation/a/a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lccsancom/applovin/impl/mediation/d$b;->a(Lccsancom/applovin/impl/mediation/d$b;I)I

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/d$b;->b(Lccsancom/applovin/impl/mediation/d$b;)Lccsancom/applovin/impl/mediation/ads/a$a;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/a;->f()Lccsancom/applovin/impl/mediation/g;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/g;->c()Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    move-result-object v1

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/d$b;->b(Lccsancom/applovin/impl/mediation/d$b;)Lccsancom/applovin/impl/mediation/ads/a$a;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a(Lccsancom/applovin/impl/mediation/ads/a$a;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/d$b;->b(Lccsancom/applovin/impl/mediation/d$b;)Lccsancom/applovin/impl/mediation/ads/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/applovin/impl/mediation/ads/a$a;->onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/a;->c()Ljava/lang/String;

    move-result-object v1

    const-string v3, "load"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/d$b;->b(Lccsancom/applovin/impl/mediation/d$b;)Lccsancom/applovin/impl/mediation/ads/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/applovin/impl/mediation/ads/a$a;->onAdRevenuePaid(Lccsancom/applovin/mediation/MaxAd;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/d$b;->a(Lccsancom/applovin/impl/mediation/d$b;Lccsancom/applovin/impl/mediation/ads/a$a;)Lccsancom/applovin/impl/mediation/ads/a$a;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->O:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->N:Lccsancom/applovin/impl/sdk/c/b;

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;Lccsancom/applovin/mediation/MaxAdFormat;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/d$a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/d$a;->c:Lccsancom/applovin/impl/mediation/d;

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v5

    iget-object v6, p0, Lccsancom/applovin/impl/mediation/d$a;->f:Lccsancom/applovin/impl/sdk/network/i;

    iget-object v7, p0, Lccsancom/applovin/impl/mediation/d$a;->b:Lccsanandroid/app/Activity;

    move-object v8, p0

    invoke-static/range {v3 .. v8}, Lccsancom/applovin/impl/mediation/d;->a(Lccsancom/applovin/impl/mediation/d;Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/network/i;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/ads/a$a;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/d$a;->c:Lccsancom/applovin/impl/mediation/d;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/mediation/d;->a(Lccsancom/applovin/impl/mediation/d;Lccsancom/applovin/impl/mediation/a/a;)V

    :cond_3
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/d$a;->d:Lccsancom/applovin/impl/mediation/d$b;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/d$b;->a(Lccsancom/applovin/impl/mediation/d$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    return-void
.end method

.method public onAdRevenuePaid(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method
