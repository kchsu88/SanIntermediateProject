.class public Lccsancom/applovin/impl/sdk/b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/b$a;
    }
.end annotation


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/b$a;

.field private c:Lccsancom/applovin/impl/sdk/utils/m;

.field private final d:Ljava/lang/Object;

.field private e:J


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/b$a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/b;->d:Ljava/lang/Object;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/b;->b:Lccsancom/applovin/impl/sdk/b$a;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/b;)Lccsancom/applovin/impl/sdk/b$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/sdk/b;->b:Lccsancom/applovin/impl/sdk/b$a;

    return-object p0
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b;->c:Lccsancom/applovin/impl/sdk/utils/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/utils/m;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/b;->c:Lccsancom/applovin/impl/sdk/utils/m;

    :cond_0
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/b;->b()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lccsancom/applovin/impl/sdk/b;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/b;->a()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v2}, Lccsancom/applovin/impl/sdk/b;->a(J)V

    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b;->b:Lccsancom/applovin/impl/sdk/b$a;

    invoke-interface {v0}, Lccsancom/applovin/impl/sdk/b$a;->onAdExpired()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/b;->b()V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->unregisterReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(J)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/b;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/b;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lccsancom/applovin/impl/sdk/b;->e:J

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v1

    new-instance v2, Lccsanandroid/content/IntentFilter;

    const-string v3, "com.applovin.application_paused"

    invoke-direct {v2, v3}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ai()Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;

    move-result-object v1

    new-instance v2, Lccsanandroid/content/IntentFilter;

    const-string v3, "com.applovin.application_resumed"

    invoke-direct {v2, v3}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lccsancom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Lccsanandroid/content/IntentFilter;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/a;->F:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ab()Lccsancom/applovin/impl/sdk/v;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/v;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/b;->a:Lccsancom/applovin/impl/sdk/k;

    new-instance v2, Lccsancom/applovin/impl/sdk/b$1;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/sdk/b$1;-><init>(Lccsancom/applovin/impl/sdk/b;)V

    invoke-static {p1, p2, v1, v2}, Lccsancom/applovin/impl/sdk/utils/m;->a(JLccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)Lccsancom/applovin/impl/sdk/utils/m;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/b;->c:Lccsancom/applovin/impl/sdk/utils/m;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/b;->c()V

    goto :goto_0

    :cond_0
    const-string p2, "com.applovin.application_resumed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/b;->d()V

    :cond_1
    :goto_0
    return-void
.end method
