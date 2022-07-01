.class public abstract Lccsansan/an/addDownloadListener$unifiedDownload;
.super Lccsanandroid/os/Binder;
.source ""

# interfaces
.implements Lccsansan/an/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/an/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/an/addDownloadListener$unifiedDownload$IncentiveDownloadUtils;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.san.hybrid.aidl.IHybridService"

    invoke-virtual {p0, p0, v0}, Lccsanandroid/os/Binder;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static addDownloadListener()Lccsansan/an/addDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/an/addDownloadListener$unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/an/addDownloadListener;

    return-object v0
.end method

.method public static unifiedDownload(Lccsanandroid/os/IBinder;)Lccsansan/an/addDownloadListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.san.hybrid.aidl.IHybridService"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lccsansan/an/addDownloadListener;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lccsansan/an/addDownloadListener;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lccsansan/an/addDownloadListener$unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/an/addDownloadListener$unifiedDownload$IncentiveDownloadUtils;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
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

    const-string v1, "com.san.hybrid.aidl.IHybridService"

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

    .line 10
    invoke-interface {p0, p1}, Lccsansan/an/addDownloadListener;->addDownloadListener(I)Lccsanandroid/os/IBinder;

    move-result-object p1

    .line 11
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 12
    invoke-virtual {p3, p1}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V

    return v0
.end method
