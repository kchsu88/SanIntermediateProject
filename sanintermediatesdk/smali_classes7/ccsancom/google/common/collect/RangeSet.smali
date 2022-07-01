.class public interface abstract Lccsancom/google/common/collect/RangeSet;
.super Ljava/lang/Object;
.source "RangeSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Lccsancom/google/common/collect/Range;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addAll(Lccsancom/google/common/collect/RangeSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract addAll(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation
.end method

.method public abstract asDescendingSetOfRanges()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end method

.method public abstract asRanges()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract complement()Lccsancom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract contains(Ljava/lang/Comparable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method public abstract encloses(Lccsancom/google/common/collect/Range;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation
.end method

.method public abstract enclosesAll(Lccsancom/google/common/collect/RangeSet;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;)Z"
        }
    .end annotation
.end method

.method public abstract enclosesAll(Ljava/lang/Iterable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)Z"
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
.end method

.method public abstract hashCode()I
.end method

.method public abstract intersects(Lccsancom/google/common/collect/Range;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract rangeContaining(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract remove(Lccsancom/google/common/collect/Range;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeAll(Lccsancom/google/common/collect/RangeSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation
.end method

.method public abstract removeAll(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation
.end method

.method public abstract span()Lccsancom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract subRangeSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)",
            "Lccsancom/google/common/collect/RangeSet<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
