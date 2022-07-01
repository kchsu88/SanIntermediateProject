.class Lccsansan/an/getDownloadingList$getDownloadingList$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/an/getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/an/getDownloadingList$getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "unifiedDownload"
.end annotation


# static fields
.field public static IncentiveDownloadUtils:Lccsansan/an/getDownloadingList;


# instance fields
.field private unifiedDownload:Lccsanandroid/os/IBinder;


# direct methods
.method constructor <init>(Lccsanandroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/an/getDownloadingList$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsanandroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/an/getDownloadingList$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsanandroid/os/IBinder;

    return-object v0
.end method

.method public unifiedDownload(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v0

    .line 32
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.san.hybrid.aidl.IWebInterface"

    .line 35
    invoke-virtual {v0, v2}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p1}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lccsansan/an/getDownloadingList$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsanandroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    invoke-static {}, Lccsansan/an/getDownloadingList$getDownloadingList;->removeDownloadListener()Lccsansan/an/getDownloadingList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    invoke-static {}, Lccsansan/an/getDownloadingList$getDownloadingList;->removeDownloadListener()Lccsansan/an/getDownloadingList;

    move-result-object v2

    invoke-interface {v2, p1}, Lccsansan/an/getDownloadingList;->unifiedDownload(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 46
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return p1

    .line 47
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readException()V

    .line 48
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->readInt()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 52
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    return p1

    :catchall_0
    move-exception p1

    .line 53
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v0}, Lccsanandroid/os/Parcel;->recycle()V

    .line 55
    throw p1
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/removeDownloadListener;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v1

    .line 2
    invoke-static {}, Lccsanandroid/os/Parcel;->obtain()Lccsanandroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.san.hybrid.aidl.IWebInterface"

    .line 5
    invoke-virtual {v1, v0}, Lccsanandroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6
    move-object v0, p1

    invoke-virtual {v1, p1}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    move-object v5, p2

    invoke-virtual {v1, p2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    move-object v6, p3

    invoke-virtual {v1, p3}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    move-object v7, p4

    invoke-virtual {v1, p4}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10
    move/from16 v8, p5

    invoke-virtual {v1, v8}, Lccsanandroid/os/Parcel;->writeInt(I)V

    if-eqz p6, :cond_0

    .line 11
    invoke-interface/range {p6 .. p6}, Lccsanandroid/os/IInterface;->asBinder()Lccsanandroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lccsanandroid/os/Parcel;->writeStrongBinder(Lccsanandroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    move-object v10, p0

    :try_start_1
    iget-object v3, v10, Lccsansan/an/getDownloadingList$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsanandroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-interface {v3, v4, v1, v2, v9}, Lccsanandroid/os/IBinder;->transact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-static {}, Lccsansan/an/getDownloadingList$getDownloadingList;->removeDownloadListener()Lccsansan/an/getDownloadingList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 14
    invoke-static {}, Lccsansan/an/getDownloadingList$getDownloadingList;->removeDownloadListener()Lccsansan/an/getDownloadingList;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lccsansan/an/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    invoke-virtual {v2}, Lccsanandroid/os/Parcel;->recycle()V

    .line 21
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    return-object v0

    .line 22
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Lccsanandroid/os/Parcel;->readException()V

    .line 23
    invoke-virtual {v2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-virtual {v2}, Lccsanandroid/os/Parcel;->recycle()V

    .line 27
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v10, p0

    .line 28
    :goto_1
    invoke-virtual {v2}, Lccsanandroid/os/Parcel;->recycle()V

    .line 29
    invoke-virtual {v1}, Lccsanandroid/os/Parcel;->recycle()V

    .line 30
    throw v0
.end method
