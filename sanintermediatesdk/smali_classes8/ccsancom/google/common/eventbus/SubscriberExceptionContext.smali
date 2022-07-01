.class public Lccsancom/google/common/eventbus/SubscriberExceptionContext;
.super Ljava/lang/Object;
.source "SubscriberExceptionContext.java"


# instance fields
.field private final event:Ljava/lang/Object;

.field private final eventBus:Lccsancom/google/common/eventbus/EventBus;

.field private final subscriber:Ljava/lang/Object;

.field private final subscriberMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lccsancom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 1
    .param p1, "eventBus"    # Lccsancom/google/common/eventbus/EventBus;
    .param p2, "event"    # Ljava/lang/Object;
    .param p3, "subscriber"    # Ljava/lang/Object;
    .param p4, "subscriberMethod"    # Ljava/lang/reflect/Method;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/eventbus/EventBus;

    iput-object v0, p0, Lccsancom/google/common/eventbus/SubscriberExceptionContext;->eventBus:Lccsancom/google/common/eventbus/EventBus;

    .line 42
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/eventbus/SubscriberExceptionContext;->event:Ljava/lang/Object;

    .line 43
    invoke-static {p3}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/eventbus/SubscriberExceptionContext;->subscriber:Ljava/lang/Object;

    .line 44
    invoke-static {p4}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lccsancom/google/common/eventbus/SubscriberExceptionContext;->subscriberMethod:Ljava/lang/reflect/Method;

    .line 45
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/Object;
    .locals 1

    .line 57
    iget-object v0, p0, Lccsancom/google/common/eventbus/SubscriberExceptionContext;->event:Ljava/lang/Object;

    return-object v0
.end method

.method public getEventBus()Lccsancom/google/common/eventbus/EventBus;
    .locals 1

    .line 52
    iget-object v0, p0, Lccsancom/google/common/eventbus/SubscriberExceptionContext;->eventBus:Lccsancom/google/common/eventbus/EventBus;

    return-object v0
.end method

.method public getSubscriber()Ljava/lang/Object;
    .locals 1

    .line 62
    iget-object v0, p0, Lccsancom/google/common/eventbus/SubscriberExceptionContext;->subscriber:Ljava/lang/Object;

    return-object v0
.end method

.method public getSubscriberMethod()Ljava/lang/reflect/Method;
    .locals 1

    .line 67
    iget-object v0, p0, Lccsancom/google/common/eventbus/SubscriberExceptionContext;->subscriberMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
