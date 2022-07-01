.class public Lccsanandroidx/work/impl/constraints/controllers/NetworkConnectedController;
.super Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;
.source "NetworkConnectedController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<",
        "Lccsanandroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 41
    invoke-static {p1, p2}, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->getInstance(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/work/impl/constraints/trackers/Trackers;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    .line 42
    return-void
.end method


# virtual methods
.method hasConstraint(Lccsanandroidx/work/impl/model/WorkSpec;)Z
    .locals 2
    .param p1, "workSpec"    # Lccsanandroidx/work/impl/model/WorkSpec;

    .line 46
    iget-object v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    invoke-virtual {v0}, Lccsanandroidx/work/Constraints;->getRequiredNetworkType()Lccsanandroidx/work/NetworkType;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/NetworkType;->CONNECTED:Lccsanandroidx/work/NetworkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConstrained(Lccsanandroidx/work/impl/constraints/NetworkState;)Z
    .locals 3
    .param p1, "state"    # Lccsanandroidx/work/impl/constraints/NetworkState;

    .line 51
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 52
    invoke-virtual {p1}, Lccsanandroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsanandroidx/work/impl/constraints/NetworkState;->isValidated()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    .line 54
    :cond_2
    invoke-virtual {p1}, Lccsanandroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    check-cast p1, Lccsanandroidx/work/impl/constraints/NetworkState;

    invoke-virtual {p0, p1}, Lccsanandroidx/work/impl/constraints/controllers/NetworkConnectedController;->isConstrained(Lccsanandroidx/work/impl/constraints/NetworkState;)Z

    move-result p1

    return p1
.end method
