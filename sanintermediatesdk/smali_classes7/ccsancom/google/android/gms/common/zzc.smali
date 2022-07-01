.class final Lccsancom/google/android/gms/common/zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static volatile zzn:Lccsancom/google/android/gms/common/internal/zzm;

.field private static final zzo:Ljava/lang/Object;

.field private static zzp:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/zzc;->zzo:Ljava/lang/Object;

    return-void
.end method

.method static zza(Ljava/lang/String;Lccsancom/google/android/gms/common/zze;Z)Lccsancom/google/android/gms/common/zzm;
    .locals 1

    .line 6
    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {p0, p1, p2}, Lccsancom/google/android/gms/common/zzc;->zzb(Ljava/lang/String;Lccsancom/google/android/gms/common/zze;Z)Lccsancom/google/android/gms/common/zzm;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method static final synthetic zza(ZLjava/lang/String;Lccsancom/google/android/gms/common/zze;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 38
    invoke-static {p1, p2, v0}, Lccsancom/google/android/gms/common/zzc;->zzb(Ljava/lang/String;Lccsancom/google/android/gms/common/zze;Z)Lccsancom/google/android/gms/common/zzm;

    move-result-object v1

    .line 39
    iget-boolean v1, v1, Lccsancom/google/android/gms/common/zzm;->zzac:Z

    .line 40
    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    invoke-static {p1, p2, p0, v0}, Lccsancom/google/android/gms/common/zzm;->zza(Ljava/lang/String;Lccsancom/google/android/gms/common/zze;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized zza(Lccsanandroid/content/Context;)V
    .locals 2

    const-class v0, Lccsancom/google/android/gms/common/zzc;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lccsancom/google/android/gms/common/zzc;->zzp:Lccsanandroid/content/Context;

    if-nez v1, :cond_0

    .line 2
    if-eqz p0, :cond_1

    .line 3
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    sput-object p0, Lccsancom/google/android/gms/common/zzc;->zzp:Lccsanandroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 4
    :cond_0
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static zzb(Ljava/lang/String;Lccsancom/google/android/gms/common/zze;Z)Lccsancom/google/android/gms/common/zzm;
    .locals 4

    .line 11
    :try_start_0
    sget-object v0, Lccsancom/google/android/gms/common/zzc;->zzn:Lccsancom/google/android/gms/common/internal/zzm;

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lccsancom/google/android/gms/common/zzc;->zzp:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lccsancom/google/android/gms/common/zzc;->zzo:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    sget-object v1, Lccsancom/google/android/gms/common/zzc;->zzn:Lccsancom/google/android/gms/common/internal/zzm;

    if-nez v1, :cond_0

    .line 15
    sget-object v1, Lccsancom/google/android/gms/common/zzc;->zzp:Lccsanandroid/content/Context;

    sget-object v2, Lccsancom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v3, "com.google.android.gms.googlecertificates"

    .line 16
    invoke-static {v1, v2, v3}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->load(Lccsanandroid/content/Context;Lccsancom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lccsancom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    .line 17
    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 18
    invoke-virtual {v1, v2}, Lccsancom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Lccsanandroid/os/IBinder;

    move-result-object v1

    .line 19
    invoke-static {v1}, Lccsancom/google/android/gms/common/internal/zzn;->zzc(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/common/internal/zzm;

    move-result-object v1

    sput-object v1, Lccsancom/google/android/gms/common/zzc;->zzn:Lccsancom/google/android/gms/common/internal/zzm;

    .line 20
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 21
    :cond_1
    nop

    .line 25
    :goto_0
    sget-object v0, Lccsancom/google/android/gms/common/zzc;->zzp:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lccsancom/google/android/gms/common/zzk;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/google/android/gms/common/zzk;-><init>(Ljava/lang/String;Lccsancom/google/android/gms/common/zze;Z)V

    .line 27
    :try_start_3
    sget-object v1, Lccsancom/google/android/gms/common/zzc;->zzn:Lccsancom/google/android/gms/common/internal/zzm;

    sget-object v2, Lccsancom/google/android/gms/common/zzc;->zzp:Lccsanandroid/content/Context;

    .line 28
    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageManager()Lccsanandroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lccsancom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 29
    invoke-interface {v1, v0, v2}, Lccsancom/google/android/gms/common/internal/zzm;->zza(Lccsancom/google/android/gms/common/zzk;Lccsancom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result v0
    :try_end_3
    .catch Lccsanandroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 30
    nop

    .line 34
    if-eqz v0, :cond_2

    .line 35
    invoke-static {}, Lccsancom/google/android/gms/common/zzm;->zze()Lccsancom/google/android/gms/common/zzm;

    move-result-object p0

    return-object p0

    .line 36
    :cond_2
    new-instance v0, Lccsancom/google/android/gms/common/zzd;

    invoke-direct {v0, p2, p0, p1}, Lccsancom/google/android/gms/common/zzd;-><init>(ZLjava/lang/String;Lccsancom/google/android/gms/common/zze;)V

    invoke-static {v0}, Lccsancom/google/android/gms/common/zzm;->zza(Ljava/util/concurrent/Callable;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p0

    return-object p0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    const-string p1, "module call"

    invoke-static {p1, p0}, Lccsancom/google/android/gms/common/zzm;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p0

    return-object p0

    .line 22
    :catch_1
    move-exception p0

    .line 23
    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    const-string p1, "module init: "

    invoke-virtual {p0}, Lccsancom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_1
    invoke-static {p1, p0}, Lccsancom/google/android/gms/common/zzm;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lccsancom/google/android/gms/common/zzm;

    move-result-object p0

    return-object p0
.end method
