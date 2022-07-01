.class public Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;
.super Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;
.source "BatteryNotLowTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field static final BATTERY_LOW_PERCENTAGE:F = 0.15f

.field static final BATTERY_PLUGGED_NONE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-string v0, "BatteryNotLowTracker"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 53
    invoke-direct {p0, p1, p2}, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getInitialState()Ljava/lang/Boolean;
    .locals 10

    .line 64
    new-instance v0, Lccsanandroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intentFilter":Lccsanandroid/content/IntentFilter;
    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->mAppContext:Lccsanandroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, "intent":Lccsanandroid/content/Intent;
    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 67
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->TAG:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v6, "getInitialState - null intent received"

    invoke-virtual {v4, v5, v6, v3}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 68
    return-object v2

    .line 70
    :cond_0
    const-string v2, "plugged"

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 71
    .local v2, "plugged":I
    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 72
    .local v4, "status":I
    const-string v6, "level"

    invoke-virtual {v1, v6, v5}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 73
    .local v6, "level":I
    const-string/jumbo v7, "scale"

    invoke-virtual {v1, v7, v5}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 74
    .local v5, "scale":I
    int-to-float v7, v6

    int-to-float v8, v5

    div-float/2addr v7, v8

    .line 76
    .local v7, "batteryPercentage":F
    const/4 v8, 0x1

    if-nez v2, :cond_1

    if-eq v4, v8, :cond_1

    const v9, 0x3e19999a    # 0.15f

    cmpl-float v9, v7, v9

    if-lez v9, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->getInitialState()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Lccsanandroid/content/IntentFilter;
    .locals 2

    .line 83
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "intentFilter":Lccsanandroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    return-object v0
.end method

.method public onBroadcastReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 91
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    return-void

    .line 95
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Received %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 97
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 103
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->setState(Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/impl/constraints/trackers/BatteryNotLowTracker;->setState(Ljava/lang/Object;)V

    .line 100
    nop

    .line 106
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7606c095 -> :sswitch_1
        0x1d398bfd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
