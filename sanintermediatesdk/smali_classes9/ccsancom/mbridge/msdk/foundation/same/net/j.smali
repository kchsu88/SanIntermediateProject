.class public Lccsancom/mbridge/msdk/foundation/same/net/j;
.super Ljava/lang/Object;
.source "RequestQueue.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lccsanandroid/content/Context;

.field private c:Lccsancom/mbridge/msdk/foundation/same/net/c;

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/mbridge/msdk/foundation/same/net/i;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ExecutorService;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lccsancom/mbridge/msdk/foundation/same/net/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/same/net/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 8

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->d:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->e:Ljava/util/concurrent/ExecutorService;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->b:Lccsanandroid/content/Context;

    .line 30
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/net/d;

    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    invoke-direct {p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/d;-><init>(Lccsanandroid/os/Handler;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->c:Lccsancom/mbridge/msdk/foundation/same/net/c;

    .line 31
    return-void
.end method

.method static synthetic a(Lccsancom/mbridge/msdk/foundation/same/net/j;)Lccsanandroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->b:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lccsancom/mbridge/msdk/foundation/same/net/j;)Lccsancom/mbridge/msdk/foundation/same/net/c;
    .locals 0

    .line 15
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->c:Lccsancom/mbridge/msdk/foundation/same/net/c;

    return-object p0
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
    .locals 2

    .line 64
    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(Lccsancom/mbridge/msdk/foundation/same/net/j;)Lccsancom/mbridge/msdk/foundation/same/net/i;

    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    nop

    .line 1034
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 69
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a(I)Lccsancom/mbridge/msdk/foundation/same/net/i;

    .line 71
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/same/net/j$1;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/same/net/j$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/j;Lccsancom/mbridge/msdk/foundation/same/net/i;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void

    .line 68
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final b(Lccsancom/mbridge/msdk/foundation/same/net/i;)V
    .locals 1

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/j;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 85
    monitor-exit p0

    .line 87
    return-void

    .line 85
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
