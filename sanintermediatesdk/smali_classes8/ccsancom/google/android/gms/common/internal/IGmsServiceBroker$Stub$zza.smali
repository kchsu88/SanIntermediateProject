.class final Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/google/android/gms/common/internal/IGmsServiceBroker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private final zza:Lccsanandroid/os/IBinder;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;->zza:Lccsanandroid/os/IBinder;

    .line 3
    return-void
.end method


# virtual methods
.method public final asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 4
    iget-object v0, p0, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;->zza:Lccsanandroid/os/IBinder;

    return-object v0
.end method

.method public final getService(Lccsancom/google/android/gms/common/internal/IGmsCallbacks;Lccsancom/google/android/gms/common/internal/GetServiceRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 5
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 6
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v1

    .line 7
    :try_start_0
    const-string v2, "com.google.android.gms.common.internal.IGmsServiceBroker"

    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lccsancom/google/android/gms/common/internal/IGmsCallbacks;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V

    .line 9
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 10
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-virtual {p2, v0, p1}, Lccsancom/google/android/gms/common/internal/GetServiceRequest;->writeToParcel(Lccsanandroid/os/Parcel;I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 13
    :goto_1
    iget-object p2, p0, Lccsancom/google/android/gms/common/internal/IGmsServiceBroker$Stub$zza;->zza:Lccsanandroid/os/IBinder;

    const/16 v2, 0x2e

    invoke-interface {p2, v2, v0, v1, p1}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    .line 14
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 19
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    throw p1
.end method
