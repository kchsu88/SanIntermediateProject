.class public final Lccsancom/google/android/gms/common/internal/zzl;
.super Lccsancom/google/android/gms/internal/common/zza;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/IGmsCallbacks;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;-><init>(Lccsanandroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final onPostInitComplete(ILccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V
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
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V

    .line 6
    invoke-static {v0, p3}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/Parcelable;)V

    .line 7
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zzb(ILccsanandroid/os/Parcel;)V

    .line 8
    return-void
.end method

.method public final zza(ILccsanandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-static {v0, p2}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/Parcelable;)V

    .line 12
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zzb(ILccsanandroid/os/Parcel;)V

    .line 13
    return-void
.end method

.method public final zza(ILccsanandroid/os/IBinder;Lccsancom/google/android/gms/common/internal/zzb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V

    .line 17
    invoke-static {v0, p3}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/Parcelable;)V

    .line 18
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zzb(ILccsanandroid/os/Parcel;)V

    .line 19
    return-void
.end method
