.class public final Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;
.super Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;
.source "CycleDetectingLockFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithExplicitOrdering"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;"
    }
.end annotation


# instance fields
.field private final lockGraphNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Ljava/util/Map;)V
    .locals 1
    .param p1, "policy"    # Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;",
            "Ljava/util/Map<",
            "TE;",
            "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p0, "this":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;, "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering<TE;>;"
    .local p2, "lockGraphNodes":Ljava/util/Map;, "Ljava/util/Map<TE;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    .line 401
    iput-object p2, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;->lockGraphNodes:Ljava/util/Map;

    .line 402
    return-void
.end method


# virtual methods
.method public newReentrantLock(Ljava/lang/Enum;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/concurrent/locks/ReentrantLock;"
        }
    .end annotation

    .line 406
    .local p0, "this":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;, "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering<TE;>;"
    .local p1, "rank":Ljava/lang/Enum;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;->newReentrantLock(Ljava/lang/Enum;Z)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    return-object v0
.end method

.method public newReentrantLock(Ljava/lang/Enum;Z)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 3
    .param p2, "fair"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/concurrent/locks/ReentrantLock;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;, "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering<TE;>;"
    .local p1, "rank":Ljava/lang/Enum;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;->policy:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    sget-object v1, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;->lockGraphNodes:Ljava/util/Map;

    .line 420
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantLock;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;ZLccsancom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    .line 418
    :goto_0
    return-object v0
.end method

.method public newReentrantReadWriteLock(Ljava/lang/Enum;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;"
        }
    .end annotation

    .line 425
    .local p0, "this":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;, "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering<TE;>;"
    .local p1, "rank":Ljava/lang/Enum;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;->newReentrantReadWriteLock(Ljava/lang/Enum;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    return-object v0
.end method

.method public newReentrantReadWriteLock(Ljava/lang/Enum;Z)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 3
    .param p2, "fair"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/concurrent/locks/ReentrantReadWriteLock;"
        }
    .end annotation

    .line 437
    .local p0, "this":Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;, "Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering<TE;>;"
    .local p1, "rank":Ljava/lang/Enum;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;->policy:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policy;

    sget-object v1, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;->DISABLED:Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0, p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$WithExplicitOrdering;->lockGraphNodes:Ljava/util/Map;

    .line 439
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p2, v2}, Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$CycleDetectingReentrantReadWriteLock;-><init>(Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory;Lccsancom/google/common/util/concurrent/CycleDetectingLockFactory$LockGraphNode;ZLccsancom/google/common/util/concurrent/CycleDetectingLockFactory$1;)V

    .line 437
    :goto_0
    return-object v0
.end method
