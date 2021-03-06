.class public final Lccsancom/google/android/gms/common/util/DeviceProperties;
.super Ljava/lang/Object;


# static fields
.field private static zzgl:Ljava/lang/Boolean;

.field private static zzgm:Ljava/lang/Boolean;

.field private static zzgn:Ljava/lang/Boolean;

.field private static zzgo:Ljava/lang/Boolean;

.field private static zzgp:Ljava/lang/Boolean;

.field private static zzgq:Ljava/lang/Boolean;

.field private static zzgr:Ljava/lang/Boolean;

.field private static zzgs:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAuto(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 42
    sget-object v0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgr:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 43
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 45
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgr:Ljava/lang/Boolean;

    .line 46
    :cond_1
    sget-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgr:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isLatchsky(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 29
    sget-object v0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgp:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 30
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    .line 31
    nop

    .line 32
    const-string v0, "com.google.android.feature.services_updater"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string v0, "cn.google.services"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgp:Ljava/lang/Boolean;

    .line 35
    :cond_1
    sget-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgp:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSidewinder(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 24
    sget-object v0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgo:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 25
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastLollipop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "cn.google"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 27
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgo:Ljava/lang/Boolean;

    .line 28
    :cond_1
    sget-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgo:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isTablet(Lccsanandroid/content/res/Resources;)Z
    .locals 4

    .line 2
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3
    return v0

    .line 4
    :cond_0
    sget-object v1, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgl:Ljava/lang/Boolean;

    if-nez v1, :cond_6

    .line 5
    nop

    .line 6
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Lccsanandroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-nez v1, :cond_4

    .line 8
    sget-object v1, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgm:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p0

    .line 10
    iget v1, p0, Lccsanandroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    if-gt v1, v2, :cond_2

    iget p0, p0, Lccsanandroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt p0, v1, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    .line 11
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgm:Ljava/lang/Boolean;

    .line 12
    :cond_3
    sget-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgm:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 13
    if-eqz p0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgl:Ljava/lang/Boolean;

    .line 14
    :cond_6
    sget-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgl:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isTv(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 47
    sget-object v0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgs:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 48
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    .line 49
    nop

    .line 50
    const-string v0, "com.google.android.tv"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    const-string v0, "android.hardware.type.television"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 53
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgs:Ljava/lang/Boolean;

    .line 54
    :cond_2
    sget-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgs:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isUserBuild()Z
    .locals 2

    .line 55
    sget-object v0, Lccsanandroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isWearable(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 15
    sget-object v0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgn:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 16
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.watch"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgn:Ljava/lang/Boolean;

    .line 19
    :cond_1
    sget-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgn:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isWearableWithoutPlayStore(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 20
    invoke-static {p0}, Lccsancom/google/android/gms/common/util/DeviceProperties;->isWearable(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0}, Lccsancom/google/android/gms/common/util/DeviceProperties;->isSidewinder(Lccsanandroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    .line 23
    return p0
.end method

.method public static zzf(Lccsanandroid/content/Context;)Z
    .locals 2

    .line 36
    sget-object v0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgq:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.iot"

    invoke-virtual {v0, v1}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p0, v0}, Lccsanandroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 40
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgq:Ljava/lang/Boolean;

    .line 41
    :cond_2
    sget-object p0, Lccsancom/google/android/gms/common/util/DeviceProperties;->zzgq:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
