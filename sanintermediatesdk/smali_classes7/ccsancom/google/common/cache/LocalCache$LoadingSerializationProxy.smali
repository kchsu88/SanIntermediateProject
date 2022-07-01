.class final Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;
.super Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;
.source "LocalCache.java"

# interfaces
.implements Lccsancom/google/common/cache/LoadingCache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LoadingSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy<",
        "TK;TV;>;",
        "Lccsancom/google/common/cache/LoadingCache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient autoDelegate:Lccsancom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/LoadingCache<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/LocalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4652
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "cache":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lccsancom/google/common/cache/LocalCache;)V

    .line 4653
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4656
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4657
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;->recreateCacheBuilder()Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4658
    .local v0, "builder":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;->loader:Lccsancom/google/common/cache/CacheLoader;

    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/CacheBuilder;->build(Lccsancom/google/common/cache/CacheLoader;)Lccsancom/google/common/cache/LoadingCache;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lccsancom/google/common/cache/LoadingCache;

    .line 4659
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 4687
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lccsancom/google/common/cache/LoadingCache;

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 4678
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lccsancom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lccsancom/google/common/cache/LoadingCache;->apply(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 4663
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lccsancom/google/common/cache/LoadingCache;

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

    .line 4673
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lccsancom/google/common/cache/LoadingCache;

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

    .line 4668
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lccsancom/google/common/cache/LoadingCache;

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

    .line 4683
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;->autoDelegate:Lccsancom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lccsancom/google/common/cache/LoadingCache;->refresh(Ljava/lang/Object;)V

    .line 4684
    return-void
.end method
