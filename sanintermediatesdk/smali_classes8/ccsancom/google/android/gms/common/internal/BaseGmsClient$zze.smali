.class public final Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zze"
.end annotation


# instance fields
.field private final synthetic zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzcw:I


# direct methods
.method public constructor <init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcw:I

    .line 3
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V
    .locals 4

    .line 4
    if-nez p2, :cond_0

    .line 5
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;I)V

    .line 6
    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    .line 9
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 10
    move-object v2, v1

    goto :goto_0

    .line 11
    :cond_1
    const-string v2, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-interface {p2, v2}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v2

    .line 12
    if-eqz v2, :cond_2

    instance-of v3, v2, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

    if-eqz v3, :cond_2

    .line 13
    check-cast v2, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

    goto :goto_0

    .line 14
    :cond_2
    new-instance v2, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;

    invoke-direct {v2, p2}, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;-><init>(Lccsanandroid/os/IBinder;)V

    .line 15
    :goto_0
    invoke-static {v0, v2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;)Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 16
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    const/4 p2, 0x0

    iget v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcw:I

    invoke-virtual {p1, p2, v1, v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(ILccsanandroid/os/Bundle;I)V

    .line 18
    return-void

    .line 16
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Lccsanandroid/content/ComponentName;)V
    .locals 4

    .line 19
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 20
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;)Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget-object p1, p1, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Lccsanandroid/os/Handler;

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->mHandler:Lccsanandroid/os/Handler;

    const/4 v1, 0x6

    iget v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zze;->zzcw:I

    const/4 v3, 0x1

    .line 23
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->obtainMessage(III)Lccsanandroid/os/Message;

    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z

    .line 25
    return-void

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
