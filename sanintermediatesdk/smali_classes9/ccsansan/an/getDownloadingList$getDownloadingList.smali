.class public abstract Lccsansan/an/getDownloadingList$getDownloadingList;
.super Lccsanandroid/os/Binder;
.source ""

# interfaces
.implements Lccsansan/an/getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/an/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "getDownloadingList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/an/getDownloadingList$getDownloadingList$unifiedDownload;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.san.hybrid.aidl.IWebInterface"

    invoke-virtual {p0, p0, v0}, Lccsanandroid/os/Binder;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/os/IBinder;)Lccsansan/an/getDownloadingList;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.san.hybrid.aidl.IWebInterface"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lccsansan/an/getDownloadingList;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lccsansan/an/getDownloadingList;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lccsansan/an/getDownloadingList$getDownloadingList$unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/an/getDownloadingList$getDownloadingList$unifiedDownload;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
.end method

.method public static removeDownloadListener()Lccsansan/an/getDownloadingList;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/an/getDownloadingList$getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/an/getDownloadingList;

    return-object v0
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.san.hybrid.aidl.IWebInterface"

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

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

    .line 27
    :cond_1
    invoke-virtual {p2, v1}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Lccsansan/an/getDownloadingList;->unifiedDownload(Ljava/lang/String;)I

    move-result p1

    .line 31
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 32
    invoke-virtual {p3, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    return v0

    .line 33
    :cond_2
    invoke-virtual {p2, v1}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v6

    .line 45
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lccsansan/an/removeDownloadListener$addDownloadListener;->addDownloadListener(Lccsanandroid/os/IBinder;)Lccsansan/an/removeDownloadListener;

    move-result-object v7

    .line 46
    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Lccsansan/an/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/removeDownloadListener;)Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 48
    invoke-virtual {p3, p1}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
