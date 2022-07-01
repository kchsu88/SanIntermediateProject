.class public final Lccsancom/mbridge/msdk/foundation/same/e/b;
.super Ljava/lang/Object;
.source "CommonTaskLoader.java"


# instance fields
.field a:Ljava/util/concurrent/ThreadPoolExecutor;

.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lccsancom/mbridge/msdk/foundation/same/e/a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 9

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0xf

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v8, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->b:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->c:Ljava/lang/ref/WeakReference;

    .line 42
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 10

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v8, 0x1

    if-nez p2, :cond_0

    .line 26
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    goto :goto_0

    .line 28
    :cond_0
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v2, v0, 0x1

    const-wide/16 v3, 0xf

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move-object v0, v9

    move v1, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v9, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 30
    :goto_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->b:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->c:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method

.method private declared-synchronized b(Lccsancom/mbridge/msdk/foundation/same/e/a;Lccsancom/mbridge/msdk/foundation/same/e/a$b;)V
    .locals 3

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->b:Ljava/util/HashMap;

    .line 1034
    sget-wide v1, Lccsancom/mbridge/msdk/foundation/same/e/a;->b:J

    .line 69
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/e/b$1;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/e/b$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/e/b;Lccsancom/mbridge/msdk/foundation/same/e/a;Lccsancom/mbridge/msdk/foundation/same/e/a$b;)V

    .line 89
    nop

    .line 1072
    iput-object v0, p1, Lccsancom/mbridge/msdk/foundation/same/e/a;->d:Lccsancom/mbridge/msdk/foundation/same/e/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 68
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/same/e/a;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/same/e/a;->d()V

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/e/a;)V
    .locals 1

    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/foundation/same/e/b;->b(Lccsancom/mbridge/msdk/foundation/same/e/a;Lccsancom/mbridge/msdk/foundation/same/e/a$b;)V

    .line 117
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/foundation/same/e/a;Lccsancom/mbridge/msdk/foundation/same/e/a$b;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/same/e/b;->b(Lccsancom/mbridge/msdk/foundation/same/e/a;Lccsancom/mbridge/msdk/foundation/same/e/a$b;)V

    .line 122
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/same/e/b;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method
