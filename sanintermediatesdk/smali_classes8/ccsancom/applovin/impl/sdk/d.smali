.class public Lccsancom/applovin/impl/sdk/d;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/d$a;
    }
.end annotation


# instance fields
.field private a:Lccsancom/applovin/impl/sdk/utils/m;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lccsancom/applovin/impl/sdk/k;

.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/applovin/impl/sdk/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private f:J


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/d$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/d;->e:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/d;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/d;->h()V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/d;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/d;->e:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/a;->s:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->r:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d;->d()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->r:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ab()Lccsancom/applovin/impl/sdk/v;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/v;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the application to enter foreground to resume the timer."

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/m;->c()V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d;->c()V

    iput-wide p1, p0, Lccsancom/applovin/impl/sdk/d;->f:J

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    new-instance v2, Lccsancom/applovin/impl/sdk/d$1;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/sdk/d$1;-><init>(Lccsancom/applovin/impl/sdk/d;)V

    invoke-static {p1, p2, v1, v2}, Lccsancom/applovin/impl/sdk/utils/m;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/m;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/a;->s:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Lccsanandroid/content/IntentFilter;

    const-string v1, "com.applovin.application_paused"

    invoke-direct {p2, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Lccsanandroid/content/IntentFilter;

    const-string v1, "com.applovin.application_resumed"

    invoke-direct {p2, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Lccsanandroid/content/IntentFilter;

    const-string v1, "com.applovin.fullscreen_ad_displayed"

    invoke-direct {p2, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance p2, Lccsanandroid/content/IntentFilter;

    const-string v1, "com.applovin.fullscreen_ad_hidden"

    invoke-direct {p2, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/a;->r:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/q;->b()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ab()Lccsancom/applovin/impl/sdk/v;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/v;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/utils/m;->b()V

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/a;->t:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    const-string p2, "AdRefreshManager"

    const-string v1, "Pausing refresh for a previous request."

    invoke-virtual {p1, p2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/utils/m;->b()V

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()J
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/m;->a()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/m;->d()V

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/d;->h()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/m;->b()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "An ad load is in progress. Will pause refresh once the ad finishes loading."

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/m;->c()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->q:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d;->d()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 9

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->q:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/q;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    const-string v2, "AdRefreshManager"

    const-string v3, "Waiting for the full screen ad to be dismissed to resume the timer."

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lccsancom/applovin/impl/sdk/d;->f:J

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->d:Lccsancom/applovin/impl/sdk/k;

    sget-object v5, Lccsancom/applovin/impl/sdk/c/a;->p:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v5}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-ltz v1, :cond_1

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d;->c()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d;->a:Lccsancom/applovin/impl/sdk/utils/m;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/utils/m;->c()V

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/sdk/d$a;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lccsancom/applovin/impl/sdk/d$a;->onAdRefresh()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroid/content/Intent;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.applovin.application_paused"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d;->f()V

    goto :goto_0

    :cond_0
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d;->g()V

    goto :goto_0

    :cond_1
    const-string p2, "com.applovin.fullscreen_ad_displayed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/d;->i()V

    goto :goto_0

    :cond_2
    const-string p2, "com.applovin.fullscreen_ad_hidden"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/d;->j()V

    :cond_3
    :goto_0
    return-void
.end method
