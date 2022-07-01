.class abstract Lccsancom/google/common/eventbus/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/eventbus/Dispatcher$ImmediateDispatcher;,
        Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;,
        Lccsancom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static immediate()Lccsancom/google/common/eventbus/Dispatcher;
    .locals 1

    .line 66
    invoke-static {}, Lccsancom/google/common/eventbus/Dispatcher$ImmediateDispatcher;->access$200()Lccsancom/google/common/eventbus/Dispatcher$ImmediateDispatcher;

    move-result-object v0

    return-object v0
.end method

.method static legacyAsync()Lccsancom/google/common/eventbus/Dispatcher;
    .locals 2

    .line 57
    new-instance v0, Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/eventbus/Dispatcher$LegacyAsyncDispatcher;-><init>(Lccsancom/google/common/eventbus/Dispatcher$1;)V

    return-object v0
.end method

.method static perThreadDispatchQueue()Lccsancom/google/common/eventbus/Dispatcher;
    .locals 2

    .line 47
    new-instance v0, Lccsancom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/eventbus/Dispatcher$PerThreadQueuedDispatcher;-><init>(Lccsancom/google/common/eventbus/Dispatcher$1;)V

    return-object v0
.end method


# virtual methods
.method abstract dispatch(Ljava/lang/Object;Ljava/util/Iterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Iterator<",
            "Lccsancom/google/common/eventbus/Subscriber;",
            ">;)V"
        }
    .end annotation
.end method
