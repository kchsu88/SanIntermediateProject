.class public abstract Lccsancom/google/common/cache/ForwardingLoadingCache;
.super Lccsancom/google/common/cache/ForwardingCache;
.source "ForwardingLoadingCache.java"

# interfaces
.implements Lccsancom/google/common/cache/LoadingCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/cache/ForwardingLoadingCache$SimpleForwardingLoadingCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/ForwardingCache<",
        "TK;TV;>;",
        "Lccsancom/google/common/cache/LoadingCache<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lccsancom/google/common/cache/ForwardingLoadingCache;, "Lccsancom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/cache/ForwardingCache;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lccsancom/google/common/cache/ForwardingLoadingCache;, "Lccsancom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/ForwardingLoadingCache;->delegate()Lccsancom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/cache/LoadingCache;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lccsancom/google/common/cache/Cache;
    .locals 1

    .line 33
    .local p0, "this":Lccsancom/google/common/cache/ForwardingLoadingCache;, "Lccsancom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/ForwardingLoadingCache;->delegate()Lccsancom/google/common/cache/LoadingCache;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lccsancom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/LoadingCache<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 33
    .local p0, "this":Lccsancom/google/common/cache/ForwardingLoadingCache;, "Lccsancom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/ForwardingLoadingCache;->delegate()Lccsancom/google/common/cache/LoadingCache;

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

    .line 45
    .local p0, "this":Lccsancom/google/common/cache/ForwardingLoadingCache;, "Lccsancom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/ForwardingLoadingCache;->delegate()Lccsancom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/cache/LoadingCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 55
    .local p0, "this":Lccsancom/google/common/cache/ForwardingLoadingCache;, "Lccsancom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/ForwardingLoadingCache;->delegate()Lccsancom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/cache/LoadingCache;->getAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lccsancom/google/common/cache/ForwardingLoadingCache;, "Lccsancom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/ForwardingLoadingCache;->delegate()Lccsancom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public refresh(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lccsancom/google/common/cache/ForwardingLoadingCache;, "Lccsancom/google/common/cache/ForwardingLoadingCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/ForwardingLoadingCache;->delegate()Lccsancom/google/common/cache/LoadingCache;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/cache/LoadingCache;->refresh(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
