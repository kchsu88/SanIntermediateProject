.class public abstract Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.super Lccsanandroid/os/Binder;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {p0, p0, v0}, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    .line 3
    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 0

    .line 4
    return-object p0
.end method

.method public onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 5
    const v0, 0xffffff

    if-le p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/os/Binder;->onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 7
    :cond_0
    const-string p4, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {p2, p4}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p4

    .line 9
    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 10
    move-object v1, v0

    goto :goto_0

    .line 11
    :cond_1
    const-string v1, "com.google.android.gms.common.internal.IGmsCallbacks"

    invoke-interface {p4, v1}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v1

    .line 12
    instance-of v2, v1, Lccsancom/google/android/gms/common/internal/IGmsCallbacks;

    if-eqz v2, :cond_2

    .line 13
    check-cast v1, Lccsancom/google/android/gms/common/internal/IGmsCallbacks;

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Lccsancom/google/android/gms/common/internal/zzl;

    invoke-direct {v1, p4}, Lccsancom/google/android/gms/common/internal/zzl;-><init>(Lccsanandroid/os/IBinder;)V

    .line 15
    :goto_0
    nop

    .line 16
    const/16 p4, 0x2e

    if-ne p1, p4, :cond_4

    .line 17
    nop

    .line 18
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 19
    sget-object p1, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lccsancom/google/android/gms/common/internal/GetServiceRequest;

    .line 20
    :cond_3
    invoke-virtual {p0, v1, v0}, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub;->getService(Lccsancom/google/android/gms/common/internal/IGmsCallbacks;Lccsancom/google/android/gms/common/internal/GetServiceRequest;)V

    .line 21
    nop

    .line 56
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 57
    const/4 p1, 0x1

    return p1

    .line 21
    :cond_4
    const/16 p3, 0x2f

    if-ne p1, p3, :cond_6

    .line 22
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    sget-object p1, Lccsancom/google/android/gms/common/internal/zzr;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 25
    :cond_6
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    .line 26
    const/4 p3, 0x4

    if-eq p1, p3, :cond_7

    .line 27
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    .line 28
    :cond_7
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 51
    :pswitch_1
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    .line 52
    goto :goto_1

    .line 44
    :pswitch_2
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 45
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    .line 46
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 47
    sget-object p1, Lccsanandroid/os/Bundle;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :pswitch_3
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    .line 30
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 31
    sget-object p1, Lccsanandroid/os/Bundle;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    goto :goto_1

    .line 48
    :pswitch_4
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    .line 49
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 50
    goto :goto_1

    .line 37
    :pswitch_5
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    .line 38
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    .line 40
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    .line 41
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    .line 42
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 43
    sget-object p1, Lccsanandroid/os/Bundle;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    goto :goto_1

    .line 53
    :pswitch_6
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 54
    sget-object p1, Lccsanandroid/os/Bundle;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    goto :goto_1

    .line 32
    :pswitch_7
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 34
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    .line 35
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 36
    sget-object p1, Lccsanandroid/os/Bundle;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    .line 55
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
