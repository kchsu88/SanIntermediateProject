.class public Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;
.super Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;
.source "NetworkStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;,
        Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker<",
        "Lccsanandroidx/work/impl/constraints/NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

.field private final mConnectivityManager:Lccsanandroid/net/ConnectivityManager;

.field private mNetworkCallback:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "NetworkStateTracker"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 68
    invoke-direct {p0, p1, p2}, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 69
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mAppContext:Lccsanandroid/content/Context;

    .line 70
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/net/ConnectivityManager;

    iput-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Lccsanandroid/net/ConnectivityManager;

    .line 71
    invoke-static {}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->isNetworkCallbackSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;-><init>(Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mNetworkCallback:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;-><init>(Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mBroadcastReceiver:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    .line 76
    :goto_0
    return-void
.end method

.method private isActiveNetworkValidated()Z
    .locals 4

    .line 141
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 142
    return v1

    .line 144
    :cond_0
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Lccsanandroid/net/ConnectivityManager;

    invoke-virtual {v0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetwork()Lccsanandroid/net/Network;

    move-result-object v0

    .line 145
    .local v0, "network":Lccsanandroid/net/Network;
    iget-object v2, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Lccsanandroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Lccsanandroid/net/ConnectivityManager;->getNetworkCapabilities(Lccsanandroid/net/Network;)Lccsanandroid/net/NetworkCapabilities;

    move-result-object v2

    .line 146
    .local v2, "capabilities":Lccsanandroid/net/NetworkCapabilities;
    if-eqz v2, :cond_1

    const/16 v3, 0x10

    .line 147
    invoke-virtual {v2, v3}, Lccsanandroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 146
    :goto_0
    return v1
.end method

.method private static isNetworkCallbackSupported()Z
    .locals 2

    .line 126
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method getActiveNetworkState()Lccsanandroidx/work/impl/constraints/NetworkState;
    .locals 7

    .line 132
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Lccsanandroid/net/ConnectivityManager;

    invoke-virtual {v0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v0

    .line 133
    .local v0, "info":Lccsanandroid/net/NetworkInfo;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 134
    .local v3, "isConnected":Z
    :goto_0
    invoke-direct {p0}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->isActiveNetworkValidated()Z

    move-result v4

    .line 135
    .local v4, "isValidated":Z
    iget-object v5, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Lccsanandroid/net/ConnectivityManager;

    invoke-static {v5}, Lccsanandroidx/core/net/ConnectivityManagerCompat;->isActiveNetworkMetered(Lccsanandroid/net/ConnectivityManager;)Z

    move-result v5

    .line 136
    .local v5, "isMetered":Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/net/NetworkInfo;->isRoaming()Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 137
    .local v1, "isNotRoaming":Z
    :goto_1
    new-instance v2, Lccsanandroidx/work/impl/constraints/NetworkState;

    invoke-direct {v2, v3, v4, v5, v1}, Lccsanandroidx/work/impl/constraints/NetworkState;-><init>(ZZZZ)V

    return-object v2
.end method

.method public getInitialState()Lccsanandroidx/work/impl/constraints/NetworkState;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->getActiveNetworkState()Lccsanandroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getInitialState()Ljava/lang/Object;
    .locals 1

    .line 50
    invoke-virtual {p0}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->getInitialState()Lccsanandroidx/work/impl/constraints/NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public startTracking()V
    .locals 5

    .line 85
    invoke-static {}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->isNetworkCallbackSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v2, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "Registering network callback"

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 88
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Lccsanandroid/net/ConnectivityManager;

    iget-object v2, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mNetworkCallback:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    invoke-virtual {v0, v2}, Lccsanandroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Lccsanandroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v1

    const-string v1, "Received exception while unregistering network callback"

    invoke-virtual {v2, v3, v1, v4}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 96
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    goto :goto_1

    .line 98
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v2, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v3, "Registering broadcast receiver"

    invoke-virtual {v0, v2, v3, v1}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 99
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mAppContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mBroadcastReceiver:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    new-instance v2, Lccsanandroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    .line 102
    :goto_1
    return-void
.end method

.method public stopTracking()V
    .locals 5

    .line 106
    invoke-static {}, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->isNetworkCallbackSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v2, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const-string v3, "Unregistering network callback"

    new-array v4, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 109
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mConnectivityManager:Lccsanandroid/net/ConnectivityManager;

    iget-object v2, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mNetworkCallback:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateCallback;

    invoke-virtual {v0, v2}, Lccsanandroid/net/ConnectivityManager;->unregisterNetworkCallback(Lccsanandroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v0, v4, v1

    const-string v1, "Received exception while unregistering network callback"

    invoke-virtual {v2, v3, v1, v4}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 117
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    goto :goto_1

    .line 119
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v2, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Throwable;

    const-string v3, "Unregistering broadcast receiver"

    invoke-virtual {v0, v2, v3, v1}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 120
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mAppContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker;->mBroadcastReceiver:Lccsanandroidx/work/impl/constraints/trackers/NetworkStateTracker$NetworkStateBroadcastReceiver;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 122
    :goto_1
    return-void
.end method
