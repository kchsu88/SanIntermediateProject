.class public Lccsanandroidx/work/impl/constraints/controllers/BatteryChargingController;
.super Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;
.source "BatteryChargingController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 31
    invoke-static {p1, p2}, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->getInstance(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/work/impl/constraints/trackers/Trackers;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->getBatteryChargingTracker()Lccsanandroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    .line 32
    return-void
.end method


# virtual methods
.method hasConstraint(Lccsanandroidx/work/impl/model/WorkSpec;)Z
    .locals 1
    .param p1, "workSpec"    # Lccsanandroidx/work/impl/model/WorkSpec;

    .line 36
    iget-object v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    invoke-virtual {v0}, Lccsanandroidx/work/Constraints;->requiresCharging()Z

    move-result v0

    return v0
.end method

.method isConstrained(Ljava/lang/Boolean;)Z
    .locals 1
    .param p1, "isBatteryCharging"    # Ljava/lang/Boolean;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lccsanandroidx/work/impl/constraints/controllers/BatteryChargingController;->isConstrained(Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
