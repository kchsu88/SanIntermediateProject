.class public abstract Lccsancom/google/android/gms/common/internal/zzj;
.super Lccsancom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/zzi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-direct {p0, v0}, Lccsancom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method

.method public static zzb(Lccsanandroid/os/IBinder;)Lccsancom/google/android/gms/common/internal/zzi;
    .locals 2

    .line 3
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    const-string v0, "com.google.android.gms.common.internal.ICertData"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lccsancom/google/android/gms/common/internal/zzi;

    if-eqz v1, :cond_1

    .line 7
    check-cast v0, Lccsancom/google/android/gms/common/internal/zzi;

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Lccsancom/google/android/gms/common/internal/zzk;

    invoke-direct {v0, p0}, Lccsancom/google/android/gms/common/internal/zzk;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final zza(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 9
    packed-switch p1, :pswitch_data_0

    .line 18
    const/4 p1, 0x0

    return p1

    .line 14
    :pswitch_0
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/zzj;->zzc()I

    move-result p1

    .line 15
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 16
    invoke-virtual {p3, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 17
    goto :goto_0

    .line 10
    :pswitch_1
    invoke-virtual {p0}, Lccsancom/google/android/gms/common/internal/zzj;->zzb()Lccsancom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-static {p3, p1}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/IInterface;)V

    .line 13
    nop

    .line 19
    :goto_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
