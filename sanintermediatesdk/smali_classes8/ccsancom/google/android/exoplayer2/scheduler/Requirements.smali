.class public final Lccsancom/google/android/exoplayer2/scheduler/Requirements;
.super Ljava/lang/Object;
.source "Requirements.java"

# interfaces
.implements Lccsanandroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/scheduler/Requirements$RequirementFlags;
    }
.end annotation


# static fields
.field public static final CREATOR:Lccsanandroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/os/Parcelable$Creator<",
            "Lccsancom/google/android/exoplayer2/scheduler/Requirements;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_CHARGING:I = 0x8

.field public static final DEVICE_IDLE:I = 0x4

.field public static final DEVICE_STORAGE_NOT_LOW:I = 0x10

.field public static final NETWORK:I = 0x1

.field public static final NETWORK_UNMETERED:I = 0x2


# instance fields
.field private final requirements:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    new-instance v0, Lccsancom/google/android/exoplayer2/scheduler/Requirements$1;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/scheduler/Requirements$1;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "requirements"    # I

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 71
    or-int/lit8 p1, p1, 0x1

    .line 73
    :cond_0
    iput p1, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    .line 74
    return-void
.end method

.method private getNotMetNetworkRequirements(Lccsanandroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 152
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->isNetworkRequired()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 153
    return v1

    .line 156
    :cond_0
    nop

    .line 158
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/net/ConnectivityManager;

    .line 159
    .local v0, "connectivityManager":Lccsanandroid/net/ConnectivityManager;
    invoke-virtual {v0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetworkInfo()Lccsanandroid/net/NetworkInfo;

    move-result-object v2

    .line 160
    .local v2, "networkInfo":Lccsanandroid/net/NetworkInfo;
    if-eqz v2, :cond_3

    .line 161
    invoke-virtual {v2}, Lccsanandroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->isInternetConnectivityValidated(Lccsanandroid/net/ConnectivityManager;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->isUnmeteredNetworkRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lccsanandroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    const/4 v1, 0x2

    return v1

    .line 170
    :cond_2
    return v1

    .line 163
    :cond_3
    :goto_0
    iget v1, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v1, v1, 0x3

    return v1
.end method

.method private isDeviceCharging(Lccsanandroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 175
    new-instance v0, Lccsanandroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, "batteryStatus":Lccsanandroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 179
    return v1

    .line 181
    :cond_0
    const/4 v2, -0x1

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 182
    .local v2, "status":I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isDeviceIdle(Lccsanandroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 187
    nop

    .line 188
    const-string v0, "power"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/PowerManager;

    .line 189
    .local v0, "powerManager":Lccsanandroid/os/PowerManager;
    sget v1, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x17

    if-lt v1, v4, :cond_0

    .line 190
    invoke-virtual {v0}, Lccsanandroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    goto :goto_1

    .line 191
    :cond_0
    sget v1, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v1, v4, :cond_1

    invoke-virtual {v0}, Lccsanandroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lccsanandroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 189
    :goto_1
    return v2
.end method

.method private static isInternetConnectivityValidated(Lccsanandroid/net/ConnectivityManager;)Z
    .locals 5
    .param p0, "connectivityManager"    # Lccsanandroid/net/ConnectivityManager;

    .line 205
    sget v0, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    .line 206
    return v1

    .line 209
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/net/ConnectivityManager;->getActiveNetwork()Lccsanandroid/net/Network;

    move-result-object v0

    .line 210
    .local v0, "activeNetwork":Lccsanandroid/net/Network;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 211
    return v2

    .line 216
    :cond_1
    nop

    .line 217
    :try_start_0
    invoke-virtual {p0, v0}, Lccsanandroid/net/ConnectivityManager;->getNetworkCapabilities(Lccsanandroid/net/Network;)Lccsanandroid/net/NetworkCapabilities;

    move-result-object v3

    .line 218
    .local v3, "networkCapabilities":Lccsanandroid/net/NetworkCapabilities;
    if-eqz v3, :cond_2

    const/16 v4, 0x10

    .line 219
    invoke-virtual {v3, v4}, Lccsanandroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 218
    :goto_0
    return v1

    .line 220
    .end local v3    # "networkCapabilities":Lccsanandroid/net/NetworkCapabilities;
    :catch_0
    move-exception v2

    .line 222
    .local v2, "e":Ljava/lang/SecurityException;
    return v1
.end method

.method private isStorageNotLow(Lccsanandroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 195
    new-instance v0, Lccsanandroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public checkRequirements(Lccsanandroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 126
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->getNotMetRequirements(Lccsanandroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 228
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 229
    return v0

    .line 231
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 234
    :cond_1
    iget v2, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    move-object v3, p1

    check-cast v3, Lccsancom/google/android/exoplayer2/scheduler/Requirements;

    iget v3, v3, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 232
    :cond_3
    :goto_1
    return v1
.end method

.method public filterRequirements(I)Lccsancom/google/android/exoplayer2/scheduler/Requirements;
    .locals 2
    .param p1, "requirementsFilter"    # I

    .line 90
    iget v0, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int v1, v0, p1

    .line 91
    .local v1, "filteredRequirements":I
    if-ne v1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public getNotMetRequirements(Lccsanandroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 137
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->getNotMetNetworkRequirements(Lccsanandroid/content/Context;)I

    move-result v0

    .line 138
    .local v0, "notMetRequirements":I
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->isChargingRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->isDeviceCharging(Lccsanandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    or-int/lit8 v0, v0, 0x8

    .line 141
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->isIdleRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->isDeviceIdle(Lccsanandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    or-int/lit8 v0, v0, 0x4

    .line 144
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->isStorageNotLowRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->isStorageNotLow(Lccsanandroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 145
    or-int/lit8 v0, v0, 0x10

    .line 147
    :cond_2
    return v0
.end method

.method public getRequirements()I
    .locals 1

    .line 79
    iget v0, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 239
    iget v0, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    return v0
.end method

.method public isChargingRequired()Z
    .locals 1

    .line 106
    iget v0, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIdleRequired()Z
    .locals 1

    .line 111
    iget v0, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkRequired()Z
    .locals 2

    .line 96
    iget v0, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isStorageNotLowRequired()Z
    .locals 1

    .line 116
    iget v0, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUnmeteredNetworkRequired()Z
    .locals 1

    .line 101
    iget v0, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Lccsanandroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Lccsanandroid/os/Parcel;
    .param p2, "flags"    # I

    .line 251
    iget v0, p0, Lccsancom/google/android/exoplayer2/scheduler/Requirements;->requirements:I

    invoke-virtual {p1, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 252
    return-void
.end method
