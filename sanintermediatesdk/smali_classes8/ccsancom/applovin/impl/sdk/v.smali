.class public Lccsancom/applovin/impl/sdk/v;
.super Ljava/lang/Object;


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field final a:Lccsancom/applovin/impl/sdk/k;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lccsancom/applovin/impl/sdk/v;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Application;

    new-instance v1, Lccsancom/applovin/impl/sdk/v$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/v$1;-><init>(Lccsancom/applovin/impl/sdk/v;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Application;->registerActivityLifecycleCallbacks(Lccsanandroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v1, Lccsancom/applovin/impl/sdk/v$2;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/v$2;-><init>(Lccsancom/applovin/impl/sdk/v;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Application;->registerComponentCallbacks(Lccsanandroid/content/ComponentCallbacks;)V

    new-instance v1, Lccsanandroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v2}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lccsancom/applovin/impl/sdk/v$3;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/sdk/v$3;-><init>(Lccsancom/applovin/impl/sdk/v;)V

    invoke-virtual {v0, v2, v1}, Lccsanandroid/app/Application;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cq:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lccsancom/applovin/impl/sdk/v;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lccsanandroid/content/Intent;

    const-class v2, Lccsancom/applovin/impl/sdk/utils/AppKilledService;

    invoke-direct {v1, v0, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lccsanandroid/app/Application;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    new-instance v2, Lccsancom/applovin/impl/sdk/v$4;

    invoke-direct {v2, p0, v0, v1, p1}, Lccsancom/applovin/impl/sdk/v$4;-><init>(Lccsancom/applovin/impl/sdk/v;Lccsanandroid/app/Application;Lccsanandroid/content/Intent;Lccsancom/applovin/impl/sdk/k;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object p1

    new-instance v0, Lccsanandroid/content/IntentFilter;

    const-string v1, "com.applovin.app_killed"

    invoke-direct {v0, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/v;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/v;->d()V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/sdk/v;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/v;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/v;->g()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/v;->f()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "SessionTracker"

    const-string v2, "Application Paused"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v0

    new-instance v1, Lccsanandroid/content/Intent;

    const-string v2, "com.applovin.application_paused"

    invoke-direct {v1, v2}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcastSync(Lccsanandroid/content/Intent;Ljava/util/Map;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dn:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dp:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/v;->e:Ljava/util/Date;

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/v;->e:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-ltz v5, :cond_2

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->u()Lccsancom/applovin/sdk/AppLovinEventService;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/EventServiceImpl;

    const-string v2, "paused"

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lccsancom/applovin/impl/sdk/v;->e:Ljava/util/Date;

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/v;->e:Ljava/util/Date;

    :cond_3
    return-void
.end method

.method private g()V
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "SessionTracker"

    const-string v2, "Application Resumed"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dn:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->do:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v3

    new-instance v4, Lccsanandroid/content/Intent;

    const-string v5, "com.applovin.application_resumed"

    invoke-direct {v4, v5}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->sendBroadcastSync(Lccsanandroid/content/Intent;Ljava/util/Map;)V

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/v;->f:Ljava/util/Date;

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/v;->f:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-ltz v5, :cond_2

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->u()Lccsancom/applovin/sdk/AppLovinEventService;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/sdk/EventServiceImpl;

    const-string v2, "resumed"

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lccsancom/applovin/impl/sdk/v;->f:Ljava/util/Date;

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/v;->f:Ljava/util/Date;

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->k:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/g;->a(Lccsancom/applovin/impl/sdk/d/f;)J

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/v;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
