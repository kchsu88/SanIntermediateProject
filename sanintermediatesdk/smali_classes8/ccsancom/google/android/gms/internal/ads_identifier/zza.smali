.class public Lccsancom/google/android/gms/internal/ads_identifier/zza;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/os/IInterface;


# instance fields
.field private final zza:Lccsanandroid/os/IBinder;

.field private final zzb:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lccsanandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/google/android/gms/internal/ads_identifier/zza;->zza:Lccsanandroid/os/IBinder;

    iput-object p2, p0, Lccsancom/google/android/gms/internal/ads_identifier/zza;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lccsancom/google/android/gms/internal/ads_identifier/zza;->zza:Lccsanandroid/os/IBinder;

    return-object v0
.end method

.method protected final obtainAndWriteInterfaceToken()Lccsanandroid/os/Parcel;
    .locals 2

    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/gms/internal/ads_identifier/zza;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final transactAndReadException(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lccsancom/google/android/gms/internal/ads_identifier/zza;->zza:Lccsanandroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->readException()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->recycle()V

    throw p1
.end method
