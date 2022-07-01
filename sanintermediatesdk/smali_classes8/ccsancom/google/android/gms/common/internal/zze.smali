.class final Lccsancom/google/android/gms/common/internal/zze;
.super Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# instance fields
.field private final mHandler:Lccsanandroid/os/Handler;

.field private final zzdu:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;",
            "Lccsancom/google/android/gms/common/internal/zzf;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdv:Lccsanandroid/content/Context;

.field private final zzdw:Lccsancom/google/android/gms/common/stats/ConnectionTracker;

.field private final zzdx:J

.field private final zzdy:J


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    .line 3
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdv:Lccsanandroid/content/Context;

    .line 4
    new-instance v0, Lccsancom/google/android/gms/internal/common/zze;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lccsancom/google/android/gms/internal/common/zze;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    iput-object v0, p0, Lccsancom/google/android/gms/common/internal/zze;->mHandler:Lccsanandroid/os/Handler;

    .line 5
    invoke-static {}, Lccsancom/google/android/gms/common/stats/ConnectionTracker;->getInstance()Lccsancom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdw:Lccsancom/google/android/gms/common/stats/ConnectionTracker;

    .line 6
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdx:J

    .line 7
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdy:J

    .line 8
    return-void
.end method

.method static synthetic zza(Lccsancom/google/android/gms/common/internal/zze;)Ljava/util/HashMap;
    .locals 0

    .line 63
    iget-object p0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic zzb(Lccsancom/google/android/gms/common/internal/zze;)Lccsanandroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lccsancom/google/android/gms/common/internal/zze;->mHandler:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method static synthetic zzc(Lccsancom/google/android/gms/common/internal/zze;)Lccsanandroid/content/Context;
    .locals 0

    .line 65
    iget-object p0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdv:Lccsanandroid/content/Context;

    return-object p0
.end method

.method static synthetic zzd(Lccsancom/google/android/gms/common/internal/zze;)Lccsancom/google/android/gms/common/stats/ConnectionTracker;
    .locals 0

    .line 66
    iget-object p0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdw:Lccsancom/google/android/gms/common/stats/ConnectionTracker;

    return-object p0
.end method

.method static synthetic zze(Lccsancom/google/android/gms/common/internal/zze;)J
    .locals 2

    .line 67
    iget-wide v0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdy:J

    return-wide v0
.end method


# virtual methods
.method public final handleMessage(Lccsanandroid/os/Message;)Z
    .locals 7

    .line 39
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 62
    const/4 p1, 0x0

    return p1

    .line 49
    :pswitch_0
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 51
    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/gms/common/internal/zzf;

    .line 52
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lccsancom/google/android/gms/common/internal/zzf;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 53
    const-string v3, "GmsClientSupervisor"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Timeout waiting for ServiceConnection callback "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Lccsanandroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    invoke-virtual {v2}, Lccsancom/google/android/gms/common/internal/zzf;->getComponentName()Lccsanandroid/content/ComponentName;

    move-result-object v3

    .line 55
    if-nez v3, :cond_0

    .line 56
    invoke-virtual {p1}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->getComponentName()Lccsanandroid/content/ComponentName;

    move-result-object v3

    .line 57
    :cond_0
    if-nez v3, :cond_1

    .line 58
    new-instance v3, Lccsanandroid/content/ComponentName;

    invoke-virtual {p1}, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;->getPackage()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "unknown"

    invoke-direct {v3, p1, v4}, Lccsanandroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-virtual {v2, v3}, Lccsancom/google/android/gms/common/internal/zzf;->onServiceDisconnected(Lccsanandroid/content/ComponentName;)V

    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return v1

    .line 60
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 40
    :pswitch_1
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 41
    :try_start_1
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;

    .line 42
    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/gms/common/internal/zzf;

    .line 43
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lccsancom/google/android/gms/common/internal/zzf;->zzr()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 44
    invoke-virtual {v2}, Lccsancom/google/android/gms/common/internal/zzf;->isBound()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    const-string v3, "GmsClientSupervisor"

    invoke-virtual {v2, v3}, Lccsancom/google/android/gms/common/internal/zzf;->zzf(Ljava/lang/String;)V

    .line 46
    :cond_3
    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_4
    monitor-exit v0

    .line 48
    return v1

    .line 47
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zza(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)Z
    .locals 4

    .line 9
    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/internal/zzf;

    .line 12
    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lccsancom/google/android/gms/common/internal/zzf;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/gms/common/internal/zzf;-><init>(Lccsancom/google/android/gms/common/internal/zze;Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;)V

    .line 14
    invoke-virtual {v1, p2, p3}, Lccsancom/google/android/gms/common/internal/zzf;->zza(Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1, p3}, Lccsancom/google/android/gms/common/internal/zzf;->zze(Ljava/lang/String;)V

    .line 16
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Lccsancom/google/android/gms/common/internal/zze;->mHandler:Lccsanandroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Lccsanandroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p2}, Lccsancom/google/android/gms/common/internal/zzf;->zza(Lccsanandroid/content/ServiceConnection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 20
    invoke-virtual {v1, p2, p3}, Lccsancom/google/android/gms/common/internal/zzf;->zza(Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/internal/zzf;->getState()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 24
    :pswitch_0
    invoke-virtual {v1, p3}, Lccsancom/google/android/gms/common/internal/zzf;->zze(Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_1
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/internal/zzf;->getComponentName()Lccsanandroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1}, Lccsancom/google/android/gms/common/internal/zzf;->getBinder()Lccsanandroid/os/IBinder;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lccsanandroid/content/ServiceConnection;->onServiceConnected(Lccsanandroid/content/ComponentName;Lccsanandroid/os/IBinder;)V

    .line 23
    nop

    .line 25
    :goto_0
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/internal/zzf;->isBound()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 19
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x51

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to bind a GmsServiceConnection that was already connected before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 26
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final zzb(Lccsancom/google/android/gms/common/internal/GmsClientSupervisor$zza;Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    .line 27
    const-string v0, "ServiceConnection must not be null"

    invoke-static {p2, v0}, Lccsancom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    monitor-enter v0

    .line 29
    :try_start_0
    iget-object v1, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdu:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/gms/common/internal/zzf;

    .line 30
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {v1, p2}, Lccsancom/google/android/gms/common/internal/zzf;->zza(Lccsanandroid/content/ServiceConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v1, p2, p3}, Lccsancom/google/android/gms/common/internal/zzf;->zzb(Lccsanandroid/content/ServiceConnection;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Lccsancom/google/android/gms/common/internal/zzf;->zzr()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/zze;->mHandler:Lccsanandroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/zze;->mHandler:Lccsanandroid/os/Handler;

    iget-wide v1, p0, Lccsancom/google/android/gms/common/internal/zze;->zzdx:J

    invoke-virtual {p2, p1, v1, v2}, Lccsanandroid/os/Handler;->sendMessageDelayed(Lccsanandroid/os/Message;J)Z

    .line 38
    :cond_0
    monitor-exit v0

    return-void

    .line 33
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Trying to unbind a GmsServiceConnection  that was not bound before.  config="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 31
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Nonexistent connection status for service config: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
