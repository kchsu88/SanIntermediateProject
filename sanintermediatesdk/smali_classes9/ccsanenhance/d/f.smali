.class public final Lccsanenhance/d/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Lccsanandroid/os/Handler;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lccsanenhance/d/e;

.field public final d:Lccsanenhance/d/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsanenhance/d/f;->a:Lccsanandroid/os/Handler;

    .line 3
    invoke-virtual {p0}, Lccsanenhance/d/f;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lccsanenhance/d/f;->b:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v1, Lccsanenhance/d/e;

    invoke-direct {v1, v0}, Lccsanenhance/d/e;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lccsanenhance/d/f;->c:Lccsanenhance/d/e;

    .line 5
    new-instance v0, Lccsanenhance/d/f$a;

    invoke-direct {v0, p0}, Lccsanenhance/d/f$a;-><init>(Lccsanenhance/d/f;)V

    iput-object v0, p0, Lccsanenhance/d/f;->d:Lccsanenhance/d/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/d/f;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public a(Lccsanenhance/d/b;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lccsanenhance/d/f;->a:Lccsanandroid/os/Handler;

    invoke-virtual {p1}, Lccsanenhance/d/b;->a()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()Lccsanenhance/d/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/d/f;->c:Lccsanenhance/d/e;

    return-object v0
.end method

.method public final c()Ljava/util/concurrent/Executor;
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lccsanenhance/d/g;

    invoke-direct {v9}, Lccsanenhance/d/g;-><init>()V

    const-wide/16 v5, 0x0

    move-object v2, v0

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method public d()Lccsanenhance/d/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsanenhance/d/f;->d:Lccsanenhance/d/d;

    return-object v0
.end method
