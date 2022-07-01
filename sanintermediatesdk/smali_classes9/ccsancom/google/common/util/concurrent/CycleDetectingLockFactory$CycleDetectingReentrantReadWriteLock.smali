.class final Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;
.super Ljava/util/concurrent/locks/ReentrantReadWriteLock;
.source "CycleDetectingLockFactory.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CycleDetectingReentrantReadWriteLock"
.end annotation


# instance fields
.field private final lockGraphNode:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

.field private final readLock:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;

.field final synthetic this$0:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;

.field private final writeLock:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;


# direct methods
.method private constructor <init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Z)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;
    .param p2, "lockGraphNode"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .param p3, "fair"    # Z

    .line 821
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->this$0:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;

    .line 822
    invoke-direct {p0, p3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    .line 823
    new-instance v0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;

    invoke-direct {v0, p1, p0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;)V

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->readLock:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;

    .line 824
    new-instance v0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;

    invoke-direct {v0, p1, p0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;)V

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->writeLock:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;

    .line 825
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->lockGraphNode:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    .line 826
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;ZLccsancom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;
    .param p2, "x1"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$1;

    .line 809
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;Z)V

    return-void
.end method


# virtual methods
.method public getLockGraphNode()Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;
    .locals 1

    .line 844
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->lockGraphNode:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    return-object v0
.end method

.method public isAcquiredByCurrentThread()Z
    .locals 1

    .line 849
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->isWriteLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->getReadHoldCount()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic readLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 809
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    return-object v0
.end method

.method public readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 1

    .line 832
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->readLock:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadLock;

    return-object v0
.end method

.method public bridge synthetic writeLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 809
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    return-object v0
.end method

.method public writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;
    .locals 1

    .line 837
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;->writeLock:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantWriteLock;

    return-object v0
.end method
