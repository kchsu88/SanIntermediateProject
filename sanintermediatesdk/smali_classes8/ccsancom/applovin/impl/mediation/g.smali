.class public Lccsancom/applovin/impl/mediation/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/g$b;,
        Lccsancom/applovin/impl/mediation/g$a;,
        Lccsancom/applovin/impl/mediation/g$d;,
        Lccsancom/applovin/impl/mediation/g$c;
    }
.end annotation


# instance fields
.field private final a:Lccsanandroid/os/Handler;

.field private final b:Lccsancom/applovin/impl/sdk/k;

.field private final c:Lccsancom/applovin/impl/sdk/r;

.field private final d:Ljava/lang/String;

.field private final e:Lccsancom/applovin/impl/mediation/a/e;

.field private final f:Ljava/lang/String;

.field private g:Lccsancom/applovin/mediation/adapter/MaxAdapter;

.field private h:Ljava/lang/String;

.field private i:Lccsancom/applovin/impl/mediation/a/a;

.field private j:Lccsanandroid/view/View;

.field private k:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

.field private l:Lccsanandroid/view/View;

.field private final m:Lccsancom/applovin/impl/mediation/g$a;

.field private n:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final q:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/a/e;Lccsancom/applovin/mediation/adapter/MaxAdapter;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/g;->a:Lccsanandroid/os/Handler;

    new-instance v0, Lccsancom/applovin/impl/mediation/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/applovin/impl/mediation/g$a;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/impl/mediation/g$1;)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/g;->m:Lccsancom/applovin/impl/mediation/g$a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/g;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/g;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/g;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/e;->K()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/g;->d:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g;->g:Lccsancom/applovin/mediation/adapter/MaxAdapter;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/g;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p3

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/g;->c:Lccsancom/applovin/impl/sdk/r;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g;->e:Lccsancom/applovin/impl/mediation/a/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No adapter specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No adapter name specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/g;Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g;->j:Lccsanandroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/MaxAdapter;)Lccsancom/applovin/mediation/adapter/MaxAdapter;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g;->g:Lccsancom/applovin/mediation/adapter/MaxAdapter;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;)Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g;->k:Lccsancom/applovin/mediation/nativeAds/MaxNativeAd;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as disabled due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "MediationAdapterWrapper"

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/g;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V
    .locals 3

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/g$b;->a(Lccsancom/applovin/impl/mediation/g$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/g$b;->b(Lccsancom/applovin/impl/mediation/g$b;)Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/g$b;->b(Lccsancom/applovin/impl/mediation/g$b;)Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollected(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/mediation/g$6;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/mediation/g$6;-><init>(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/g;->e:Lccsancom/applovin/impl/mediation/a/e;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/e;->Q()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/g;->a:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/g;Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g;->l:Lccsanandroid/view/View;

    return-object p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/e;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->e:Lccsancom/applovin/impl/mediation/a/e;

    return-object p0
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/g;->b(Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V

    return-void
.end method

.method private b(Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V
    .locals 3

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/g$b;->a(Lccsancom/applovin/impl/mediation/g$b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/g$b;->b(Lccsancom/applovin/impl/mediation/g$b;)Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/g$b;->b(Lccsancom/applovin/impl/mediation/g$b;)Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollectionFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->c:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method

.method static synthetic d(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->b:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method

.method static synthetic e(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/mediation/adapter/MaxAdapter;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->g:Lccsancom/applovin/mediation/adapter/MaxAdapter;

    return-object p0
.end method

.method static synthetic f(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/g$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->m:Lccsancom/applovin/impl/mediation/g$a;

    return-object p0
.end method

.method static synthetic g(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->i:Lccsancom/applovin/impl/mediation/a/a;

    return-object p0
.end method

.method static synthetic h(Lccsancom/applovin/impl/mediation/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic i(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->n:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    return-object p0
.end method

.method static synthetic j(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lccsancom/applovin/impl/mediation/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic l(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lccsancom/applovin/impl/mediation/g;)Lccsanandroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/g;->a:Lccsanandroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a()Lccsanandroid/view/View;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->j:Lccsanandroid/view/View;

    return-object v0
.end method

.method public a(Lccsancom/applovin/impl/mediation/a/a;Lccsanandroid/app/Activity;)V
    .locals 5

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->f()Lccsancom/applovin/impl/mediation/g;

    move-result-object v0

    const-string v1, "ad_show"

    const/4 v2, -0x1

    const-string v3, "MediationAdapterWrapper"

    if-nez v0, :cond_0

    const-string p1, "Adapter has been garbage collected"

    invoke-static {v3, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    invoke-direct {p2, v2, p1}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/g;->m:Lccsancom/applovin/impl/mediation/g$a;

    invoke-static {p1, v1, p2}, Lccsancom/applovin/impl/mediation/g$a;->b(Lccsancom/applovin/impl/mediation/g$a;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->f()Lccsancom/applovin/impl/mediation/g;

    move-result-object v0

    if-ne v0, p0, :cond_7

    if-eqz p2, :cond_6

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v4, "Mediation adapter \'"

    if-nez v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is disabled. Showing ads with this adapter is disabled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    invoke-direct {p2, v2, p1}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/g;->m:Lccsancom/applovin/impl/mediation/g$a;

    invoke-static {p1, v1, p2}, Lccsancom/applovin/impl/mediation/g$a;->b(Lccsancom/applovin/impl/mediation/g$a;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/g;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_2

    new-instance v0, Lccsancom/applovin/impl/mediation/g$13;

    invoke-direct {v0, p0, p2}, Lccsancom/applovin/impl/mediation/g$13;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_3

    new-instance v0, Lccsancom/applovin/impl/mediation/g$14;

    invoke-direct {v0, p0, p2}, Lccsancom/applovin/impl/mediation/g$14;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_4

    new-instance v0, Lccsancom/applovin/impl/mediation/g$2;

    invoke-direct {v0, p0, p2}, Lccsancom/applovin/impl/mediation/g$2;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsanandroid/app/Activity;)V

    :goto_0
    new-instance p2, Lccsancom/applovin/impl/mediation/g$3;

    invoke-direct {p2, p0, v0, p1}, Lccsancom/applovin/impl/mediation/g$3;-><init>(Lccsancom/applovin/impl/mediation/g;Ljava/lang/Runnable;Lccsancom/applovin/impl/mediation/a/a;)V

    const-string/jumbo p1, "show_ad"

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a supported ad format"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' does not have an ad loaded. Please load an ad first"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No activity specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mediated ad belongs to a different adapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No mediated ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Lccsanandroid/app/Activity;)V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/mediation/g$1;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/mediation/g$1;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Lccsanandroid/app/Activity;)V

    const-string p1, "initialize"

    invoke-direct {p0, p1, v0}, Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lccsancom/applovin/impl/mediation/a/g;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    .locals 7

    if-eqz p4, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "The adapter ("

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Mediation adapter \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is disabled. Signal collection ads with this adapter is disabled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediationAdapterWrapper"

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") is disabled"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollectionFailed(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v5, Lccsancom/applovin/impl/mediation/g$b;

    invoke-direct {v5, p2, p4}, Lccsancom/applovin/impl/mediation/g$b;-><init>(Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V

    iget-object p4, p0, Lccsancom/applovin/impl/mediation/g;->g:Lccsancom/applovin/mediation/adapter/MaxAdapter;

    instance-of v0, p4, Lccsancom/applovin/mediation/adapter/MaxSignalProvider;

    if-eqz v0, :cond_1

    move-object v2, p4

    check-cast v2, Lccsancom/applovin/mediation/adapter/MaxSignalProvider;

    new-instance p4, Lccsancom/applovin/impl/mediation/g$4;

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lccsancom/applovin/impl/mediation/g$4;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/MaxSignalProvider;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/g$b;Lccsancom/applovin/impl/mediation/a/g;)V

    const-string p1, "collect_signal"

    invoke-direct {p0, p1, p4}, Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") does not support signal collection"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v5}, Lccsancom/applovin/impl/mediation/g;->b(Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V

    :goto_0
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/String;Lccsancom/applovin/impl/mediation/a/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g;->h:Ljava/lang/String;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g;->i:Lccsancom/applovin/impl/mediation/a/a;

    return-void
.end method

.method public a(Ljava/lang/String;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/impl/mediation/a/a;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;)V
    .locals 1

    if-eqz p3, :cond_6

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Mediation adapter \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' was disabled due to earlier failures. Loading ads with this adapter is disabled."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MediationAdapterWrapper"

    invoke-static {p3, p2}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    const/4 p4, -0x1

    invoke-direct {p3, p4, p2}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    invoke-virtual {p5, p1, p3}, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void

    :cond_0
    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g;->n:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/g;->m:Lccsancom/applovin/impl/mediation/g$a;

    invoke-static {p1, p5}, Lccsancom/applovin/impl/mediation/g$a;->a(Lccsancom/applovin/impl/mediation/g$a;Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;)V

    invoke-virtual {p3}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    sget-object p5, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_1

    new-instance p1, Lccsancom/applovin/impl/mediation/g$7;

    invoke-direct {p1, p0, p2, p4}, Lccsancom/applovin/impl/mediation/g$7;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    sget-object p5, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_2

    new-instance p1, Lccsancom/applovin/impl/mediation/g$8;

    invoke-direct {p1, p0, p2, p4}, Lccsancom/applovin/impl/mediation/g$8;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    sget-object p5, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_3

    new-instance p1, Lccsancom/applovin/impl/mediation/g$9;

    invoke-direct {p1, p0, p2, p4}, Lccsancom/applovin/impl/mediation/g$9;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    sget-object p5, Lccsancom/applovin/mediation/MaxAdFormat;->NATIVE:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p1, p5, :cond_4

    new-instance p1, Lccsancom/applovin/impl/mediation/g$10;

    invoke-direct {p1, p0, p2, p4}, Lccsancom/applovin/impl/mediation/g$10;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lccsancom/applovin/impl/mediation/g$11;

    invoke-direct {p1, p0, p2, p3, p4}, Lccsancom/applovin/impl/mediation/g$11;-><init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/impl/mediation/a/a;Lccsanandroid/app/Activity;)V

    :goto_0
    new-instance p2, Lccsancom/applovin/impl/mediation/g$12;

    invoke-direct {p2, p0, p1, p3}, Lccsancom/applovin/impl/mediation/g$12;-><init>(Lccsancom/applovin/impl/mediation/g;Ljava/lang/Runnable;Lccsancom/applovin/impl/mediation/a/a;)V

    const-string p1, "load_ad"

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to load "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not a supported ad format"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No mediated ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->m:Lccsancom/applovin/impl/mediation/g$a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g$a;->a(Lccsancom/applovin/impl/mediation/g$a;)Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->g:Lccsancom/applovin/mediation/adapter/MaxAdapter;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get adapter\'s SDK version, marking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-static {v2, v1, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "sdk_version"

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->A()Lccsancom/applovin/impl/mediation/f;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g;->e:Lccsancom/applovin/impl/mediation/a/e;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/a/e;->J()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/g;->i:Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v1, v2, v0, v3}, Lccsancom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/mediation/a/a;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g;->g:Lccsancom/applovin/mediation/adapter/MaxAdapter;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapter;->getAdapterVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get adapter version, marking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediationAdapterWrapper"

    invoke-static {v2, v1, v0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "adapter_version"

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->A()Lccsancom/applovin/impl/mediation/f;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g;->e:Lccsancom/applovin/impl/mediation/a/e;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/a/e;->J()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/g;->i:Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v1, v2, v0, v3}, Lccsancom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/mediation/a/a;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method h()V
    .locals 2

    new-instance v0, Lccsancom/applovin/impl/mediation/g$5;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/mediation/g$5;-><init>(Lccsancom/applovin/impl/mediation/g;)V

    const-string v1, "destroy"

    invoke-direct {p0, v1, v0}, Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapterWrapper{adapterTag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
