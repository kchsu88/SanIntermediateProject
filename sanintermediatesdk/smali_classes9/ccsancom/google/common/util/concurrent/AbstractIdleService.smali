.class public abstract Lccsancom/google/common/util/concurrent/AbstractIdleService;
.super Ljava/lang/Object;
.source "AbstractIdleService.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/AbstractIdleService$DelegateService;,
        Lccsancom/google/common/util/concurrent/AbstractIdleService$ThreadNameSupplier;
    }
.end annotation


# instance fields
.field private final delegate:Lccsancom/google/common/util/concurrent/Service;

.field private final threadNameSupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lccsancom/google/common/util/concurrent/AbstractIdleService$ThreadNameSupplier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/util/concurrent/AbstractIdleService$ThreadNameSupplier;-><init>(Lccsancom/google/common/util/concurrent/AbstractIdleService;Lccsancom/google/common/util/concurrent/AbstractIdleService$1;)V

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->threadNameSupplier:Lccsancom/google/common/base/Supplier;

    .line 50
    new-instance v0, Lccsancom/google/common/util/concurrent/AbstractIdleService$DelegateService;

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/util/concurrent/AbstractIdleService$DelegateService;-><init>(Lccsancom/google/common/util/concurrent/AbstractIdleService;Lccsancom/google/common/util/concurrent/AbstractIdleService$1;)V

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    .line 95
    return-void
.end method

.method static synthetic access$200(Lccsancom/google/common/util/concurrent/AbstractIdleService;)Lccsancom/google/common/base/Supplier;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/AbstractIdleService;

    .line 36
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->threadNameSupplier:Lccsancom/google/common/base/Supplier;

    return-object v0
.end method


# virtual methods
.method public final addListener(Lccsancom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Lccsancom/google/common/util/concurrent/Service$Listener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 137
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/util/concurrent/Service;->addListener(Lccsancom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    .line 138
    return-void
.end method

.method public final awaitRunning()V
    .locals 1

    .line 165
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/Service;->awaitRunning()V

    .line 166
    return-void
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/Service;->awaitRunning(JLjava/util/concurrent/TimeUnit;)V

    .line 172
    return-void
.end method

.method public final awaitTerminated()V
    .locals 1

    .line 177
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/Service;->awaitTerminated()V

    .line 178
    return-void
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/Service;->awaitTerminated(JLjava/util/concurrent/TimeUnit;)V

    .line 184
    return-void
.end method

.method protected executor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 111
    new-instance v0, Lccsancom/google/common/util/concurrent/AbstractIdleService$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/util/concurrent/AbstractIdleService$1;-><init>(Lccsancom/google/common/util/concurrent/AbstractIdleService;)V

    return-object v0
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 1

    .line 143
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/Service;->failureCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 126
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/Service;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected serviceName()Ljava/lang/String;
    .locals 1

    .line 193
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract shutDown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final startAsync()Lccsancom/google/common/util/concurrent/Service;
    .locals 1

    .line 150
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/Service;->startAsync()Lccsancom/google/common/util/concurrent/Service;

    .line 151
    return-object p0
.end method

.method protected abstract startUp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public final state()Lccsancom/google/common/util/concurrent/Service$State;
    .locals 1

    .line 131
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/Service;->state()Lccsancom/google/common/util/concurrent/Service$State;

    move-result-object v0

    return-object v0
.end method

.method public final stopAsync()Lccsancom/google/common/util/concurrent/Service;
    .locals 1

    .line 158
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractIdleService;->delegate:Lccsancom/google/common/util/concurrent/Service;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/Service;->stopAsync()Lccsancom/google/common/util/concurrent/Service;

    .line 159
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/AbstractIdleService;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/AbstractIdleService;->state()Lccsancom/google/common/util/concurrent/Service$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
