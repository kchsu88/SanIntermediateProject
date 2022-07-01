.class Lccsansan/an/addDownloadListener$unifiedDownload$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/an/addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/an/addDownloadListener$unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncentiveDownloadUtils"
.end annotation


# static fields
.field public static unifiedDownload:Lccsansan/an/addDownloadListener;


# instance fields
.field private addDownloadListener:Lccsanandroid/os/IBinder;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/an/addDownloadListener$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addDownloadListener(I)Lccsanandroid/os/IBinder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.san.hybrid.aidl.IHybridService"

    .line 5
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 7
    iget-object v2, p0, Lccsansan/an/addDownloadListener$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lccsansan/an/addDownloadListener$unifiedDownload;->addDownloadListener()Lccsansan/an/addDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-static {}, Lccsansan/an/addDownloadListener$unifiedDownload;->addDownloadListener()Lccsansan/an/addDownloadListener;

    move-result-object v2

    invoke-interface {v2, p1}, Lccsansan/an/addDownloadListener;->addDownloadListener(I)Lccsanandroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 16
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return-object p1

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V

    .line 18
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readStrongBinder()Lccsanandroid/os/IBinder;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 22
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 24
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 25
    throw p1
.end method

.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/an/addDownloadListener$unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/os/IBinder;

    return-object v0
.end method
