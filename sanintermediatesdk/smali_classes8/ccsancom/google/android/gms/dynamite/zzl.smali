.class public final Lccsancom/google/android/gms/dynamite/zzl;
.super Lccsancom/google/android/gms/internal/common/zza;

# interfaces
.implements Lccsancom/google/android/gms/dynamite/zzk;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;-><init>(Lccsanandroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILccsancom/google/android/gms/dynamic/IObjectWrapper;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;
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
    invoke-static {v0, p1}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/IInterface;)V

    .line 5
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p3}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-static {v0, p4}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/IInterface;)V

    .line 8
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lccsancom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 10
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 11
    return-object p2
.end method

.method public final zzb(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILccsancom/google/android/gms/dynamic/IObjectWrapper;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/IInterface;)V

    .line 14
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p3}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-static {v0, p4}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/IInterface;)V

    .line 17
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lccsancom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 19
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 20
    return-object p2
.end method
