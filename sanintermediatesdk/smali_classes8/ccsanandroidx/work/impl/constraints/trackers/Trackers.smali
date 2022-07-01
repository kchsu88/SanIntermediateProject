.class public Lccsanandroidx/work/impl/constraints/trackers/Trackers;
.super Ljava/lang/Object;
.source "Trackers.java"


# static fields
.field private static sInstance:Lccsanandroidx/work/impl/constraints/trackers/Trackers;


# instance fields
.field private mBatteryChargingTracker:Lccsanandroidx/work/impl/constraints/trackers/BatteryChargingTracker;

.field private mBatteryNotLowTracker:Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

.field private mNetworkStateTracker:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

.field private mStorageNotLowTracker:Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;


# direct methods
.method private constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "appContext":Lccsanandroid/content/Context;
    new-instance v1, Lccsanandroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    invoke-direct {v1, v0, p2}, Lccsanandroidx/work/impl/constraints/trackers/BatteryChargingTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    iput-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->mBatteryChargingTracker:Lccsanandroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    .line 64
    new-instance v1, Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-direct {v1, v0, p2}, Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    iput-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->mBatteryNotLowTracker:Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    .line 65
    new-instance v1, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    invoke-direct {v1, v0, p2}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    iput-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->mNetworkStateTracker:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    .line 66
    new-instance v1, Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    invoke-direct {v1, v0, p2}, Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    iput-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->mStorageNotLowTracker:Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    .line 67
    return-void
.end method

.method public static declared-synchronized getInstance(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/work/impl/constraints/trackers/Trackers;
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    const-class v0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->sInstance:Lccsanandroidx/work/impl/constraints/trackers/Trackers;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lccsanandroidx/work/impl/constraints/trackers/Trackers;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/work/impl/constraints/trackers/Trackers;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    sput-object v1, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->sInstance:Lccsanandroidx/work/impl/constraints/trackers/Trackers;

    .line 45
    :cond_0
    sget-object v1, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->sInstance:Lccsanandroidx/work/impl/constraints/trackers/Trackers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "taskExecutor":Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setInstance(Lccsanandroidx/work/impl/constraints/trackers/Trackers;)V
    .locals 1
    .param p0, "trackers"    # Lccsanandroidx/work/impl/constraints/trackers/Trackers;

    const-class v0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;

    monitor-enter v0

    .line 53
    :try_start_0
    sput-object p0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->sInstance:Lccsanandroidx/work/impl/constraints/trackers/Trackers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-void

    .line 52
    .end local p0    # "trackers":Lccsanandroidx/work/impl/constraints/trackers/Trackers;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBatteryChargingTracker()Lccsanandroidx/work/impl/constraints/trackers/BatteryChargingTracker;
    .locals 1

    .line 76
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->mBatteryChargingTracker:Lccsanandroidx/work/impl/constraints/trackers/BatteryChargingTracker;

    return-object v0
.end method

.method public getBatteryNotLowTracker()Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;
    .locals 1

    .line 86
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->mBatteryNotLowTracker:Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    return-object v0
.end method

.method public getNetworkStateTracker()Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;
    .locals 1

    .line 96
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->mNetworkStateTracker:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;

    return-object v0
.end method

.method public getStorageNotLowTracker()Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;
    .locals 1

    .line 106
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/Trackers;->mStorageNotLowTracker:Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;

    return-object v0
.end method
