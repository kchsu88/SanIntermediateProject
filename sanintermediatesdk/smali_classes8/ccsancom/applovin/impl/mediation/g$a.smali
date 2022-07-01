.class Lccsancom/applovin/impl/mediation/g$a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;
.implements Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;
.implements Lccsancom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;
.implements Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;
.implements Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/g;

.field private b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/mediation/g;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/impl/mediation/g$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/g$a;-><init>(Lccsancom/applovin/impl/mediation/g;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/g$a;)Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    return-object p0
.end method

.method private a(Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No listener specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/g$a;Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/g$a;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/g$a;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->k(Lccsancom/applovin/impl/mediation/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$1;

    invoke-direct {v1, p0, p2}, Lccsancom/applovin/impl/mediation/g$a$1;-><init>(Lccsancom/applovin/impl/mediation/g$a;Lccsanandroid/os/Bundle;)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->m(Lccsancom/applovin/impl/mediation/g;)Lccsanandroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$14;

    invoke-direct {v1, p0, p3, p2, p1}, Lccsancom/applovin/impl/mediation/g$a$14;-><init>(Lccsancom/applovin/impl/mediation/g$a;Ljava/lang/Runnable;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$12;

    invoke-direct {v1, p0, p2}, Lccsancom/applovin/impl/mediation/g$a$12;-><init>(Lccsancom/applovin/impl/mediation/g$a;Lccsancom/applovin/mediation/MaxError;)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/g$a;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->g(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/a;->o()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$15;

    invoke-direct {v1, p0, p2}, Lccsancom/applovin/impl/mediation/g$a$15;-><init>(Lccsancom/applovin/impl/mediation/g$a;Lccsanandroid/os/Bundle;)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$16;

    invoke-direct {v1, p0, p2}, Lccsancom/applovin/impl/mediation/g$a$16;-><init>(Lccsancom/applovin/impl/mediation/g$a;Lccsancom/applovin/mediation/MaxError;)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAdViewAdClicked()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": adview ad clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$8;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$8;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onAdViewAdClicked"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdViewAdCollapsed()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": adview ad collapsed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$11;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$11;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onAdViewAdCollapsed"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdViewAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": adview ad failed to display with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onAdViewAdDisplayFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onAdViewAdDisplayed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/g$a;->onAdViewAdDisplayed(Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onAdViewAdDisplayed(Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": adview ad displayed with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onAdViewAdDisplayed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onAdViewAdExpanded()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": adview ad expanded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$10;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$10;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onAdViewAdExpanded"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdViewAdHidden()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": adview ad hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$9;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$9;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onAdViewAdHidden"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdViewAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": adview ad ad failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onAdViewAdLoadFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onAdViewAdLoaded(Lccsanandroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/mediation/g$a;->onAdViewAdLoaded(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onAdViewAdLoaded(Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": adview ad loaded with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;Lccsanandroid/view/View;)Lccsanandroid/view/View;

    const-string p1, "onAdViewAdLoaded"

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onInterstitialAdClicked()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": interstitial ad clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$17;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$17;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onInterstitialAdClicked"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": interstitial ad failed to display with error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onInterstitialAdDisplayFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onInterstitialAdDisplayed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/g$a;->onInterstitialAdDisplayed(Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onInterstitialAdDisplayed(Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": interstitial ad displayed with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onInterstitialAdDisplayed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onInterstitialAdHidden()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": interstitial ad hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$18;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$18;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onInterstitialAdHidden"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInterstitialAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": interstitial ad failed to load with error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onInterstitialAdLoadFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onInterstitialAdLoaded()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/g$a;->onInterstitialAdLoaded(Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onInterstitialAdLoaded(Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": interstitial ad loaded with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onInterstitialAdLoaded"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onNativeAdClicked()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": native ad clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$13;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$13;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onNativeAdClicked"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNativeAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": native ad failed to display with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onNativeAdDisplayFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onNativeAdDisplayed(Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": native ad displayed with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onNativeAdDisplayed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onNativeAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": native ad ad failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onNativeAdLoadFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onNativeAdLoaded(Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;Lccsanandroid/view/View;Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": native ad loaded with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;Lccsanandroid/view/View;)Lccsanandroid/view/View;

    const-string p1, "onNativeAdLoaded"

    invoke-direct {p0, p1, p3}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedAdClicked()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded ad clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$19;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$19;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onRewardedAdClicked"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRewardedAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded ad display failed with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRewardedAdDisplayFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onRewardedAdDisplayed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/g$a;->onRewardedAdDisplayed(Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedAdDisplayed(Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded ad displayed with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRewardedAdDisplayed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedAdHidden()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded ad hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$20;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$20;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onRewardedAdHidden"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRewardedAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded ad failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRewardedAdLoadFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onRewardedAdLoaded()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/g$a;->onRewardedAdLoaded(Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedAdLoaded(Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded ad loaded with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRewardedAdLoaded"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedAdVideoCompleted()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded video completed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$3;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$3;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onRewardedAdVideoCompleted"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRewardedAdVideoStarted()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded video started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$2;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$2;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onRewardedAdVideoStarted"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRewardedInterstitialAdClicked()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded interstitial ad clicked"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$4;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$4;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onRewardedInterstitialAdClicked"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRewardedInterstitialAdDisplayFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded interstitial ad display failed with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRewardedInterstitialAdDisplayFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onRewardedInterstitialAdDisplayed()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/g$a;->onRewardedInterstitialAdDisplayed(Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedInterstitialAdDisplayed(Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded interstitial ad displayed with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRewardedInterstitialAdDisplayed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedInterstitialAdHidden()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded interstitial ad hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$5;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$5;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onRewardedInterstitialAdHidden"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRewardedInterstitialAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded ad failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRewardedInterstitialAdLoadFailed"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onRewardedInterstitialAdLoaded()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/g$a;->onRewardedInterstitialAdLoaded(Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedInterstitialAdLoaded(Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded interstitial ad loaded with extra info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "onRewardedInterstitialAdLoaded"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onRewardedInterstitialAdVideoCompleted()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded interstitial completed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$7;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$7;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onRewardedInterstitialAdVideoCompleted"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRewardedInterstitialAdVideoStarted()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": rewarded interstitial started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v1, Lccsancom/applovin/impl/mediation/g$a$6;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/g$a$6;-><init>(Lccsancom/applovin/impl/mediation/g$a;)V

    const-string v2, "onRewardedInterstitialAdVideoStarted"

    invoke-direct {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserRewarded(Lccsancom/applovin/mediation/MaxReward;)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->g(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/a;

    move-result-object v0

    instance-of v0, v0, Lccsancom/applovin/impl/mediation/a/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->g(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/a;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->G()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/g;->c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": user was rewarded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediationAdapterWrapper"

    invoke-virtual {v1, v3, v2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$a;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    new-instance v2, Lccsancom/applovin/impl/mediation/g$a$21;

    invoke-direct {v2, p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$a$21;-><init>(Lccsancom/applovin/impl/mediation/g$a;Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/mediation/MaxReward;)V

    const-string p1, "onUserRewarded"

    invoke-direct {p0, p1, v1, v2}, Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
