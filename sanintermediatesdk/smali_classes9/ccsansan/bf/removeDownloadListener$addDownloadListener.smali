.class public abstract Lccsansan/bf/removeDownloadListener$addDownloadListener;
.super Lccsanandroid/os/Binder;
.source ""

# interfaces
.implements Lccsansan/bf/removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bf/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "addDownloadListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.xyz.aidl.IRemoteCallback"

    invoke-virtual {p0, p0, v0}, Lccsanandroid/os/Binder;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xyz.aidl.IRemoteCallback"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/os/Binder;->onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p3, v1}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 7
    :cond_1
    invoke-virtual {p2, v1}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lccsanandroid/os/Bundle;->CREATOR:Lccsanandroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Lccsanandroid/os/Parcelable$Creator;->createFromParcel(Lccsanandroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/os/Bundle;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-interface {p0, p1}, Lccsansan/bf/removeDownloadListener;->getDownloadingList(Lccsanandroid/os/Bundle;)V

    .line 16
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    return v0
.end method
