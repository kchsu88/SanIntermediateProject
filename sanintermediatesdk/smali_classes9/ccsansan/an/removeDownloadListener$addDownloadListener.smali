.class public abstract Lccsansan/an/removeDownloadListener$addDownloadListener;
.super Lccsanandroid/os/Binder;
.source ""

# interfaces
.implements Lccsansan/an/removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/an/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "addDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/an/removeDownloadListener$addDownloadListener$unifiedDownload;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.san.hybrid.aidl.IWebCallback"

    invoke-virtual {p0, p0, v0}, Lccsanandroid/os/Binder;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/os/IBinder;)Lccsansan/an/removeDownloadListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    const-string v0, "com.san.hybrid.aidl.IWebCallback"

    invoke-interface {p0, v0}, Lccsanandroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Lccsanandroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lccsansan/an/removeDownloadListener;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lccsansan/an/removeDownloadListener;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lccsansan/an/removeDownloadListener$addDownloadListener$unifiedDownload;

    invoke-direct {v0, p0}, Lccsansan/an/removeDownloadListener$addDownloadListener$unifiedDownload;-><init>(Lccsanandroid/os/IBinder;)V

    return-object v0
.end method

.method public static removeDownloadListener()Lccsansan/an/removeDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/an/removeDownloadListener$addDownloadListener$unifiedDownload;->removeDownloadListener:Lccsansan/an/removeDownloadListener;

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

    const-string v1, "com.san.hybrid.aidl.IWebCallback"

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
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-interface {p0, p1, p2}, Lccsansan/an/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    return v0
.end method
