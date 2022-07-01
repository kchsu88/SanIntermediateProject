.class public final Lccsancom/google/android/gms/common/internal/zzk;
.super Lccsancom/google/android/gms/internal/common/zza;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/zzi;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/gms/internal/common/zza;-><init>(Lccsanandroid/os/IBinder;Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method public final zzb()Lccsancom/google/android/gms/dynamic/IObjectWrapper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 4
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 7
    return-object v1
.end method

.method public final zzc()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lccsancom/google/android/gms/internal/common/zza;->zza()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 9
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/gms/internal/common/zza;->zza(ILccsanandroid/os/Parcel;)Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v1

    .line 11
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 12
    return v1
.end method
