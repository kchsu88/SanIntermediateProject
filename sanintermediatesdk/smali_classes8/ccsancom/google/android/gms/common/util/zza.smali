.class public final Lccsancom/google/android/gms/common/util/zza;
.super Ljava/lang/Object;


# static fields
.field private static final filter:Lccsanandroid/content/IntentFilter;

.field private static zzgt:J

.field private static zzgu:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lccsanandroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Lccsanandroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccsancom/google/android/gms/common/util/zza;->filter:Lccsanandroid/content/IntentFilter;

    .line 25
    const/high16 v0, 0x7fc00000    # Float.NaN

    sput v0, Lccsancom/google/android/gms/common/util/zza;->zzgu:F

    return-void
.end method

.method public static zzg(Lccsanandroid/content/Context;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lccsancom/google/android/gms/common/util/zza;->filter:Lccsanandroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 4
    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v3, "plugged"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 5
    :goto_0
    and-int/lit8 v1, v1, 0x7

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 6
    :cond_2
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/os/PowerManager;

    .line 7
    if-nez p0, :cond_3

    .line 8
    return v0

    .line 9
    :cond_3
    nop

    .line 10
    invoke-static {}, Lccsancom/google/android/gms/common/util/PlatformVersion;->isAtLeastKitKatWatch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lccsanandroid/os/PowerManager;->isInteractive()Z

    move-result p0

    goto :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0}, Lccsanandroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    .line 13
    :goto_1
    shl-int/2addr p0, v3

    or-int/2addr p0, v2

    return p0

    .line 2
    :cond_5
    :goto_2
    return v0
.end method

.method public static declared-synchronized zzh(Lccsanandroid/content/Context;)F
    .locals 6

    const-class v0, Lccsancom/google/android/gms/common/util/zza;

    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-wide v3, Lccsancom/google/android/gms/common/util/zza;->zzgt:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    sget v1, Lccsancom/google/android/gms/common/util/zza;->zzgu:F

    .line 15
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    sget p0, Lccsancom/google/android/gms/common/util/zza;->zzgu:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    const/4 v1, 0x0

    sget-object v2, Lccsancom/google/android/gms/common/util/zza;->filter:Lccsanandroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lccsanandroid/content/Context;->registerReceiver(Lccsanandroid/content/BroadcastReceiver;Lccsanandroid/content/IntentFilter;)Lccsanandroid/content/Intent;

    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 20
    const-string/jumbo v3, "scale"

    invoke-virtual {p0, v3, v2}, Lccsanandroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 21
    int-to-float v1, v1

    int-to-float p0, p0

    div-float/2addr v1, p0

    sput v1, Lccsancom/google/android/gms/common/util/zza;->zzgu:F

    .line 22
    :cond_1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lccsancom/google/android/gms/common/util/zza;->zzgt:J

    .line 23
    sget p0, Lccsancom/google/android/gms/common/util/zza;->zzgu:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    .line 13
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
