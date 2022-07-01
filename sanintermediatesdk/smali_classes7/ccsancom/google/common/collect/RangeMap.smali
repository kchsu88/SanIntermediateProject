.class public interface abstract Lccsancom/google/common/collect/RangeMap;
.super Ljava/lang/Object;
.source "RangeMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract asDescendingMapOfRanges()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation
.end method

.method public abstract asMapOfRanges()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
.end method

.method public abstract get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method public abstract getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method public abstract hashCode()I
.end method

.method public abstract put(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation
.end method

.method public abstract putAll(Lccsancom/google/common/collect/RangeMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation
.end method

.method public abstract putCoalescing(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation
.end method

.method public abstract remove(Lccsancom/google/common/collect/Range;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation
.end method

.method public abstract span()Lccsancom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation
.end method

.method public abstract subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/RangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;)",
            "Lccsancom/google/common/collect/RangeMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
