.class final Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;
.super Lccsancom/google/android/gms/internal/common/zze;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/BaseGmsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zzb"
.end annotation


# instance fields
.field private final synthetic zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;


# direct methods
.method public constructor <init>(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    .line 2
    invoke-direct {p0, p2}, Lccsancom/google/android/gms/internal/common/zze;-><init>(Lccsanandroid/os/Looper;)V

    .line 3
    return-void
.end method

.method private static zza(Lccsanandroid/os/Message;)V
    .locals 0

    .line 52
    iget-object p0, p0, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzc;

    .line 53
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzn()V

    .line 54
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzc;->unregister()V

    .line 55
    return-void
.end method

.method private static zzb(Lccsanandroid/os/Message;)Z
    .locals 3

    .line 56
    iget v0, p0, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lccsanandroid/os/Message;->what:I

    if-eq v0, v1, :cond_1

    iget p0, p0, Lccsanandroid/os/Message;->what:I

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)V
    .locals 7

    .line 4
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzcq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Lccsanandroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    .line 5
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzb(Lccsanandroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza(Lccsanandroid/os/Message;)V

    .line 7
    :cond_0
    return-void

    .line 8
    :cond_1
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v0, v2, :cond_2

    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v0, v4, :cond_2

    iget v0, p1, Lccsanandroid/os/Message;->what:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lccsanandroid/os/Message;->what:I

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    .line 9
    invoke-virtual {v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza(Lccsanandroid/os/Message;)V

    .line 11
    return-void

    .line 12
    :cond_3
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ne v0, v1, :cond_6

    .line 13
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    new-instance v1, Lccsancom/google/android/gms/common/ConnectionResult;

    iget p1, p1, Lccsanandroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Lccsancom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-static {v0, v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;Lccsancom/google/android/gms/common/ConnectionResult;)Lccsancom/google/android/gms/common/ConnectionResult;

    .line 14
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzb(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzc(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1, v5, v6}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;ILccsanandroid/os/IInterface;)V

    .line 16
    return-void

    .line 17
    :cond_4
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_0

    .line 19
    :cond_5
    new-instance p1, Lccsancom/google/android/gms/common/ConnectionResult;

    invoke-direct {p1, v4}, Lccsancom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 20
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzce:Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 21
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 22
    return-void

    .line 23
    :cond_6
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    if-ne v0, v3, :cond_8

    .line 24
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 25
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzd(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/ConnectionResult;

    move-result-object p1

    goto :goto_1

    .line 26
    :cond_7
    new-instance p1, Lccsancom/google/android/gms/common/ConnectionResult;

    invoke-direct {p1, v4}, Lccsancom/google/android/gms/common/ConnectionResult;-><init>(I)V

    .line 27
    :goto_1
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget-object v0, v0, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzce:Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 28
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 29
    return-void

    .line 30
    :cond_8
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    if-ne v0, v5, :cond_a

    .line 31
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lccsanandroid/app/PendingIntent;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lccsanandroid/app/PendingIntent;

    .line 32
    :cond_9
    new-instance v0, Lccsancom/google/android/gms/common/ConnectionResult;

    iget p1, p1, Lccsanandroid/os/Message;->arg2:I

    invoke-direct {v0, p1, v6}, Lccsancom/google/android/gms/common/ConnectionResult;-><init>(ILccsanandroid/app/PendingIntent;)V

    .line 33
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget-object p1, p1, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zzce:Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;

    invoke-interface {p1, v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;->onReportServiceBinding(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 34
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {p1, v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onConnectionFailed(Lccsancom/google/android/gms/common/ConnectionResult;)V

    .line 35
    return-void

    .line 36
    :cond_a
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    .line 37
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0, v3, v6}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;ILccsanandroid/os/IInterface;)V

    .line 38
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zze(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 39
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zze(Lccsancom/google/android/gms/common/internal/BaseGmsClient;)Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;

    move-result-object v0

    iget v1, p1, Lccsanandroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;->onConnectionSuspended(I)V

    .line 40
    :cond_b
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    iget p1, p1, Lccsanandroid/os/Message;->arg2:I

    invoke-virtual {v0, p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->onConnectionSuspended(I)V

    .line 41
    iget-object p1, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-static {p1, v3, v2, v6}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->zza(Lccsancom/google/android/gms/common/internal/BaseGmsClient;IILccsanandroid/os/IInterface;)Z

    .line 42
    return-void

    .line 43
    :cond_c
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzcs:Lccsancom/google/android/gms/common/internal/BaseGmsClient;

    invoke-virtual {v0}, Lccsancom/google/android/gms/common/internal/BaseGmsClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    .line 44
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zza(Lccsanandroid/os/Message;)V

    .line 45
    return-void

    .line 46
    :cond_d
    invoke-static {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzb;->zzb(Lccsanandroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzc;

    .line 48
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/internal/BaseGmsClient$zzc;->zzo()V

    .line 49
    return-void

    .line 50
    :cond_e
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    const/16 v0, 0x2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Don\'t know how to handle message: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GmsClient"

    invoke-static {v1, p1, v0}, Lccsanandroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    return-void
.end method
