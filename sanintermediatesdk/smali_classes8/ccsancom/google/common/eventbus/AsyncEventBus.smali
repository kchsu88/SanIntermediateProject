.class public Lccsancom/google/common/eventbus/AsyncEventBus;
.super Lccsancom/google/common/eventbus/EventBus;
.source "AsyncEventBus.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 39
    invoke-static {}, Lccsancom/google/common/eventbus/Dispatcher;->legacyAsync()Lccsancom/google/common/eventbus/Dispatcher;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lccsancom/google/common/eventbus/EventBus$LoggingHandler;

    invoke-direct {p0, p1, p2, v0, v1}, Lccsancom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lccsancom/google/common/eventbus/Dispatcher;Lccsancom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 62
    invoke-static {}, Lccsancom/google/common/eventbus/Dispatcher;->legacyAsync()Lccsancom/google/common/eventbus/Dispatcher;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/eventbus/EventBus$LoggingHandler;->INSTANCE:Lccsancom/google/common/eventbus/EventBus$LoggingHandler;

    const-string v2, "default"

    invoke-direct {p0, v2, p1, v0, v1}, Lccsancom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lccsancom/google/common/eventbus/Dispatcher;Lccsancom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lccsancom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "subscriberExceptionHandler"    # Lccsancom/google/common/eventbus/SubscriberExceptionHandler;

    .line 52
    invoke-static {}, Lccsancom/google/common/eventbus/Dispatcher;->legacyAsync()Lccsancom/google/common/eventbus/Dispatcher;

    move-result-object v0

    const-string v1, "default"

    invoke-direct {p0, v1, p1, v0, p2}, Lccsancom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;Lccsancom/google/common/eventbus/Dispatcher;Lccsancom/google/common/eventbus/SubscriberExceptionHandler;)V

    .line 53
    return-void
.end method
