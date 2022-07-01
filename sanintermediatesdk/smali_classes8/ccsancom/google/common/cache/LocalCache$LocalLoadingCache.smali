.class Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;
.super Lccsancom/google/common/cache/LocalCache$LocalManualCache;
.source "LocalCache.java"

# interfaces
.implements Lccsancom/google/common/cache/LoadingCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalLoadingCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/LocalCache$LocalManualCache<",
        "TK;TV;>;",
        "Lccsancom/google/common/cache/LoadingCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/CacheBuilder;Lccsancom/google/common/cache/CacheLoader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "-TK;-TV;>;",
            "Lccsancom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 4793
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;, "Lccsancom/google/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "builder":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<-TK;-TV;>;"
    .local p2, "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    new-instance v0, Lccsancom/google/common/cache/LocalCache;

    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/cache/CacheLoader;

    invoke-direct {v0, p1, v1}, Lccsancom/google/common/cache/LocalCache;-><init>(Lccsancom/google/common/cache/CacheBuilder;Lccsancom/google/common/cache/CacheLoader;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lccsancom/google/common/cache/LocalCache;Lccsancom/google/common/cache/LocalCache$1;)V

    .line 4794
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 4824
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;, "Lccsancom/google/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4800
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;, "Lccsancom/google/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/LocalCache;->getOrLoad(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4814
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;, "Lccsancom/google/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/LocalCache;->getAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 4806
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;, "Lccsancom/google/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4807
    :catch_0
    move-exception v0

    .line 4808
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Lccsancom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 4819
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;, "Lccsancom/google/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/LocalCache;->refresh(Ljava/lang/Object;)V

    .line 4820
    return-void
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 4833
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;, "Lccsancom/google/common/cache/LocalCache$LocalLoadingCache<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;-><init>(Lccsancom/google/common/cache/LocalCache;)V

    return-object v0
.end method
