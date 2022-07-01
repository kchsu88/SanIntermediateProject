.class public final Lccsancom/google/android/gms/common/internal/zzo;
.super Lccsancom/google/android/gms/internal/common/zza;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/zzm;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;-><init>(Lccsanandroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza(Lccsancom/google/android/gms/common/zzk;Lccsancom/google/android/gms/dynamic/IObjectWrapper;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-static {v0, p1}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p2}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/IInterface;)V

    .line 6
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;)Z

    move-result p2

    .line 8
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 9
    return p2
.end method
