.class public Lccsanandroidx/work/impl/constraints/controllers/NetworkNotRoamingController;
.super Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;
.source "NetworkNotRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/impl/constraints/controllers/ConstraintController<",
        "Lccsanandroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-string v0, "NetworkNotRoamingCtrlr"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/constraints/controllers/NetworkNotRoamingController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 39
    invoke-static {p1, p2}, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->getInstance(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/work/impl/constraints/trackers/Trackers;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->getNetworkStateTracker()Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/constraints/controllers/ConstraintController;-><init>(Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    .line 40
    return-void
.end method


# virtual methods
.method hasConstraint(Lccsanandroidx/work/impl/model/WorkSpec;)Z
    .locals 2
    .param p1, "workSpec"    # Lccsanandroidx/work/impl/model/WorkSpec;

    .line 44
    iget-object v0, p1, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    invoke-virtual {v0}, Lccsanandroidx/work/Constraints;->getRequiredNetworkType()Lccsanandroidx/work/NetworkType;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/NetworkType;->NOT_ROAMING:Lccsanandroidx/work/NetworkType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConstrained(Lccsanandroidx/work/impl/constraints/NetworkState;)Z
    .locals 5
    .param p1, "state"    # Lccsanandroidx/work/impl/constraints/NetworkState;

    .line 53
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x18

    if-ge v0, v3, :cond_0

    .line 54
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v3, Lccsanandroidx/work/impl/constraints/controllers/NetworkNotRoamingController;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v4, "Not-roaming network constraint is not supported before API 24, only checking for connected state."

    invoke-virtual {v0, v3, v4, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 58
    invoke-virtual {p1}, Lccsanandroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lccsanandroidx/work/impl/constraints/NetworkState;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lccsanandroidx/work/impl/constraints/NetworkState;->isNotRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method bridge synthetic isConstrained(Ljava/lang/Object;)Z
    .locals 0

    .line 35
    check-cast p1, Lccsanandroidx/work/impl/constraints/NetworkState;

    invoke-virtual {p0, p1}, Lccsanandroidx/work/impl/constraints/controllers/NetworkNotRoamingController;->isConstrained(Lccsanandroidx/work/impl/constraints/NetworkState;)Z

    move-result p1

    return p1
.end method
