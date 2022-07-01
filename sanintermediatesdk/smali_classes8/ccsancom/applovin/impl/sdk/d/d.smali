.class public Lccsancom/applovin/impl/sdk/d/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/d/g;

.field private final c:Lccsancom/applovin/impl/sdk/d/c$b;

.field private final d:Ljava/lang/Object;

.field private final e:J

.field private f:J

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->d:Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/d/d;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->b:Lccsancom/applovin/impl/sdk/d/g;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->aa()Lccsancom/applovin/impl/sdk/d/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p2

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    sget-object v0, Lccsancom/applovin/impl/sdk/d/b;->a:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getSource()Lccsancom/applovin/impl/sdk/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/b;->ordinal()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getCreatedAtMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/applovin/impl/sdk/d/d;->e:J

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(JLccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->aa()Lccsancom/applovin/impl/sdk/d/c;

    move-result-object p3

    invoke-virtual {p3, p2}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p2

    sget-object p3, Lccsancom/applovin/impl/sdk/d/b;->b:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p2, p3, p0, p1}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    :cond_0
    return-void
.end method

.method public static a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->aa()Lccsancom/applovin/impl/sdk/d/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    sget-object v0, Lccsancom/applovin/impl/sdk/d/b;->c:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getFetchLatencyMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    sget-object v0, Lccsancom/applovin/impl/sdk/d/b;->d:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getFetchResponseSize()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    :cond_0
    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/d/b;)V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lccsancom/applovin/impl/sdk/d/d;->f:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsancom/applovin/impl/sdk/d/d;->f:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    invoke-virtual {v3, p1, v1, v2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static a(Lccsancom/applovin/impl/sdk/d/e;Lccsancom/applovin/impl/sdk/AppLovinAdBase;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->aa()Lccsancom/applovin/impl/sdk/d/c;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/d/c;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    sget-object p2, Lccsancom/applovin/impl/sdk/d/b;->e:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d/e;->c()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    sget-object p2, Lccsancom/applovin/impl/sdk/d/b;->f:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d/e;->d()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    sget-object p2, Lccsancom/applovin/impl/sdk/d/b;->u:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d/e;->g()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    sget-object p2, Lccsancom/applovin/impl/sdk/d/b;->v:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d/e;->h()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    sget-object p2, Lccsancom/applovin/impl/sdk/d/b;->w:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d/e;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->b:Lccsancom/applovin/impl/sdk/d/g;

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->b:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/g;->a(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/d/d;->b:Lccsancom/applovin/impl/sdk/d/g;

    sget-object v3, Lccsancom/applovin/impl/sdk/d/f;->d:Lccsancom/applovin/impl/sdk/d/f;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/d/g;->a(Lccsancom/applovin/impl/sdk/d/f;)J

    move-result-wide v2

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    sget-object v5, Lccsancom/applovin/impl/sdk/d/b;->j:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v4, v5, v0, v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/b;->i:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lccsancom/applovin/impl/sdk/d/d;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/applovin/impl/sdk/d/d;->f:J

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/d/d;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v5}, Lccsancom/applovin/impl/sdk/k;->M()J

    move-result-wide v5

    sub-long/2addr v1, v5

    iget-wide v5, p0, Lccsancom/applovin/impl/sdk/d/d;->f:J

    iget-wide v7, p0, Lccsancom/applovin/impl/sdk/d/d;->e:J

    sub-long/2addr v5, v7

    iget-object v7, p0, Lccsancom/applovin/impl/sdk/d/d;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v7}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsancom/applovin/impl/sdk/utils/g;->a(Lccsanandroid/content/Context;)Z

    move-result v7

    const-wide/16 v8, 0x1

    if-eqz v7, :cond_0

    move-wide v10, v8

    goto :goto_0

    :cond_0
    move-wide v10, v3

    :goto_0
    iget-object v7, p0, Lccsancom/applovin/impl/sdk/d/d;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v7}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/applovin/impl/sdk/a;->a()Lccsanandroid/app/Activity;

    move-result-object v7

    invoke-static {}, Lccsancom/applovin/impl/sdk/utils/f;->f()Z

    move-result v12

    if-eqz v12, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lccsanandroid/app/Activity;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_1

    move-wide v3, v8

    :cond_1
    iget-object v7, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    sget-object v8, Lccsancom/applovin/impl/sdk/d/b;->h:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v7, v8, v1, v2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/d/b;->g:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v1, v2, v5, v6}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/d/b;->p:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v1, v2, v10, v11}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/d/b;->x:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    sget-object v1, Lccsancom/applovin/impl/sdk/d/b;->r:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    return-void
.end method

.method public b()V
    .locals 8

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lccsancom/applovin/impl/sdk/d/d;->g:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lccsancom/applovin/impl/sdk/d/d;->g:J

    iget-wide v3, p0, Lccsancom/applovin/impl/sdk/d/d;->f:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    sub-long/2addr v1, v3

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    sget-object v4, Lccsancom/applovin/impl/sdk/d/b;->m:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v3, v4, v1, v2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

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

.method public b(J)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    sget-object v1, Lccsancom/applovin/impl/sdk/d/b;->q:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/d/b;->k:Lccsancom/applovin/impl/sdk/d/b;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/d/d;->a(Lccsancom/applovin/impl/sdk/d/b;)V

    return-void
.end method

.method public c(J)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    sget-object v1, Lccsancom/applovin/impl/sdk/d/b;->s:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v0, v1, p1, p2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    return-void
.end method

.method public d()V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/d/b;->n:Lccsancom/applovin/impl/sdk/d/b;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/d/d;->a(Lccsancom/applovin/impl/sdk/d/b;)V

    return-void
.end method

.method public d(J)V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lccsancom/applovin/impl/sdk/d/d;->h:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iput-wide p1, p0, Lccsancom/applovin/impl/sdk/d/d;->h:J

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    sget-object v2, Lccsancom/applovin/impl/sdk/d/b;->t:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v1, v2, p1, p2}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;J)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public e()V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/d/b;->o:Lccsancom/applovin/impl/sdk/d/b;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/d/d;->a(Lccsancom/applovin/impl/sdk/d/b;)V

    return-void
.end method

.method public f()V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/d/b;->l:Lccsancom/applovin/impl/sdk/d/b;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/d/d;->a(Lccsancom/applovin/impl/sdk/d/b;)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/d/d;->c:Lccsancom/applovin/impl/sdk/d/c$b;

    sget-object v1, Lccsancom/applovin/impl/sdk/d/b;->y:Lccsancom/applovin/impl/sdk/d/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/d/c$b;->a(Lccsancom/applovin/impl/sdk/d/b;)Lccsancom/applovin/impl/sdk/d/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/c$b;->a()V

    return-void
.end method
