.class final Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;
.super Lccsancom/google/common/util/concurrent/Monitor$Guard;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AwaitHealthGuard"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 459
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 460
    iget-object v0, p1, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-direct {p0, v0}, Lccsancom/google/common/util/concurrent/Monitor$Guard;-><init>(Lccsancom/google/common/util/concurrent/Monitor;)V

    .line 461
    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 2

    .line 467
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->RUNNING:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget v1, v1, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->STOPPING:Lccsancom/google/common/util/concurrent/Service$State;

    .line 468
    invoke-interface {v0, v1}, Lccsancom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->TERMINATED:Lccsancom/google/common/util/concurrent/Service$State;

    .line 469
    invoke-interface {v0, v1}, Lccsancom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$AwaitHealthGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->FAILED:Lccsancom/google/common/util/concurrent/Service$State;

    .line 470
    invoke-interface {v0, v1}, Lccsancom/google/common/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 467
    :goto_1
    return v0
.end method
