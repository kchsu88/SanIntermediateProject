.class public final Lccsancom/google/android/gms/dynamite/zzj;
.super Lccsancom/google/android/gms/internal/common/zza;

# interfaces
.implements Lccsancom/google/android/gms/dynamite/zzi;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;-><init>(Lccsanandroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zza(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 12
    invoke-static {v0, p1}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/IInterface;)V

    .line 13
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    invoke-static {v0, p3}, Lccsancom/google/android/gms/internal/common/zzc;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 15
    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p2

    .line 17
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 18
    return p2
.end method

.method public final zza(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamic/IObjectWrapper;
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
    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lccsancom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 10
    return-object p2
.end method

.method public final zzaj()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 36
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    .line 38
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 39
    return v1
.end method

.method public final zzb(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 28
    invoke-static {v0, p1}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/IInterface;)V

    .line 29
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    invoke-static {v0, p3}, Lccsancom/google/android/gms/internal/common/zzc;->writeBoolean(Lccsanandroid/os/Parcel;Z)V

    .line 31
    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p2

    .line 33
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 34
    return p2
.end method

.method public final zzb(Lccsancom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lccsancom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 20
    invoke-static {v0, p1}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/IInterface;)V

    .line 21
    invoke-virtual {v0, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p3}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 23
    const/4 p1, 0x4

    invoke-virtual {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lccsancom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 25
    invoke-virtual {p1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 26
    return-object p2
.end method
