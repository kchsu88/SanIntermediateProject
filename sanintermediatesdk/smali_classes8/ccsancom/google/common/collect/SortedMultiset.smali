.class public interface abstract Lccsancom/google/common/collect/SortedMultiset;
.super Ljava/lang/Object;
.source "SortedMultiset.java"

# interfaces
.implements Lccsancom/google/common/collect/SortedMultisetBridge;
.implements Lccsancom/google/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/SortedMultisetBridge<",
        "TE;>;",
        "Lccsancom/google/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract comparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end method

.method public abstract descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract elementSet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public abstract firstEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract lastEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract pollFirstEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract pollLastEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract subMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            "TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method
