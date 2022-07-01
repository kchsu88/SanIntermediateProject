.class Lccsancom/google/common/cache/LocalCache$LoadingValueReference;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lccsancom/google/common/cache/LocalCache$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadingValueReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/cache/LocalCache$ValueReference<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final futureValue:Lccsancom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/SettableFuture<",
            "TV;>;"
        }
    .end annotation
.end field

.field volatile oldValue:Lccsancom/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final stopwatch:Lccsancom/google/common/base/Stopwatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3392
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->unset()Lccsancom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;-><init>(Lccsancom/google/common/cache/LocalCache$ValueReference;)V

    .line 3393
    return-void
.end method

.method public constructor <init>(Lccsancom/google/common/cache/LocalCache$ValueReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3395
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "oldValue":Lccsancom/google/common/cache/LocalCache$ValueReference;, "Lccsancom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3388
    invoke-static {}, Lccsancom/google/common/util/concurrent/SettableFuture;->create()Lccsancom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lccsancom/google/common/util/concurrent/SettableFuture;

    .line 3389
    invoke-static {}, Lccsancom/google/common/base/Stopwatch;->createUnstarted()Lccsancom/google/common/base/Stopwatch;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lccsancom/google/common/base/Stopwatch;

    .line 3396
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lccsancom/google/common/cache/LocalCache$ValueReference;

    .line 3397
    return-void
.end method

.method private fullyFailedFuture(Ljava/lang/Throwable;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 3423
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/util/concurrent/Futures;->immediateFailedFuture(Ljava/lang/Throwable;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/LocalCache$ValueReference;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;TV;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3499
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public elapsedNanos()J
    .locals 2

    .line 3474
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lccsancom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3484
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lccsancom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lccsancom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3493
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOldValue()Lccsancom/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3488
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lccsancom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method

.method public getWeight()I
    .locals 1

    .line 3411
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lccsancom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lccsancom/google/common/cache/LocalCache$ValueReference;->getWeight()I

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 3406
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lccsancom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lccsancom/google/common/cache/LocalCache$ValueReference;->isActive()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 3401
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public loadFuture(Ljava/lang/Object;Lccsancom/google/common/cache/CacheLoader;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lccsancom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 3442
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    :try_start_0
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->stopwatch:Lccsancom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lccsancom/google/common/base/Stopwatch;->start()Lccsancom/google/common/base/Stopwatch;

    .line 3443
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lccsancom/google/common/cache/LocalCache$ValueReference;

    invoke-interface {v0}, Lccsancom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 3444
    .local v0, "previousValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .line 3445
    invoke-virtual {p2, p1}, Lccsancom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3446
    .local v1, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lccsancom/google/common/util/concurrent/SettableFuture;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lccsancom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    :goto_0
    return-object v2

    .line 3448
    .end local v1    # "newValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-virtual {p2, p1, v0}, Lccsancom/google/common/cache/CacheLoader;->reload(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 3449
    .local v1, "newValue":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    if-nez v1, :cond_2

    .line 3450
    const/4 v2, 0x0

    invoke-static {v2}, Lccsancom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    return-object v2

    .line 3454
    :cond_2
    new-instance v2, Lccsancom/google/common/cache/LocalCache$LoadingValueReference$1;

    invoke-direct {v2, p0}, Lccsancom/google/common/cache/LocalCache$LoadingValueReference$1;-><init>(Lccsancom/google/common/cache/LocalCache$LoadingValueReference;)V

    .line 3463
    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 3454
    invoke-static {v1, v2, v3}, Lccsancom/google/common/util/concurrent/Futures;->transform(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 3464
    .end local v0    # "previousValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "newValue":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    :catchall_0
    move-exception v0

    .line 3465
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->setException(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lccsancom/google/common/util/concurrent/SettableFuture;

    goto :goto_1

    :cond_3
    invoke-direct {p0, v0}, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->fullyFailedFuture(Ljava/lang/Throwable;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    .line 3466
    .local v1, "result":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    :goto_1
    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_4

    .line 3467
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 3469
    :cond_4
    return-object v1
.end method

.method public notifyNewValue(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 3428
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    .line 3431
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3434
    :cond_0
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->unset()Lccsancom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->oldValue:Lccsancom/google/common/cache/LocalCache$ValueReference;

    .line 3438
    :goto_0
    return-void
.end method

.method public set(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 3415
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lccsancom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lccsancom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 3419
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lccsancom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lccsancom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3479
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingValueReference;, "Lccsancom/google/common/cache/LocalCache$LoadingValueReference<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingValueReference;->futureValue:Lccsancom/google/common/util/concurrent/SettableFuture;

    invoke-static {v0}, Lccsancom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
