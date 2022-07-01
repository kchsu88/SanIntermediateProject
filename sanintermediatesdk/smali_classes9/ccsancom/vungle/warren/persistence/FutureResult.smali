.class public Lccsancom/vungle/warren/persistence/FutureResult;
.super Ljava/lang/Object;
.source "FutureResult.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lccsancom/vungle/warren/persistence/FutureResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/persistence/FutureResult;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lccsancom/vungle/warren/persistence/FutureResult;, "Lccsancom/vungle/warren/persistence/FutureResult<TT;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lccsancom/vungle/warren/persistence/FutureResult;->future:Ljava/util/concurrent/Future;

    .line 23
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 27
    .local p0, "this":Lccsancom/vungle/warren/persistence/FutureResult;, "Lccsancom/vungle/warren/persistence/FutureResult<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FutureResult;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    .local p0, "this":Lccsancom/vungle/warren/persistence/FutureResult;, "Lccsancom/vungle/warren/persistence/FutureResult<TT;>;"
    const/4 v0, 0x0

    .line 46
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/FutureResult;->future:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 53
    :goto_0
    goto :goto_1

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lccsancom/vungle/warren/persistence/FutureResult;->TAG:Ljava/lang/String;

    const-string v3, "error on execution"

    invoke-static {v2, v3, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 47
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lccsancom/vungle/warren/persistence/FutureResult;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "future.get() Interrupted on Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 55
    :goto_1
    return-object v0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lccsancom/vungle/warren/persistence/FutureResult;, "Lccsancom/vungle/warren/persistence/FutureResult<TT;>;"
    const/4 v0, 0x0

    .line 64
    .local v0, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lccsancom/vungle/warren/persistence/FutureResult;->future:Ljava/util/concurrent/Future;

    invoke-interface {v1, p1, p2, p3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 74
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    sget-object v2, Lccsancom/vungle/warren/persistence/FutureResult;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "future.get() Timeout on Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 68
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v1

    .line 69
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    sget-object v2, Lccsancom/vungle/warren/persistence/FutureResult;->TAG:Ljava/lang/String;

    const-string v3, "error on execution"

    invoke-static {v2, v3, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 65
    :catch_2
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/InterruptedException;
    sget-object v2, Lccsancom/vungle/warren/persistence/FutureResult;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "future.get() Interrupted on Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 76
    :goto_1
    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .line 32
    .local p0, "this":Lccsancom/vungle/warren/persistence/FutureResult;, "Lccsancom/vungle/warren/persistence/FutureResult<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FutureResult;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .line 37
    .local p0, "this":Lccsancom/vungle/warren/persistence/FutureResult;, "Lccsancom/vungle/warren/persistence/FutureResult<TT;>;"
    iget-object v0, p0, Lccsancom/vungle/warren/persistence/FutureResult;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    return v0
.end method
