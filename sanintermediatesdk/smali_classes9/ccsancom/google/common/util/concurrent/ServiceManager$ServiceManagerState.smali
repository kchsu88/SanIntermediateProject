.class final Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceManagerState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;,
        Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;
    }
.end annotation


# instance fields
.field final awaitHealthGuard:Lccsancom/google/common/util/concurrent/Monitor$Guard;

.field final listeners:Lccsancom/google/common/util/concurrent/ListenerCallQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ListenerCallQueue<",
            "Lccsancom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field final monitor:Lccsancom/google/common/util/concurrent/Monitor;

.field final numberOfServices:I

.field ready:Z

.field final servicesByState:Lccsancom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/SetMultimap<",
            "Lccsancom/google/common/util/concurrent/Service$State;",
            "Lccsancom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation
.end field

.field final startupTimers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/google/common/util/concurrent/Service;",
            "Lccsancom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field final states:Lccsancom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Multiset<",
            "Lccsancom/google/common/util/concurrent/Service$State;",
            ">;"
        }
    .end annotation
.end field

.field final stoppedGuard:Lccsancom/google/common/util/concurrent/Monitor$Guard;

.field transitioned:Z


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableCollection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "Lccsancom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .line 499
    .local p1, "services":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<Lccsancom/google/common/util/concurrent/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    new-instance v0, Lccsancom/google/common/util/concurrent/Monitor;

    invoke-direct {v0}, Lccsancom/google/common/util/concurrent/Monitor;-><init>()V

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    .line 420
    const-class v0, Lccsancom/google/common/util/concurrent/Service$State;

    .line 422
    invoke-static {v0}, Lccsancom/google/common/collect/MultimapBuilder;->enumKeys(Ljava/lang/Class;)Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/MultimapBuilder$MultimapBuilderWithKeys;->linkedHashSetValues()Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/MultimapBuilder$SetMultimapBuilder;->build()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lccsancom/google/common/collect/SetMultimap;

    .line 424
    nop

    .line 425
    invoke-interface {v0}, Lccsancom/google/common/collect/SetMultimap;->keys()Lccsancom/google/common/collect/Multiset;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    .line 427
    nop

    .line 428
    invoke-static {}, Lccsancom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    .line 455
    new-instance v1, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;

    invoke-direct {v1, p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;-><init>(Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    iput-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lccsancom/google/common/util/concurrent/Monitor$Guard;

    .line 475
    new-instance v1, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;

    invoke-direct {v1, p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;-><init>(Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    iput-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lccsancom/google/common/util/concurrent/Monitor$Guard;

    .line 491
    new-instance v1, Lccsancom/google/common/util/concurrent/ListenerCallQueue;

    invoke-direct {v1}, Lccsancom/google/common/util/concurrent/ListenerCallQueue;-><init>()V

    iput-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lccsancom/google/common/util/concurrent/ListenerCallQueue;

    .line 500
    invoke-virtual {p1}, Lccsancom/google/common/collect/ImmutableCollection;->size()I

    move-result v1

    iput v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    .line 501
    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->NEW:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1, p1}, Lccsancom/google/common/collect/SetMultimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    .line 502
    return-void
.end method


# virtual methods
.method addListener(Lccsancom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/common/util/concurrent/ServiceManager$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 549
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lccsancom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/util/concurrent/ListenerCallQueue;->addListener(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 550
    return-void
.end method

.method awaitHealthy()V
    .locals 2

    .line 553
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lccsancom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lccsancom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lccsancom/google/common/util/concurrent/Monitor$Guard;)V

    .line 555
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->checkHealthy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 558
    nop

    .line 559
    return-void

    .line 557
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 558
    throw v0
.end method

.method awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->enter()V

    .line 564
    :try_start_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthGuard:Lccsancom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lccsancom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lccsancom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->checkHealthy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 573
    nop

    .line 574
    return-void

    .line 565
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for the services to become healthy. The following services have not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lccsancom/google/common/collect/SetMultimap;

    sget-object v3, Lccsancom/google/common/util/concurrent/Service$State;->NEW:Lccsancom/google/common/util/concurrent/Service$State;

    sget-object v4, Lccsancom/google/common/util/concurrent/Service$State;->STARTING:Lccsancom/google/common/util/concurrent/Service$State;

    .line 568
    invoke-static {v3, v4}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/common/collect/Multimaps;->filterKeys(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 573
    throw v0
.end method

.method awaitStopped()V
    .locals 2

    .line 577
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lccsancom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1}, Lccsancom/google/common/util/concurrent/Monitor;->enterWhenUninterruptibly(Lccsancom/google/common/util/concurrent/Monitor$Guard;)V

    .line 578
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 579
    return-void
.end method

.method awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 582
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->enter()V

    .line 584
    :try_start_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->stoppedGuard:Lccsancom/google/common/util/concurrent/Monitor$Guard;

    invoke-virtual {v0, v1, p1, p2, p3}, Lccsancom/google/common/util/concurrent/Monitor;->waitForUninterruptibly(Lccsancom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 592
    nop

    .line 593
    return-void

    .line 585
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout waiting for the services to stop. The following services have not stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lccsancom/google/common/collect/SetMultimap;

    sget-object v3, Lccsancom/google/common/util/concurrent/Service$State;->TERMINATED:Lccsancom/google/common/util/concurrent/Service$State;

    sget-object v4, Lccsancom/google/common/util/concurrent/Service$State;->FAILED:Lccsancom/google/common/util/concurrent/Service$State;

    .line 588
    invoke-static {v3, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/common/base/Predicates;->not(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/common/collect/Multimaps;->filterKeys(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timeout":J
    .end local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 591
    .restart local p1    # "timeout":J
    .restart local p3    # "unit":Ljava/util/concurrent/TimeUnit;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 592
    throw v0
.end method

.method checkHealthy()V
    .locals 4

    .line 739
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->RUNNING:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v0, v1, :cond_0

    .line 746
    return-void

    .line 740
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to be healthy after starting. The following services are not running: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lccsancom/google/common/collect/SetMultimap;

    sget-object v3, Lccsancom/google/common/util/concurrent/Service$State;->RUNNING:Lccsancom/google/common/util/concurrent/Service$State;

    .line 743
    invoke-static {v3}, Lccsancom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lccsancom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v3}, Lccsancom/google/common/base/Predicates;->not(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/common/collect/Multimaps;->filterKeys(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, "exception":Ljava/lang/IllegalStateException;
    throw v0
.end method

.method dispatchListenerEvents()V
    .locals 2

    .line 731
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    .line 732
    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->isOccupiedByCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 731
    const-string v1, "It is incorrect to execute listeners with the monitor held."

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lccsancom/google/common/util/concurrent/ListenerCallQueue;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/ListenerCallQueue;->dispatch()V

    .line 735
    return-void
.end method

.method enqueueFailedEvent(Lccsancom/google/common/util/concurrent/Service;)V
    .locals 2
    .param p1, "service"    # Lccsancom/google/common/util/concurrent/Service;

    .line 715
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lccsancom/google/common/util/concurrent/ListenerCallQueue;

    new-instance v1, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;

    invoke-direct {v1, p0, p1}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$2;-><init>(Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;Lccsancom/google/common/util/concurrent/Service;)V

    invoke-virtual {v0, v1}, Lccsancom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 727
    return-void
.end method

.method enqueueHealthyEvent()V
    .locals 2

    .line 711
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lccsancom/google/common/util/concurrent/ListenerCallQueue;

    invoke-static {}, Lccsancom/google/common/util/concurrent/ServiceManager;->access$400()Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 712
    return-void
.end method

.method enqueueStoppedEvent()V
    .locals 2

    .line 707
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->listeners:Lccsancom/google/common/util/concurrent/ListenerCallQueue;

    invoke-static {}, Lccsancom/google/common/util/concurrent/ServiceManager;->access$300()Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/util/concurrent/ListenerCallQueue;->enqueue(Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;)V

    .line 708
    return-void
.end method

.method markReady()V
    .locals 5

    .line 525
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->enter()V

    .line 527
    :try_start_0
    iget-boolean v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitioned:Z

    if-nez v0, :cond_0

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 545
    nop

    .line 546
    return-void

    .line 532
    :cond_0
    :try_start_1
    invoke-static {}, Lccsancom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 533
    .local v0, "servicesInBadStates":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/common/util/concurrent/Service;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState()Lccsancom/google/common/collect/ImmutableMultimap;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableMultimap;->values()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableCollection;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/util/concurrent/Service;

    .line 534
    .local v2, "service":Lccsancom/google/common/util/concurrent/Service;
    invoke-interface {v2}, Lccsancom/google/common/util/concurrent/Service;->state()Lccsancom/google/common/util/concurrent/Service$State;

    move-result-object v3

    sget-object v4, Lccsancom/google/common/util/concurrent/Service$State;->NEW:Lccsancom/google/common/util/concurrent/Service$State;

    if-eq v3, v4, :cond_1

    .line 535
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    .end local v2    # "service":Lccsancom/google/common/util/concurrent/Service;
    :cond_1
    goto :goto_0

    .line 538
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Services started transitioning asynchronously before the ServiceManager was constructed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    .end local v0    # "servicesInBadStates":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/common/util/concurrent/Service;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 545
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method servicesByState()Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "Lccsancom/google/common/util/concurrent/Service$State;",
            "Lccsancom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .line 596
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSetMultimap;->builder()Lccsancom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 597
    .local v0, "builder":Lccsancom/google/common/collect/ImmutableSetMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableSetMultimap$Builder<Lccsancom/google/common/util/concurrent/Service$State;Lccsancom/google/common/util/concurrent/Service;>;"
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->enter()V

    .line 599
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lccsancom/google/common/collect/SetMultimap;

    invoke-interface {v1}, Lccsancom/google/common/collect/SetMultimap;->entries()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 600
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/util/concurrent/Service$State;Lccsancom/google/common/util/concurrent/Service;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lccsancom/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v3, :cond_0

    .line 601
    invoke-virtual {v0, v2}, Lccsancom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableSetMultimap$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/util/concurrent/Service$State;Lccsancom/google/common/util/concurrent/Service;>;"
    :cond_0
    goto :goto_0

    .line 605
    :cond_1
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 606
    nop

    .line 607
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lccsancom/google/common/collect/ImmutableSetMultimap;

    move-result-object v1

    return-object v1

    .line 605
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 606
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method startupTimes()Lccsancom/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Lccsancom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->enter()V

    .line 614
    :try_start_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lccsancom/google/common/collect/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 616
    .local v0, "loadTimes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lccsancom/google/common/util/concurrent/Service;Ljava/lang/Long;>;>;"
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 617
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/util/concurrent/Service;Lccsancom/google/common/base/Stopwatch;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/util/concurrent/Service;

    .line 618
    .local v3, "service":Lccsancom/google/common/util/concurrent/Service;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/base/Stopwatch;

    .line 619
    .local v4, "stopWatch":Lccsancom/google/common/base/Stopwatch;
    invoke-virtual {v4}, Lccsancom/google/common/base/Stopwatch;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, v3, Lccsancom/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v5, :cond_0

    .line 620
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5}, Lccsancom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/util/concurrent/Service;Lccsancom/google/common/base/Stopwatch;>;"
    .end local v3    # "service":Lccsancom/google/common/util/concurrent/Service;
    .end local v4    # "stopWatch":Lccsancom/google/common/base/Stopwatch;
    :cond_0
    goto :goto_0

    .line 624
    :cond_1
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 625
    nop

    .line 626
    nop

    .line 628
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    new-instance v2, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;

    invoke-direct {v2, p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$1;-><init>(Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V

    .line 629
    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/Ordering;->onResultOf(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    .line 626
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 636
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableMap;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1

    .line 624
    .end local v0    # "loadTimes":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Lccsancom/google/common/util/concurrent/Service;Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 625
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method transitionService(Lccsancom/google/common/util/concurrent/Service;Lccsancom/google/common/util/concurrent/Service$State;Lccsancom/google/common/util/concurrent/Service$State;)V
    .locals 7
    .param p1, "service"    # Lccsancom/google/common/util/concurrent/Service;
    .param p2, "from"    # Lccsancom/google/common/util/concurrent/Service$State;
    .param p3, "to"    # Lccsancom/google/common/util/concurrent/Service$State;

    .line 652
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 654
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v2}, Lccsancom/google/common/util/concurrent/Monitor;->enter()V

    .line 656
    :try_start_0
    iput-boolean v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->transitioned:Z

    .line 657
    iget-boolean v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 700
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 702
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->dispatchListenerEvents()V

    .line 658
    return-void

    .line 661
    :cond_1
    :try_start_1
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lccsancom/google/common/collect/SetMultimap;

    .line 662
    invoke-interface {v2, p2, p1}, Lccsancom/google/common/collect/SetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Service %s not at the expected location in the state map %s"

    .line 661
    invoke-static {v2, v3, p1, p2}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 666
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState:Lccsancom/google/common/collect/SetMultimap;

    .line 667
    invoke-interface {v2, p3, p1}, Lccsancom/google/common/collect/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Service %s in the state map unexpectedly at %s"

    .line 666
    invoke-static {v2, v3, p1, p3}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 672
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/base/Stopwatch;

    .line 673
    .local v2, "stopwatch":Lccsancom/google/common/base/Stopwatch;
    if-nez v2, :cond_2

    .line 675
    invoke-static {}, Lccsancom/google/common/base/Stopwatch;->createStarted()Lccsancom/google/common/base/Stopwatch;

    move-result-object v3

    move-object v2, v3

    .line 676
    iget-object v3, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :cond_2
    sget-object v3, Lccsancom/google/common/util/concurrent/Service$State;->RUNNING:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-virtual {p3, v3}, Lccsancom/google/common/util/concurrent/Service$State;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v2}, Lccsancom/google/common/base/Stopwatch;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 680
    invoke-virtual {v2}, Lccsancom/google/common/base/Stopwatch;->stop()Lccsancom/google/common/base/Stopwatch;

    .line 681
    instance-of v3, p1, Lccsancom/google/common/util/concurrent/ServiceManager$NoOpService;

    if-nez v3, :cond_3

    .line 682
    invoke-static {}, Lccsancom/google/common/util/concurrent/ServiceManager;->access$200()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Started {0} in {1}."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    aput-object v2, v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    :cond_3
    sget-object v0, Lccsancom/google/common/util/concurrent/Service$State;->FAILED:Lccsancom/google/common/util/concurrent/Service$State;

    if-ne p3, v0, :cond_4

    .line 689
    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->enqueueFailedEvent(Lccsancom/google/common/util/concurrent/Service;)V

    .line 692
    :cond_4
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->RUNNING:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v0, v1, :cond_5

    .line 695
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->enqueueHealthyEvent()V

    goto :goto_1

    .line 696
    :cond_5
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->TERMINATED:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v3, Lccsancom/google/common/util/concurrent/Service$State;->FAILED:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v3}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v0, v1, :cond_6

    .line 697
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->enqueueStoppedEvent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    .end local v2    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    :cond_6
    :goto_1
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 702
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->dispatchListenerEvents()V

    .line 703
    nop

    .line 704
    return-void

    .line 700
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 702
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->dispatchListenerEvents()V

    .line 703
    throw v0
.end method

.method tryStartTiming(Lccsancom/google/common/util/concurrent/Service;)V
    .locals 3
    .param p1, "service"    # Lccsancom/google/common/util/concurrent/Service;

    .line 509
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->enter()V

    .line 511
    :try_start_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Stopwatch;

    .line 512
    .local v0, "stopwatch":Lccsancom/google/common/base/Stopwatch;
    if-nez v0, :cond_0

    .line 513
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimers:Ljava/util/Map;

    invoke-static {}, Lccsancom/google/common/base/Stopwatch;->createStarted()Lccsancom/google/common/base/Stopwatch;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    .end local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 517
    nop

    .line 518
    return-void

    .line 516
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/Monitor;->leave()V

    .line 517
    throw v0
.end method
