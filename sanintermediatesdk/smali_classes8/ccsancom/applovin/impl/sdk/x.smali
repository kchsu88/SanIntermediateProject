.class public Lccsancom/applovin/impl/sdk/x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/x$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private final c:Ljava/lang/Object;

.field private final d:Lccsanandroid/graphics/Rect;

.field private final e:Lccsanandroid/os/Handler;

.field private final f:Ljava/lang/Runnable;

.field private final g:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/applovin/mediation/ads/MaxAdView;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:J

.field private m:J


# direct methods
.method public constructor <init>(Lccsancom/applovin/mediation/ads/MaxAdView;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/x$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/x;->c:Ljava/lang/Object;

    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/x;->d:Lccsanandroid/graphics/Rect;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/x;->i:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/x;->j:Ljava/lang/ref/WeakReference;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lccsancom/applovin/impl/sdk/x;->m:J

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/x;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p2

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/x;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance p2, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/x;->e:Lccsanandroid/os/Handler;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/x;->h:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lccsancom/applovin/impl/sdk/x$1;

    invoke-direct {p2, p0, p1}, Lccsancom/applovin/impl/sdk/x$1;-><init>(Lccsancom/applovin/impl/sdk/x;Ljava/lang/ref/WeakReference;)V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/x;->f:Ljava/lang/Runnable;

    new-instance p1, Lccsancom/applovin/impl/sdk/x$2;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/sdk/x$2;-><init>(Lccsancom/applovin/impl/sdk/x;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/x;->g:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/x;->h:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Lccsanandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->getRootView(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/Utils;->getRootView(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v0

    :cond_0
    const-string p1, "VisibilityTracker"

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "Unable to set view tree observer due to no root view."

    invoke-virtual {v0, p1, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "Unable to set view tree observer since the view tree observer is not alive."

    invoke-virtual {v0, p1, v1}, Lccsancom/applovin/impl/sdk/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/x;->i:Ljava/lang/ref/WeakReference;

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/x;->g:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, p1}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private a(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lccsanandroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lccsanandroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p2}, Lccsanandroid/view/View;->getHeight()I

    move-result p1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/x;->d:Lccsanandroid/graphics/Rect;

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/x;->d:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p1, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Lccsanandroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/x;->d:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1}, Lccsanandroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {p2, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Lccsanandroid/content/Context;I)I

    move-result p2

    mul-int p1, p1, p2

    int-to-long p1, p1

    iget v1, p0, Lccsancom/applovin/impl/sdk/x;->k:I

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-ltz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/x;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/x;->b(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/x;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/x;->j:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x;->e:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/x;->f:Ljava/lang/Runnable;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/x;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->bM:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 4

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/x;->a(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lccsancom/applovin/impl/sdk/x;->m:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/applovin/impl/sdk/x;->m:J

    :cond_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/applovin/impl/sdk/x;->m:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lccsancom/applovin/impl/sdk/x;->l:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    return p2
.end method

.method static synthetic c(Lccsancom/applovin/impl/sdk/x;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/x;->b:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/x;->g:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method static synthetic d(Lccsancom/applovin/impl/sdk/x;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/x;->b()V

    return-void
.end method

.method static synthetic e(Lccsancom/applovin/impl/sdk/x;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/x;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/x;->e:Lccsanandroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/x;->c()V

    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lccsancom/applovin/impl/sdk/x;->m:J

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/x;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lccsancom/applovin/impl/mediation/a/b;)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/x;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/x;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "VisibilityTracker"

    const-string v3, "Tracking Visibility..."

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/x;->a()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/b;->s()Lccsanandroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lccsancom/applovin/impl/sdk/x;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/b;->x()I

    move-result v1

    iput v1, p0, Lccsancom/applovin/impl/sdk/x;->k:I

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/b;->z()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/applovin/impl/sdk/x;->l:J

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/x;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/View;

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/x;->a(Lccsanandroid/view/View;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
