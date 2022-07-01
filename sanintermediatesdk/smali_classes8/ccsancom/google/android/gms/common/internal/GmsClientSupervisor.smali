.class public abstract Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;
    }
.end annotation


# static fields
.field private static final zzdp:Ljava/lang/Object;

.field private static zzdq:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zzdp:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Lccsanandroid/content/Context;)Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;
    .locals 2

    .line 2
    sget-object v0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zzdp:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zzdq:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsancom/google/android/gms/common/internal/zze;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lccsancom/google/android/gms/common/internal/zze;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zzdq:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    sget-object p0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zzdq:Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

    return-object p0

    .line 5
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public bindService(Lccsanandroid/content/ComponentName;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 2

    .line 8
    new-instance v0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    const/16 v1, 0x81

    invoke-direct {v0, p1, v1}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Lccsanandroid/content/ComponentName;I)V

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bindService(Ljava/lang/String;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 2

    .line 7
    new-instance v0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    const/16 v1, 0x81

    invoke-direct {v0, p1, v1}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zza(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public unbindService(Lccsanandroid/content/ComponentName;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    .line 13
    new-instance v0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    const/16 v1, 0x81

    invoke-direct {v0, p1, v1}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Lccsanandroid/content/ComponentName;I)V

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zzb(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public unbindService(Ljava/lang/String;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2

    .line 9
    new-instance v0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    const/16 v1, 0x81

    invoke-direct {v0, p1, v1}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zzb(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/String;ILccsanandroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 1

    .line 11
    new-instance v0, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p4, p5}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;->zzb(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method protected abstract zza(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)Z
.end method

.method protected abstract zzb(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V
.end method
