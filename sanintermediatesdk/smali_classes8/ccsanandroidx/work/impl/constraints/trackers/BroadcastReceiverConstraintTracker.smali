.class public abstract Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;
.super Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "BroadcastReceiverConstraintTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Lccsanandroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-string v0, "BrdcstRcvrCnstrntTrckr"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 51
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;, "Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker<TT;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 39
    new-instance v0, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker$1;-><init>(Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->mBroadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method


# virtual methods
.method public abstract getIntentFilter()Lccsanandroid/content/IntentFilter;
.end method

.method public abstract onBroadcastReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
.end method

.method public startTracking()V
    .locals 5

    .line 70
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;, "Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker<TT;>;"
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s: registering receiver"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 73
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->mAppContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->mBroadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->getIntentFilter()Lccsanandroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 74
    return-void
.end method

.method public stopTracking()V
    .locals 5

    .line 78
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;, "Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker<TT;>;"
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s: unregistering receiver"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 81
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->mAppContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;->mBroadcastReceiver:Lccsanandroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method
