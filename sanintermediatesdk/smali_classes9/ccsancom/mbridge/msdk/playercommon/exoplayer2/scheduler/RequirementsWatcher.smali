.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;
.super Ljava/lang/Object;
.source "RequirementsWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequirementsWatcher"


# instance fields
.field private final context:Lccsanandroid/content/Context;

.field private final listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;

.field private networkCallback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;

.field private receiver:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

.field private final requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

.field private requirementsWereMet:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

    .line 78
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;

    .line 79
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->context:Lccsanandroid/content/Context;

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " created"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->logd(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->checkRequirements(Z)V

    return-void
.end method

.method private checkRequirements(Z)V
    .locals 2

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->checkRequirements(Lccsanandroid/content/Context;)Z

    move-result v0

    .line 163
    if-nez p1, :cond_0

    .line 164
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->requirementsWereMet:Z

    if-ne v0, p1, :cond_0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requirementsAreMet is still "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->logd(Ljava/lang/String;)V

    .line 166
    return-void

    .line 169
    :cond_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->requirementsWereMet:Z

    .line 170
    if-eqz v0, :cond_1

    .line 171
    const-string p1, "start job"

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->logd(Ljava/lang/String;)V

    .line 172
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;->requirementsMet(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;)V

    goto :goto_0

    .line 174
    :cond_1
    const-string p1, "stop job"

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->logd(Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->listener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;

    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$Listener;->requirementsNotMet(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;)V

    .line 177
    :goto_0
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0

    .line 183
    return-void
.end method

.method private registerNetworkCallbackV23()V
    .locals 4

    .line 142
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->context:Lccsanandroid/content/Context;

    .line 143
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/net/ConnectivityManager;

    .line 144
    new-instance v1, Lccsanandroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Lccsanandroid/net/NetworkRequest$Builder;-><init>()V

    .line 146
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lccsanandroid/net/NetworkRequest$Builder;->addCapability(I)Lccsanandroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lccsanandroid/net/NetworkRequest$Builder;->build()Lccsanandroid/net/NetworkRequest;

    move-result-object v1

    .line 148
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$1;)V

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;

    .line 149
    invoke-virtual {v0, v1, v2}, Lccsanandroid/net/ConnectivityManager;->registerNetworkCallback(Lccsanandroid/net/NetworkRequest;Lccsanandroid/net/ConnectivityManager$NetworkCallback;)V

    .line 150
    return-void
.end method

.method private unregisterNetworkCallback()V
    .locals 2

    .line 153
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->context:Lccsanandroid/content/Context;

    .line 155
    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/net/ConnectivityManager;

    .line 156
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;

    invoke-virtual {v0, v1}, Lccsanandroid/net/ConnectivityManager;->unregisterNetworkCallback(Lccsanandroid/net/ConnectivityManager$NetworkCallback;)V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public final getRequirements()Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;
    .locals 1

    .line 129
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

    return-object v0
.end method

.method public final start()V
    .locals 5

    .line 88
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->checkRequirements(Z)V

    .line 92
    new-instance v0, Lccsanandroid/content/IntentFilter;

    invoke-direct {v0}, Lccsanandroid/content/IntentFilter;-><init>()V

    .line 93
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->getRequiredNetworkType()I

    move-result v1

    const/16 v2, 0x17

    if-eqz v1, :cond_1

    .line 94
    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_0

    .line 95
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->registerNetworkCallbackV23()V

    goto :goto_0

    .line 97
    :cond_0
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    :cond_1
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->isChargingRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->requirements:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->isIdleRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 105
    sget v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    if-lt v1, v2, :cond_3

    .line 106
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Lccsanandroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    :cond_4
    :goto_1
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$1;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->receiver:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    .line 113
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->context:Lccsanandroid/content/Context;

    new-instance v4, Lccsanandroid/os/Handler;

    invoke-direct {v4}, Lccsanandroid/os/Handler;-><init>()V

    invoke-virtual {v3, v1, v0, v2, v4}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;Ljava/lang/String;Lccsanandroid/os/Handler;)Lccsanandroid/content/Intent;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->logd(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 119
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->context:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->receiver:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->unregisterReceiver(Lccsanandroid/content/BroadcastReceiver;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->receiver:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver;

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->networkCallback:Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback;

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->unregisterNetworkCallback()V

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/RequirementsWatcher;->logd(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 135
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
