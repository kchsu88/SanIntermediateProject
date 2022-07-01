.class Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cg/IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncentiveDownloadUtils"
.end annotation


# static fields
.field public static addDownloadListener:Lccsansan/cg/IncentiveDownloadUtils;


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/os/IBinder;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/os/IBinder;

    return-object v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
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
    const-string v2, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    .line 5
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils()Lccsansan/cg/IncentiveDownloadUtils;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils()Lccsansan/cg/IncentiveDownloadUtils;

    move-result-object v2

    invoke-interface {v2}, Lccsansan/cg/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return-object v2

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V

    .line 16
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 19
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 20
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 21
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 22
    throw v2
.end method

.method public unifiedDownload()Z
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
    const-string v2, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    .line 5
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsanandroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    invoke-static {}, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils()Lccsansan/cg/IncentiveDownloadUtils;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Lccsansan/cg/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils()Lccsansan/cg/IncentiveDownloadUtils;

    move-result-object v2

    invoke-interface {v2}, Lccsansan/cg/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return v2

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V

    .line 16
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    .line 18
    :cond_1
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 19
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return v4

    :catchall_0
    move-exception v2

    .line 20
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 21
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 22
    throw v2
.end method
