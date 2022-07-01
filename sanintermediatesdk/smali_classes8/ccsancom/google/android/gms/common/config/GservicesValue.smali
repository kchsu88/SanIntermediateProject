.class public abstract Lccsancom/google/android/gms/common/config/GservicesValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/common/config/GservicesValue$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzbl:Lccsancom/google/android/gms/common/config/GservicesValue$zza;

.field private static zzbm:I

.field private static zzbn:Lccsanandroid/content/Context;

.field private static zzbo:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mKey:Ljava/lang/String;

.field protected final zzbp:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private zzbq:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lccsancom/google/android/gms/common/config/GservicesValue;->zzbl:Lccsancom/google/android/gms/common/config/GservicesValue$zza;

    .line 47
    const/4 v0, 0x0

    sput v0, Lccsancom/google/android/gms/common/config/GservicesValue;->zzbm:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/gms/common/config/GservicesValue;->zzbq:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Lccsancom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lccsancom/google/android/gms/common/config/GservicesValue;->zzbp:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public static isInitialized()Z
    .locals 2

    .line 1
    sget-object v0, Lccsancom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return v1

    .line 3
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Float;)Lccsancom/google/android/gms/common/config/GservicesValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ")",
            "Lccsancom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Lccsancom/google/android/gms/common/config/zzd;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/gms/common/config/zzd;-><init>(Ljava/lang/String;Ljava/lang/Float;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Integer;)Lccsancom/google/android/gms/common/config/GservicesValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lccsancom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Lccsancom/google/android/gms/common/config/zzc;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/gms/common/config/zzc;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Long;)Lccsancom/google/android/gms/common/config/GservicesValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Lccsancom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lccsancom/google/android/gms/common/config/zzb;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/gms/common/config/zzb;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Ljava/lang/String;)Lccsancom/google/android/gms/common/config/GservicesValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lccsancom/google/android/gms/common/config/zze;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/gms/common/config/zze;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static value(Ljava/lang/String;Z)Lccsancom/google/android/gms/common/config/GservicesValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lccsancom/google/android/gms/common/config/GservicesValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lccsancom/google/android/gms/common/config/zza;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/gms/common/config/zza;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static zzi()Z
    .locals 2

    .line 4
    sget-object v0, Lccsancom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return v1

    .line 6
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lccsancom/google/android/gms/common/config/GservicesValue;->zzbq:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-static {}, Lccsanandroid/os/StrictMode;->allowThreadDiskReads()Lccsanandroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 22
    sget-object v1, Lccsancom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 23
    :try_start_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 24
    monitor-enter v1

    .line 25
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lccsancom/google/android/gms/common/config/GservicesValue;->zzbo:Ljava/util/HashSet;

    .line 26
    sput-object v2, Lccsancom/google/android/gms/common/config/GservicesValue;->zzbn:Lccsanandroid/content/Context;

    .line 27
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 28
    :try_start_2
    iget-object v1, p0, Lccsancom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lccsancom/google/android/gms/common/config/GservicesValue;->zzd(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    .line 30
    return-object v1

    .line 38
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    :try_start_3
    invoke-static {}, Lccsanandroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 33
    :try_start_4
    iget-object v3, p0, Lccsancom/google/android/gms/common/config/GservicesValue;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lccsancom/google/android/gms/common/config/GservicesValue;->zzd(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 34
    :try_start_5
    invoke-static {v1, v2}, Lccsanandroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 35
    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    .line 36
    return-object v3

    .line 37
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-static {v1, v2}, Lccsanandroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 38
    :goto_0
    invoke-static {v0}, Lccsanandroid/os/StrictMode;->setThreadPolicy(Lccsanandroid/os/StrictMode$ThreadPolicy;)V

    throw v1

    .line 27
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 23
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public final getBinderSafe()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public override(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 12
    const-string v0, "GservicesValue"

    const-string v1, "GservicesValue.override(): test should probably call initForTests() first"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput-object p1, p0, Lccsancom/google/android/gms/common/config/GservicesValue;->zzbq:Ljava/lang/Object;

    .line 14
    sget-object p1, Lccsancom/google/android/gms/common/config/GservicesValue;->sLock:Ljava/lang/Object;

    monitor-enter p1

    .line 15
    :try_start_0
    invoke-static {}, Lccsancom/google/android/gms/common/config/GservicesValue;->zzi()Z

    .line 16
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetOverride()V
    .locals 1

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/gms/common/config/GservicesValue;->zzbq:Ljava/lang/Object;

    .line 18
    return-void
.end method

.method protected abstract zzd(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
