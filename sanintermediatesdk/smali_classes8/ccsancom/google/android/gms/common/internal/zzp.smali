.class public final Lccsancom/google/android/gms/common/internal/zzp;
.super Ljava/lang/Object;


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static zzeo:Z

.field private static zzep:Ljava/lang/String;

.field private static zzeq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/internal/zzp;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public static zzc(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/google/android/gms/common/internal/zzp;->zze(Lccsanandroid/content/Context;)V

    .line 2
    sget-object p0, Lccsancom/google/android/gms/common/internal/zzp;->zzep:Ljava/lang/String;

    return-object p0
.end method

.method public static zzd(Lccsanandroid/content/Context;)I
    .locals 0

    .line 3
    invoke-static {p0}, Lccsancom/google/android/gms/common/internal/zzp;->zze(Lccsanandroid/content/Context;)V

    .line 4
    sget p0, Lccsancom/google/android/gms/common/internal/zzp;->zzeq:I

    return p0
.end method

.method private static zze(Lccsanandroid/content/Context;)V
    .locals 3

    .line 5
    sget-object v0, Lccsancom/google/android/gms/common/internal/zzp;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-boolean v1, Lccsancom/google/android/gms/common/internal/zzp;->zzeo:Z

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lccsancom/google/android/gms/common/internal/zzp;->zzeo:Z

    .line 9
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {p0}, Lccsancom/google/android/gms/common/wrappers/Wrappers;->packageManager(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/16 v2, 0x80

    :try_start_1
    invoke-virtual {p0, v1, v2}, Lccsancom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 12
    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->metaData:Lccsanandroid/os/Bundle;
    :try_end_1
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    if-nez p0, :cond_1

    .line 14
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 15
    :cond_1
    :try_start_3
    const-string v1, "com.google.app.id"

    invoke-virtual {p0, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lccsancom/google/android/gms/common/internal/zzp;->zzep:Ljava/lang/String;

    .line 16
    const-string v1, "com.google.android.gms.version"

    .line 17
    invoke-virtual {p0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Lccsancom/google/android/gms/common/internal/zzp;->zzeq:I
    :try_end_3
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    :try_start_4
    const-string v1, "MetadataValueReader"

    const-string v2, "This should never happen."

    invoke-static {v1, v2, p0}, Lccsanandroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
