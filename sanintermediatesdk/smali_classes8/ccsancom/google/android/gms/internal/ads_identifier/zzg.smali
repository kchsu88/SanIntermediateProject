.class public final Lccsancom/google/android/gms/internal/ads_identifier/zzg;
.super Lccsancom/google/android/gms/internal/ads_identifier/zza;

# interfaces
.implements Lccsancom/google/android/gms/internal/ads_identifier/zze;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/internal/ads_identifier/zza;-><init>(Lccsanandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/ads_identifier/zza;->obtainAndWriteInterfaceToken()Lccsanandroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/gms/internal/ads_identifier/zza;->transactAndReadException(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final zzb(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/ads_identifier/zza;->obtainAndWriteInterfaceToken()Lccsanandroid/os/Parcel;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/google/android/gms/internal/ads_identifier/zzc;->zza(Lccsanandroid/os/Parcel;Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lccsancom/google/android/gms/internal/ads_identifier/zza;->transactAndReadException(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object p1

    invoke-static {p1}, Lccsancom/google/android/gms/internal/ads_identifier/zzc;->zza(Lccsanandroid/os/Parcel;)Z

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->recycle()V

    return v0
.end method

.method public final zzc()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/ads_identifier/zza;->obtainAndWriteInterfaceToken()Lccsanandroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/gms/internal/ads_identifier/zza;->transactAndReadException(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/gms/internal/ads_identifier/zzc;->zza(Lccsanandroid/os/Parcel;)Z

    move-result v1

    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return v1
.end method
