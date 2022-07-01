.class public Lccsansan/db/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static removeDownloadListener:Lccsansan/db/unifiedDownload;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addDownloadListener()Lccsansan/db/unifiedDownload;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/db/unifiedDownload;->removeDownloadListener:Lccsansan/db/unifiedDownload;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/db/unifiedDownload;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/db/unifiedDownload;->removeDownloadListener:Lccsansan/db/unifiedDownload;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/db/unifiedDownload;

    invoke-direct {v1}, Lccsansan/db/unifiedDownload;-><init>()V

    sput-object v1, Lccsansan/db/unifiedDownload;->removeDownloadListener:Lccsansan/db/unifiedDownload;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/db/unifiedDownload;->removeDownloadListener:Lccsansan/db/unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public removeDownloadListener(I)Lccsansan/db/getDownloadingList;
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :pswitch_0
    new-instance p1, Lccsansan/db/deleteDownItem;

    invoke-direct {p1}, Lccsansan/db/deleteDownItem;-><init>()V

    return-object p1

    .line 10
    :pswitch_1
    new-instance p1, Lccsansan/db/getDownloadingRecordByUrl;

    invoke-direct {p1}, Lccsansan/db/getDownloadingRecordByUrl;-><init>()V

    return-object p1

    .line 11
    :pswitch_2
    new-instance p1, Lccsansan/db/removeDownloadListener;

    invoke-direct {p1}, Lccsansan/db/removeDownloadListener;-><init>()V

    return-object p1

    .line 18
    :cond_0
    new-instance p1, Lccsansan/db/getDownloadedList;

    invoke-direct {p1}, Lccsansan/db/getDownloadedList;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
