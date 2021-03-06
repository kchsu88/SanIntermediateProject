.class public final Lccsancom/google/common/util/concurrent/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;,
        Lccsancom/google/common/util/concurrent/ServiceManager$NoOpService;,
        Lccsancom/google/common/util/concurrent/ServiceManager$ServiceListener;,
        Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;,
        Lccsancom/google/common/util/concurrent/ServiceManager$Listener;
    }
.end annotation


# static fields
.field private static final HEALTHY_EVENT:Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lccsancom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final STOPPED_EVENT:Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event<",
            "Lccsancom/google/common/util/concurrent/ServiceManager$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final services:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation
.end field

.field private final state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    const-class v0, Lccsancom/google/common/util/concurrent/ServiceManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    .line 126
    new-instance v0, Lccsancom/google/common/util/concurrent/ServiceManager$1;

    invoke-direct {v0}, Lccsancom/google/common/util/concurrent/ServiceManager$1;-><init>()V

    sput-object v0, Lccsancom/google/common/util/concurrent/ServiceManager;->HEALTHY_EVENT:Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;

    .line 138
    new-instance v0, Lccsancom/google/common/util/concurrent/ServiceManager$2;

    invoke-direct {v0}, Lccsancom/google/common/util/concurrent/ServiceManager$2;-><init>()V

    sput-object v0, Lccsancom/google/common/util/concurrent/ServiceManager;->STOPPED_EVENT:Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/util/concurrent/Service;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "services":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/util/concurrent/Service;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 206
    .local v0, "copy":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/util/concurrent/Service;>;"
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v1, Lccsancom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Lccsancom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lccsancom/google/common/util/concurrent/ServiceManager$EmptyServiceManagerWarning;-><init>(Lccsancom/google/common/util/concurrent/ServiceManager$1;)V

    const-string v5, "ServiceManager configured with no services.  Is your application configured properly?"

    invoke-virtual {v1, v2, v5, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    new-instance v1, Lccsancom/google/common/util/concurrent/ServiceManager$NoOpService;

    invoke-direct {v1, v4}, Lccsancom/google/common/util/concurrent/ServiceManager$NoOpService;-><init>(Lccsancom/google/common/util/concurrent/ServiceManager$1;)V

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 215
    :cond_0
    new-instance v1, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-direct {v1, v0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;-><init>(Lccsancom/google/common/collect/ImmutableCollection;)V

    iput-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 216
    iput-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->services:Lccsancom/google/common/collect/ImmutableList;

    .line 217
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    .line 218
    .local v1, "stateReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;>;"
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/util/concurrent/Service;

    .line 219
    .local v3, "service":Lccsancom/google/common/util/concurrent/Service;
    new-instance v4, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceListener;

    invoke-direct {v4, v3, v1}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceListener;-><init>(Lccsancom/google/common/util/concurrent/Service;Ljava/lang/ref/WeakReference;)V

    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lccsancom/google/common/util/concurrent/Service;->addListener(Lccsancom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 222
    invoke-interface {v3}, Lccsancom/google/common/util/concurrent/Service;->state()Lccsancom/google/common/util/concurrent/Service$State;

    move-result-object v4

    sget-object v5, Lccsancom/google/common/util/concurrent/Service$State;->NEW:Lccsancom/google/common/util/concurrent/Service$State;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const-string v5, "Can only manage NEW services, %s"

    invoke-static {v4, v5, v3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 223
    .end local v3    # "service":Lccsancom/google/common/util/concurrent/Service;
    goto :goto_0

    .line 226
    :cond_2
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v2}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->markReady()V

    .line 227
    return-void
.end method

.method static synthetic access$200()Ljava/util/logging/Logger;
    .locals 1

    .line 124
    sget-object v0, Lccsancom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$300()Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1

    .line 124
    sget-object v0, Lccsancom/google/common/util/concurrent/ServiceManager;->STOPPED_EVENT:Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-object v0
.end method

.method static synthetic access$400()Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;
    .locals 1

    .line 124
    sget-object v0, Lccsancom/google/common/util/concurrent/ServiceManager;->HEALTHY_EVENT:Lccsancom/google/common/util/concurrent/ListenerCallQueue$Event;

    return-object v0
.end method


# virtual methods
.method public addListener(Lccsancom/google/common/util/concurrent/ServiceManager$Listener;)V
    .locals 2
    .param p1, "listener"    # Lccsancom/google/common/util/concurrent/ServiceManager$Listener;

    .line 273
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lccsancom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 274
    return-void
.end method

.method public addListener(Lccsancom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/common/util/concurrent/ServiceManager$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 253
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->addListener(Lccsancom/google/common/util/concurrent/ServiceManager$Listener;Ljava/util/concurrent/Executor;)V

    .line 254
    return-void
.end method

.method public awaitHealthy()V
    .locals 1

    .line 314
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy()V

    .line 315
    return-void
.end method

.method public awaitHealthy(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitHealthy(JLjava/util/concurrent/TimeUnit;)V

    .line 331
    return-void
.end method

.method public awaitStopped()V
    .locals 1

    .line 353
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped()V

    .line 354
    return-void
.end method

.method public awaitStopped(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->awaitStopped(JLjava/util/concurrent/TimeUnit;)V

    .line 368
    return-void
.end method

.method public isHealthy()Z
    .locals 3

    .line 377
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->services:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/util/concurrent/Service;

    .line 378
    .local v1, "service":Lccsancom/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lccsancom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    const/4 v0, 0x0

    return v0

    .line 381
    .end local v1    # "service":Lccsancom/google/common/util/concurrent/Service;
    :cond_0
    goto :goto_0

    .line 382
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public servicesByState()Lccsancom/google/common/collect/ImmutableMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "Lccsancom/google/common/util/concurrent/Service$State;",
            "Lccsancom/google/common/util/concurrent/Service;",
            ">;"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->servicesByState()Lccsancom/google/common/collect/ImmutableMultimap;

    move-result-object v0

    return-object v0
.end method

.method public startAsync()Lccsancom/google/common/util/concurrent/ServiceManager;
    .locals 7

    .line 286
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->services:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/util/concurrent/Service;

    .line 287
    .local v1, "service":Lccsancom/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lccsancom/google/common/util/concurrent/Service;->state()Lccsancom/google/common/util/concurrent/Service$State;

    move-result-object v2

    .line 288
    .local v2, "state":Lccsancom/google/common/util/concurrent/Service$State;
    sget-object v3, Lccsancom/google/common/util/concurrent/Service$State;->NEW:Lccsancom/google/common/util/concurrent/Service$State;

    if-ne v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    const-string v4, "Service %s is %s, cannot start it."

    invoke-static {v3, v4, v1, v2}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    .end local v1    # "service":Lccsancom/google/common/util/concurrent/Service;
    .end local v2    # "state":Lccsancom/google/common/util/concurrent/Service$State;
    goto :goto_0

    .line 290
    :cond_1
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->services:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/util/concurrent/Service;

    .line 292
    .restart local v1    # "service":Lccsancom/google/common/util/concurrent/Service;
    :try_start_0
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v2, v1}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->tryStartTiming(Lccsancom/google/common/util/concurrent/Service;)V

    .line 293
    invoke-interface {v1}, Lccsancom/google/common/util/concurrent/Service;->startAsync()Lccsancom/google/common/util/concurrent/Service;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_3

    .line 294
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lccsancom/google/common/util/concurrent/ServiceManager;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to start Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    .end local v1    # "service":Lccsancom/google/common/util/concurrent/Service;
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_3
    goto :goto_2

    .line 302
    :cond_2
    return-object p0
.end method

.method public startupTimes()Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Lccsancom/google/common/util/concurrent/Service;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->state:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->startupTimes()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public stopAsync()Lccsancom/google/common/util/concurrent/ServiceManager;
    .locals 2

    .line 341
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->services:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/util/concurrent/Service;

    .line 342
    .local v1, "service":Lccsancom/google/common/util/concurrent/Service;
    invoke-interface {v1}, Lccsancom/google/common/util/concurrent/Service;->stopAsync()Lccsancom/google/common/util/concurrent/Service;

    .line 343
    .end local v1    # "service":Lccsancom/google/common/util/concurrent/Service;
    goto :goto_0

    .line 344
    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 408
    const-class v0, Lccsancom/google/common/util/concurrent/ServiceManager;

    invoke-static {v0}, Lccsancom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager;->services:Lccsancom/google/common/collect/ImmutableList;

    const-class v2, Lccsancom/google/common/util/concurrent/ServiceManager$NoOpService;

    .line 409
    invoke-static {v2}, Lccsancom/google/common/base/Predicates;->instanceOf(Ljava/lang/Class;)Lccsancom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/common/base/Predicates;->not(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Collections2;->filter(Ljava/util/Collection;Lccsancom/google/common/base/Predicate;)Ljava/util/Collection;

    move-result-object v1

    const-string v2, "services"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    return-object v0
.end method
