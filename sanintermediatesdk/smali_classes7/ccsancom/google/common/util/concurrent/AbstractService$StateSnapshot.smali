.class final Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;
.super Ljava/lang/Object;
.source "AbstractService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StateSnapshot"
.end annotation


# instance fields
.field final failure:Ljava/lang/Throwable;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final shutdownWhenStartupFinishes:Z

.field final state:Lccsancom/google/common/util/concurrent/Service$State;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/Service$State;)V
    .locals 2
    .param p1, "internalState"    # Lccsancom/google/common/util/concurrent/Service$State;

    .line 581
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;-><init>(Lccsancom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V

    .line 582
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/util/concurrent/Service$State;ZLjava/lang/Throwable;)V
    .locals 4
    .param p1, "internalState"    # Lccsancom/google/common/util/concurrent/Service$State;
    .param p2, "shutdownWhenStartupFinishes"    # Z
    .param p3, "failure"    # Ljava/lang/Throwable;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    sget-object v2, Lccsancom/google/common/util/concurrent/Service$State;->STARTING:Lccsancom/google/common/util/concurrent/Service$State;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "shutdownWhenStartupFinishes can only be set if state is STARTING. Got %s instead."

    invoke-static {v2, v3, p1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 590
    if-eqz p3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    sget-object v3, Lccsancom/google/common/util/concurrent/Service$State;->FAILED:Lccsancom/google/common/util/concurrent/Service$State;

    if-ne p1, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    const-string v1, "A failure cause should be set if and only if the state is failed.  Got %s and %s instead."

    invoke-static {v0, v1, p1, p3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 596
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lccsancom/google/common/util/concurrent/Service$State;

    .line 597
    iput-boolean p2, p0, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    .line 598
    iput-object p3, p0, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;->failure:Ljava/lang/Throwable;

    .line 599
    return-void
.end method


# virtual methods
.method externalState()Lccsancom/google/common/util/concurrent/Service$State;
    .locals 2

    .line 603
    iget-boolean v0, p0, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;->shutdownWhenStartupFinishes:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lccsancom/google/common/util/concurrent/Service$State;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->STARTING:Lccsancom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    .line 604
    sget-object v0, Lccsancom/google/common/util/concurrent/Service$State;->STOPPING:Lccsancom/google/common/util/concurrent/Service$State;

    return-object v0

    .line 606
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lccsancom/google/common/util/concurrent/Service$State;

    return-object v0
.end method

.method failureCause()Ljava/lang/Throwable;
    .locals 3

    .line 612
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lccsancom/google/common/util/concurrent/Service$State;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->FAILED:Lccsancom/google/common/util/concurrent/Service$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;->state:Lccsancom/google/common/util/concurrent/Service$State;

    const-string v2, "failureCause() is only valid if the service has failed, service is %s"

    invoke-static {v0, v2, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractService$StateSnapshot;->failure:Ljava/lang/Throwable;

    return-object v0
.end method