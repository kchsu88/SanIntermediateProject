.class public Lccsancom/google/common/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/eventbus/EventBus$LoggingHandler;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final dispatcher:Lccsancom/google/common/eventbus/Dispatcher;

.field private final exceptionHandler:Lccsancom/google/common/eventbus/SubscriberExceptionHandler;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final identifier:Ljava/lang/String;

.field private final subscribers:Lccsancom/google/common/eventbus/SubscriberRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    const-class v0, Lccsancom/google/common/eventbus/EventBus;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/eventbus/EventBus;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 109
    const-string v0, "default"

    invoke-direct {p0, v0}, Lccsancom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lccsancom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 3
    .param p1, "exceptionHandler"    # Lccsancom/google/common/eventbus/SubscriberExceptionHandler;

    .line 133
    nop

    .line 135
    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 136
    invoke-static {}, Lccsancom/google/common/eventbus/Dispatcher;->perThreadDispatchQueue()Lccsancom/google/common/eventbus/Dispatcher;

    move-result-object v1

    .line 133
    const-string v2, "default"

    invoke-direct {p0, v2, v0, v1, p1}, Lccsancom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lccsancom/google/common/eventbus/Dispatcher;Lccsancom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .line 119
    nop

    .line 121
    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 122
    invoke-static {}, Lccsancom/google/common/eventbus/Dispatcher;->perThreadDispatchQueue()Lccsancom/google/common/eventbus/Dispatcher;

    move-result-object v1

    sget-object v2, Lccsancom/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lccsancom/google/common/eventbus/EventBus$LoggingHandler;

    .line 119
    invoke-direct {p0, p1, v0, v1, v2}, Lccsancom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lccsancom/google/common/eventbus/Dispatcher;Lccsancom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 124
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lccsancom/google/common/eventbus/Dispatcher;Lccsancom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "dispatcher"    # Lccsancom/google/common/eventbus/Dispatcher;
    .param p4, "exceptionHandler"    # Lccsancom/google/common/eventbus/SubscriberExceptionHandler;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lccsancom/google/common/eventbus/SubscriberRegistry;

    invoke-direct {v0, p0}, Lccsancom/google/common/eventbus/SubscriberRegistry;-><init>(Lccsancom/google/common/eventbus/EventBus;)V

    iput-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->subscribers:Lccsancom/google/common/eventbus/SubscriberRegistry;

    .line 145
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->identifier:Ljava/lang/String;

    .line 146
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->executor:Ljava/util/concurrent/Executor;

    .line 147
    invoke-static {p3}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/eventbus/Dispatcher;

    iput-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->dispatcher:Lccsancom/google/common/eventbus/Dispatcher;

    .line 148
    invoke-static {p4}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/eventbus/SubscriberExceptionHandler;

    iput-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->exceptionHandler:Lccsancom/google/common/eventbus/SubscriberExceptionHandler;

    .line 149
    return-void
.end method


# virtual methods
.method final executor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 162
    iget-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method handleSubscriberException(Ljava/lang/Throwable;Lccsancom/google/common/eventbus/SubscriberExceptionContext;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "context"    # Lccsancom/google/common/eventbus/SubscriberExceptionContext;

    .line 167
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :try_start_0
    iget-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->exceptionHandler:Lccsancom/google/common/eventbus/SubscriberExceptionHandler;

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/eventbus/SubscriberExceptionHandler;->handleException(Ljava/lang/Throwable;Lccsancom/google/common/eventbus/SubscriberExceptionContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    .line 173
    .local v0, "e2":Ljava/lang/Throwable;
    sget-object v1, Lccsancom/google/common/eventbus/EventBus;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    .line 175
    const-string v5, "Exception %s thrown while handling exception: %s"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    .end local v0    # "e2":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final identifier()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public post(Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->subscribers:Lccsancom/google/common/eventbus/SubscriberRegistry;

    invoke-virtual {v0, p1}, Lccsancom/google/common/eventbus/SubscriberRegistry;->getSubscribers(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    .line 211
    .local v0, "eventSubscribers":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/eventbus/Subscriber;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lccsancom/google/common/eventbus/EventBus;->dispatcher:Lccsancom/google/common/eventbus/Dispatcher;

    invoke-virtual {v1, p1, v0}, Lccsancom/google/common/eventbus/Dispatcher;->dispatch(Ljava/lang/Object;Ljava/util/Iterator;)V

    goto :goto_0

    .line 213
    :cond_0
    instance-of v1, p1, Lccsancom/google/common/eventbus/DeadEvent;

    if-nez v1, :cond_1

    .line 215
    new-instance v1, Lccsancom/google/common/eventbus/DeadEvent;

    invoke-direct {v1, p0, p1}, Lccsancom/google/common/eventbus/DeadEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lccsancom/google/common/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 217
    :cond_1
    :goto_0
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 186
    iget-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->subscribers:Lccsancom/google/common/eventbus/SubscriberRegistry;

    invoke-virtual {v0, p1}, Lccsancom/google/common/eventbus/SubscriberRegistry;->register(Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 221
    invoke-static {p0}, Lccsancom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/eventbus/EventBus;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lccsancom/google/common/eventbus/EventBus;->subscribers:Lccsancom/google/common/eventbus/SubscriberRegistry;

    invoke-virtual {v0, p1}, Lccsancom/google/common/eventbus/SubscriberRegistry;->unregister(Ljava/lang/Object;)V

    .line 197
    return-void
.end method
