.class final Lccsansan/bw/deleteDownItem$addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "addDownloadListener"
.end annotation


# instance fields
.field private final getDownloadingList:Lccsanandroid/os/IBinder;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/bw/deleteDownItem$addDownloadListener;->getDownloadingList:Lccsanandroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 6
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
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 5
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInt(I)V

    .line 8
    iget-object v3, p0, Lccsansan/bw/deleteDownItem$addDownloadListener;->getDownloadingList:Lccsanandroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    .line 9
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V

    .line 10
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 13
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception v2

    .line 14
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 15
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 16
    throw v2
.end method

.method public addDownloadListener()Ljava/lang/String;
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
    const-string v2, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    .line 5
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lccsansan/bw/deleteDownItem$addDownloadListener;->getDownloadingList:Lccsanandroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    .line 8
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V

    .line 9
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 12
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 13
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 14
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 15
    throw v2
.end method

.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bw/deleteDownItem$addDownloadListener;->getDownloadingList:Lccsanandroid/os/IBinder;

    return-object v0
.end method
