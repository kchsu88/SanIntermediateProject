.class final Lccsancom/google/common/cache/CacheLoader$1;
.super Lccsancom/google/common/cache/CacheLoader;
.source "CacheLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/cache/CacheLoader;->asyncReloading(Lccsancom/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)Lccsancom/google/common/cache/CacheLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/cache/CacheLoader<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$loader:Lccsancom/google/common/cache/CacheLoader;


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/CacheLoader;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lccsancom/google/common/cache/CacheLoader$1;->val$loader:Lccsancom/google/common/cache/CacheLoader;

    iput-object p2, p0, Lccsancom/google/common/cache/CacheLoader$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lccsancom/google/common/cache/CacheLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 189
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheLoader$1;->val$loader:Lccsancom/google/common/cache/CacheLoader;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/CacheLoader;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheLoader$1;->val$loader:Lccsancom/google/common/cache/CacheLoader;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public reload(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/cache/CacheLoader$1$1;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/google/common/cache/CacheLoader$1$1;-><init>(Lccsancom/google/common/cache/CacheLoader$1;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    invoke-static {v0}, Lccsancom/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lccsancom/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v0

    .line 202
    .local v0, "task":Lccsancom/google/common/util/concurrent/ListenableFutureTask;, "Lccsancom/google/common/util/concurrent/ListenableFutureTask<TV;>;"
    iget-object v1, p0, Lccsancom/google/common/cache/CacheLoader$1;->val$executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 203
    return-object v0
.end method
