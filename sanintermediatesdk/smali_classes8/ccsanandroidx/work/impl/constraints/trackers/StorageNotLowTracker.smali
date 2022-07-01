.class public Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;
.super Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;
.source "StorageNotLowTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "StorageNotLowTracker"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 42
    invoke-direct {p0, p1, p2}, Lccsanandroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getInitialState()Ljava/lang/Boolean;
    .locals 8

    .line 47
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;->mAppContext:Lccsanandroid/content/Context;

    invoke-virtual {p0}, Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;->getIntentFilter()Lccsanandroid/content/IntentFilter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Lccsanandroid/content/Intent;
    const/4 v1, 0x1

    .line 52
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 48
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 54
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    sparse-switch v6, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 64
    return-object v2

    .line 59
    :pswitch_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 56
    :pswitch_1
    return-object v3

    .line 52
    :cond_2
    :goto_2
    return-object v3

    :sswitch_data_0
    .sparse-switch
        -0x46671f94 -> :sswitch_1
        -0x2b8fb65c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;->getInitialState()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIntentFilter()Lccsanandroid/content/IntentFilter;
    .locals 2

    .line 74
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "intentFilter":Lccsanandroid/content/IntentFilter;
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    return-object v0
.end method

.method public onBroadcastReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 82
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;->TAG:Ljava/lang/String;

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

    .line 88
    invoke-virtual {p2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 94
    :pswitch_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;->setState(Ljava/lang/Object;)V

    goto :goto_1

    .line 90
    :pswitch_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/impl/constraints/trackers/StorageNotLowTracker;->setState(Ljava/lang/Object;)V

    .line 91
    nop

    .line 97
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x46671f94 -> :sswitch_1
        -0x2b8fb65c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
