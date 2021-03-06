.class Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
.super Ljava/lang/Object;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockGraphNode"
.end annotation


# instance fields
.field final allowedPriorLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;",
            ">;"
        }
    .end annotation
.end field

.field final disallowedPriorLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;",
            ">;"
        }
    .end annotation
.end field

.field final lockName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "lockName"    # Ljava/lang/String;

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Lccsancom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMaker;-><init>()V

    .line 582
    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMaker;->weakKeys()Lccsancom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    .line 588
    new-instance v0, Lccsancom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMaker;-><init>()V

    .line 589
    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMaker;->weakKeys()Lccsancom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->disallowedPriorLocks:Ljava/util/Map;

    .line 594
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->lockName:Ljava/lang/String;

    .line 595
    return-void
.end method

.method private findPathTo(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Ljava/util/Set;)Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    .locals 5
    .param p1, "node"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            "Ljava/util/Set<",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;)",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 679
    .local p2, "seen":Ljava/util/Set;, "Ljava/util/Set<Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 680
    return-object v1

    .line 682
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    .line 683
    .local v0, "found":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    if-eqz v0, :cond_1

    .line 684
    return-object v0

    .line 687
    :cond_1
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 688
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    .line 689
    .local v4, "preAcquiredLock":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    invoke-direct {v4, p1, p2}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->findPathTo(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Ljava/util/Set;)Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_2

    .line 694
    new-instance v1, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-direct {v1, v4, p0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    .line 695
    .local v1, "path":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-virtual {v2}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 696
    invoke-virtual {v1, v0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 697
    return-object v1

    .line 699
    .end local v1    # "path":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;>;"
    .end local v4    # "preAcquiredLock":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    :cond_2
    goto :goto_0

    .line 700
    :cond_3
    return-object v1
.end method


# virtual methods
.method checkAcquiredLock(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V
    .locals 5
    .param p1, "policy"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .param p2, "acquiredLock"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    .line 623
    if-eq p0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 626
    :goto_0
    invoke-virtual {p2}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->getLockName()Ljava/lang/String;

    move-result-object v1

    .line 623
    const-string v2, "Attempted to acquire multiple locks with the same rank %s"

    invoke-static {v0, v2, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->disallowedPriorLocks:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    .line 635
    .local v0, "previousDeadlockException":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 639
    new-instance v2, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    .line 641
    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;->getConflictingStackTrace()Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    move-result-object v3

    invoke-direct {v2, p2, p0, v3, v1}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    move-object v1, v2

    .line 642
    .local v1, "exception":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
    invoke-interface {p1, v1}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    .line 643
    return-void

    .line 647
    .end local v1    # "exception":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
    :cond_2
    invoke-static {}, Lccsancom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v2

    .line 648
    .local v2, "seen":Ljava/util/Set;, "Ljava/util/Set<Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    invoke-direct {p2, p0, v2}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->findPathTo(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Ljava/util/Set;)Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    move-result-object v3

    .line 650
    .local v3, "path":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    if-nez v3, :cond_3

    .line 659
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->allowedPriorLocks:Ljava/util/Map;

    new-instance v4, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;

    invoke-direct {v4, p2, p0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    invoke-interface {v1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 663
    :cond_3
    new-instance v4, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;

    invoke-direct {v4, p2, p0, v3, v1}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    move-object v1, v4

    .line 665
    .restart local v1    # "exception":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
    iget-object v4, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->disallowedPriorLocks:Ljava/util/Map;

    invoke-interface {v4, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    invoke-interface {p1, v1}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;->handlePotentialDeadlock(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;)V

    .line 668
    .end local v1    # "exception":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;
    :goto_1
    return-void
.end method

.method checkAcquiredLocks(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/List;)V
    .locals 3
    .param p1, "policy"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;",
            "Ljava/util/List<",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;)V"
        }
    .end annotation

    .line 602
    .local p2, "acquiredLocks":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 603
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    invoke-virtual {p0, p1, v2}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->checkAcquiredLock(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;)V

    .line 602
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method getLockName()Ljava/lang/String;
    .locals 1

    .line 598
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;->lockName:Ljava/lang/String;

    return-object v0
.end method
