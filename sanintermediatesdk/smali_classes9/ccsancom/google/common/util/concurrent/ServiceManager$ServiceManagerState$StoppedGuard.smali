.class final Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;
.super Lccsancom/google/common/util/concurrent/Monitor$Guard;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StoppedGuard"
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 479
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    .line 480
    iget-object v0, p1, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->monitor:Lccsancom/google/common/util/concurrent/Monitor;

    invoke-direct {p0, v0}, Lccsancom/google/common/util/concurrent/Monitor$Guard;-><init>(Lccsancom/google/common/util/concurrent/Monitor;)V

    .line 481
    return-void
.end method


# virtual methods
.method public isSatisfied()Z
    .locals 3

    .line 486
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v0, v0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v1, Lccsancom/google/common/util/concurrent/Service$State;->TERMINATED:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-interface {v0, v1}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget-object v1, v1, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->states:Lccsancom/google/common/collect/Multiset;

    sget-object v2, Lccsancom/google/common/util/concurrent/Service$State;->FAILED:Lccsancom/google/common/util/concurrent/Service$State;

    invoke-interface {v1, v2}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState$StoppedGuard;->this$0:Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;

    iget v1, v1, Lccsancom/google/common/util/concurrent/ServiceManager$ServiceManagerState;->numberOfServices:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
