.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;
.super Ljava/lang/Object;
.source "Requirements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements$NetworkType;
    }
.end annotation


# static fields
.field private static final DEVICE_CHARGING:I = 0x10

.field private static final DEVICE_IDLE:I = 0x8

.field public static final NETWORK_TYPE_ANY:I = 0x1

.field private static final NETWORK_TYPE_MASK:I = 0x7

.field public static final NETWORK_TYPE_METERED:I = 0x4

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_NOT_ROAMING:I = 0x3

.field private static final NETWORK_TYPE_STRINGS:[Ljava/lang/String;

.field public static final NETWORK_TYPE_UNMETERED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Requirements"


# instance fields
.field private final requirements:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->NETWORK_TYPE_STRINGS:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->requirements:I

    .line 98
    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 1

    .line 92
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    if-eqz p3, :cond_1

    const/16 v0, 0x8

    :cond_1
    or-int/2addr p1, v0

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;-><init>(I)V

    .line 93
    return-void
.end method

.method private checkChargingRequirement(Lccsanandroid/content/Context;)Z
    .locals 4

    .line 166
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->isChargingRequired()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 167
    return v1

    .line 169
    :cond_0
    const/4 v0, 0x0

    new-instance v2, Lccsanandroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 171
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 172
    return v0

    .line 174
    :cond_1
    const/4 v2, -0x1

    const-string v3, "status"

    invoke-virtual {p1, v3, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 175
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private checkIdleRequirement(Lccsanandroid/content/Context;)Z
    .locals 4

    .line 180
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->isIdleRequired()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 181
    return v1

    .line 183
    :cond_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/PowerManager;

    .line 184
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_2

    .line 185
    invoke-virtual {p1}, Lccsanandroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 186
    :cond_2
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_3

    invoke-virtual {p1}, Lccsanandroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lccsanandroid/os/PowerManager;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 184
    :goto_1
    return v1
.end method

.method private static checkInternetConnectivity(Lccsanandroid/net/ConnectivityManager;)Z
    .locals 3

    .line 190
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_0

    .line 193
    return v1

    .line 195
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetwork()Lccsanandroid/net/Network;

    move-result-object v0

    .line 196
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 197
    const-string p0, "No active network."

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    .line 198
    return v2

    .line 200
    :cond_1
    nop

    .line 201
    invoke-virtual {p0, v0}, Lccsanandroid/net/ConnectivityManager;->getNetworkCapabilities(Lccsanandroid/net/Network;)Lccsanandroid/net/NetworkCapabilities;

    move-result-object p0

    .line 202
    if-eqz p0, :cond_2

    const/16 v0, 0x10

    .line 204
    invoke-virtual {p0, v0}, Lccsanandroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 205
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network capability validated: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    .line 206
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method private checkNetworkRequirements(Lccsanandroid/content/Context;)Z
    .locals 5

    .line 132
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->getRequiredNetworkType()I

    move-result v0

    .line 133
    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 134
    return v1

    .line 136
    :cond_0
    nop

    .line 137
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/net/ConnectivityManager;

    .line 138
    invoke-virtual {p1}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v2

    .line 139
    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lccsanandroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->checkInternetConnectivity(Lccsanandroid/net/ConnectivityManager;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 144
    return v3

    .line 146
    :cond_2
    if-ne v0, v1, :cond_3

    .line 147
    return v1

    .line 149
    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 150
    invoke-virtual {v2}, Lccsanandroid/net/NetworkInfo;->isRoaming()Z

    move-result p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Roaming: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    .line 152
    xor-int/2addr p1, v1

    return p1

    .line 154
    :cond_4
    invoke-static {p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->isActiveNetworkMetered(Lccsanandroid/net/ConnectivityManager;Lccsanandroid/net/NetworkInfo;)Z

    move-result p1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Metered network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    .line 156
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 157
    xor-int/2addr p1, v1

    return p1

    .line 159
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 160
    return p1

    .line 162
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 140
    :cond_7
    :goto_0
    const-string p1, "No network info or no connection."

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->logd(Ljava/lang/String;)V

    .line 141
    return v3
.end method

.method private static isActiveNetworkMetered(Lccsanandroid/net/ConnectivityManager;Lccsanandroid/net/NetworkInfo;)Z
    .locals 2

    .line 211
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 212
    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    return p0

    .line 214
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/net/NetworkInfo;->getType()I

    move-result p0

    .line 215
    const/4 p1, 0x1

    if-eq p0, p1, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0

    .line 224
    return-void
.end method


# virtual methods
.method public final checkRequirements(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 121
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->checkNetworkRequirements(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->checkChargingRequirement(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->checkIdleRequirement(Lccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    :goto_0
    return p1
.end method

.method public final getRequiredNetworkType()I
    .locals 1

    .line 102
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x7

    return v0
.end method

.method public final getRequirementsData()I
    .locals 1

    .line 128
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->requirements:I

    return v0
.end method

.method public final isChargingRequired()Z
    .locals 1

    .line 107
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isIdleRequired()Z
    .locals 1

    .line 112
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 229
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
