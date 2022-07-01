.class public final Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;
.super Lccsancom/google/android/gms/common/internal/BaseGmsClient$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "zzf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/gms/common/internal/BaseGmsClient$zza;"
    }
.end annotation


# instance fields
.field private final synthetic zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

.field private final zzcx:Lccsanandroid/os/IBinder;


# direct methods
.method public constructor <init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;ILccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zza;-><init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;ILccsanandroid/os/Bundle;)V

    .line 3
    iput-object p3, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcx:Lccsanandroid/os/IBinder;

    .line 4
    return-void
.end method


# virtual methods
.method protected final zza(Lccsancom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzg(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;->onConnectionFailed(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 8
    return-void
.end method

.method protected final zzm()Z
    .locals 6

    .line 9
    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcx:Lccsanandroid/os/IBinder;

    invoke-interface {v2}, Lccsanandroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lccsanandroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    nop

    .line 14
    iget-object v3, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v3}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 15
    iget-object v3, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v3}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getServiceDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "service descriptor mismatch: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return v1

    .line 17
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcx:Lccsanandroid/os/IBinder;

    invoke-virtual {v0, v2}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->createServiceInterface(Lccsanandroid/os/IBinder;)Lccsanandroid/os/IInterface;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;IILccsanandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v3, 0x3

    .line 20
    invoke-static {v2, v3, v4, v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;IILccsanandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsancom/google/android/gms/common/ConnectionResult;)Lccsancom/google/android/gms/common/ConnectionResult;

    .line 22
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->getConnectionHint()Lccsanandroid/os/Bundle;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zze(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 24
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzf;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zze(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnected(Lccsanandroid/os/Bundle;)V

    .line 25
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 26
    :cond_3
    return v1

    .line 11
    :catch_0
    move-exception v2

    .line 12
    const-string/jumbo v2, "service probably died"

    invoke-static {v0, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    return v1
.end method
