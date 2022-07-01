.class public abstract Lccsansan/an/unifiedDownload$getDownloadingList;
.super Lccsanandroid/os/Binder;
.source ""

# interfaces
.implements Lccsansan/an/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/an/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "getDownloadingList"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    .line 2
    const-string v0, "com.san.hybrid.aidl.IWebOtherInterface"

    invoke-virtual {p0, p0, v0}, Lccsanandroid/os/Binder;->attachInterface(Lccsanandroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Lccsanandroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanandroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move v0, p1

    move-object v1, p2

    move-object/from16 v10, p3

    const/4 v11, 0x1

    const-string v2, "com.san.hybrid.aidl.IWebOtherInterface"

    const v3, 0x5f4e5446

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super/range {p0 .. p4}, Lccsanandroid/os/Binder;->onTransact(ILccsanandroid/os/Parcel;Lccsanandroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2
    :pswitch_0
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lccsansan/an/unifiedDownload;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 5
    invoke-virtual {v10, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 6
    :pswitch_1
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 7
    invoke-interface {p0}, Lccsansan/an/unifiedDownload;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {v10, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 10
    :pswitch_2
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 11
    invoke-interface {p0}, Lccsansan/an/unifiedDownload;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 13
    invoke-virtual {v10, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 14
    :pswitch_3
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 15
    invoke-interface {p0}, Lccsansan/an/unifiedDownload;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {v10, v0}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    .line 18
    :pswitch_4
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-interface {p0, v0}, Lccsansan/an/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)I

    move-result v0

    .line 22
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 23
    invoke-virtual {v10, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    return v11

    .line 24
    :pswitch_5
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-interface {p0, v0}, Lccsansan/an/unifiedDownload;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    .line 28
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    .line 29
    invoke-virtual {v10, v0}, Lccsanandroid/os/Parcel;->writeInt(I)V

    return v11

    .line 30
    :pswitch_6
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 38
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 39
    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-wide v3, v4

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lccsansan/an/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 40
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    return v11

    .line 41
    :pswitch_7
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-interface {p0, v0, v1}, Lccsansan/an/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    return v11

    .line 48
    :pswitch_8
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 59
    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lccsansan/an/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    return v11

    .line 61
    :pswitch_9
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 68
    invoke-interface {p0, v0, v2, v3, v4}, Lccsansan/an/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;J)V

    .line 69
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    return v11

    .line 70
    :pswitch_a
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 82
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 84
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 85
    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v12

    invoke-interface/range {v0 .. v8}, Lccsansan/an/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    return v11

    .line 87
    :pswitch_b
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-interface {p0, v0, v1}, Lccsansan/an/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    return v11

    .line 94
    :pswitch_c
    invoke-virtual {p2, v2}, Lccsanandroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-virtual {p2}, Lccsanandroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-interface {p0, v0, v1}, Lccsansan/an/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p3 .. p3}, Lccsanandroid/os/Parcel;->writeNoException()V

    return v11

    .line 101
    :cond_0
    invoke-virtual {v10, v2}, Lccsanandroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
