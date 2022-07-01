.class Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;
.super Lccsancom/google/common/collect/ForwardingMultimap;
.source "Multimaps.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lccsancom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient keys:Lccsancom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Multimap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 549
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMultimap;-><init>()V

    .line 550
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Multimap;

    iput-object v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lccsancom/google/common/collect/Multimap;

    .line 551
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    .line 566
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    if-nez v0, :cond_0

    .line 567
    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lccsancom/google/common/collect/Multimap;

    .line 571
    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap$1;

    invoke-direct {v2, p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap$1;-><init>(Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;)V

    .line 570
    invoke-static {v1, v2}, Lccsancom/google/common/collect/Maps;->transformValues(Ljava/util/Map;Lccsancom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    .line 569
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->map:Ljava/util/Map;

    move-object v0, v1

    .line 579
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 560
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected delegate()Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 555
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lccsancom/google/common/collect/Multimap;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 540
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate()Lccsancom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 584
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 585
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez v0, :cond_0

    .line 586
    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Multimaps;->access$100(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->entries:Ljava/util/Collection;

    .line 588
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 593
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Multimaps;->access$000(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 607
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 608
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_0

    .line 609
    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->keySet:Ljava/util/Set;

    .line 611
    :cond_0
    return-object v0
.end method

.method public keys()Lccsancom/google/common/collect/Multiset;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 598
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lccsancom/google/common/collect/Multiset;

    .line 599
    .local v0, "result":Lccsancom/google/common/collect/Multiset;, "Lccsancom/google/common/collect/Multiset<TK;>;"
    if-nez v0, :cond_0

    .line 600
    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->keys()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Multisets;->unmodifiableMultiset(Lccsancom/google/common/collect/Multiset;)Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->keys:Lccsancom/google/common/collect/Multiset;

    .line 602
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 616
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lccsancom/google/common/collect/Multimap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 626
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 621
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 631
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 636
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 641
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 646
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 647
    .local v0, "result":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    .line 648
    iget-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->delegate:Lccsancom/google/common/collect/Multimap;

    invoke-interface {v1}, Lccsancom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    move-object v0, v1

    iput-object v1, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;->values:Ljava/util/Collection;

    .line 650
    :cond_0
    return-object v0
.end method
