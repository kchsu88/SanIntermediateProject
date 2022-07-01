.class public abstract Lccsancom/google/android/gms/common/internal/IGmsCallbacks$zza;
.super Lccsancom/google/android/gms/internal/common/zzb;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/IGmsCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/IGmsCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-direct {p0, v0}, Lccsancom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    .line 2
    return-void
.end method


# virtual methods
.method protected final zza(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 18
    const/4 p1, 0x0

    return p1

    .line 13
    :pswitch_0
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    .line 14
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p4

    .line 15
    sget-object v0, Lccsancom/google/android/gms/common/internal/zzb;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/Parcelable$Creator;)Lccsanandroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lccsancom/google/android/gms/common/internal/zzb;

    .line 16
    invoke-virtual {p0, p1, p4, p2}, Lccsancom/google/android/gms/common/internal/IGmsCallbacks$zza;->zza(ILccsanandroid/os/IBinder;Lccsancom/google/android/gms/common/internal/zzb;)V

    .line 17
    goto :goto_0

    .line 9
    :pswitch_1
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    .line 10
    sget-object p4, Lccsanandroid/os/Bundle;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/Parcelable$Creator;)Lccsanandroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lccsanandroid/os/Bundle;

    .line 11
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/gms/common/internal/IGmsCallbacks$zza;->zza(ILccsanandroid/os/Bundle;)V

    .line 12
    goto :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    .line 5
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p4

    .line 6
    sget-object v0, Lccsanandroid/os/Bundle;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lccsancom/google/android/gms/internal/common/zzc;->zza(Lccsanandroid/os/Parcel;Lccsanandroid/os/Parcelable$Creator;)Lccsanandroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lccsanandroid/os/Bundle;

    .line 7
    invoke-virtual {p0, p1, p4, p2}, Lccsancom/google/android/gms/common/internal/IGmsCallbacks$zza;->onPostInitComplete(ILccsanandroid/os/IBinder;Lccsanandroid/os/Bundle;)V

    .line 8
    nop

    .line 19
    :goto_0
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 20
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
