.class Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;
.super Lccsancom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Lccsancom/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Synchronized$SynchronizedCollection<",
        "TE;>;",
        "Lccsancom/google/common/collect/Multiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 1
    .param p2, "mutex"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multiset<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 428
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/Multiset;, "Lccsancom/google/common/collect/Multiset<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lccsancom/google/common/collect/Synchronized$1;)V

    .line 429
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 445
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 447
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 438
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method delegate()Lccsancom/google/common/collect/Multiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 433
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Multiset;

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 422
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 422
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 473
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 475
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    .line 477
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 478
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 483
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 485
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    .line 487
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 493
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    if-ne p1, p0, :cond_0

    .line 494
    const/4 v0, 0x1

    return v0

    .line 496
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1}, Lccsancom/google/common/collect/Multiset;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 498
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    .line 503
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 505
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "n"    # I

    .line 452
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 459
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lccsancom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 2
    .param p2, "oldCount"    # I
    .param p3, "newCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 466
    .local p0, "this":Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;, "Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lccsancom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
