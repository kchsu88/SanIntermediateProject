.class public Lccsansan/cq/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static getDownloadingList:Lccsansan/cq/getDownloadingList;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadingList()Lccsansan/cq/getDownloadingList;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/cq/getDownloadingList;->getDownloadingList:Lccsansan/cq/getDownloadingList;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/cq/getDownloadingList;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/cq/getDownloadingList;->getDownloadingList:Lccsansan/cq/getDownloadingList;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/cq/getDownloadingList;

    invoke-direct {v1}, Lccsansan/cq/getDownloadingList;-><init>()V

    sput-object v1, Lccsansan/cq/getDownloadingList;->getDownloadingList:Lccsansan/cq/getDownloadingList;

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
    sget-object v0, Lccsansan/cq/getDownloadingList;->getDownloadingList:Lccsansan/cq/getDownloadingList;

    return-object v0
.end method


# virtual methods
.method public getDownloadingList(I)Lccsansan/cq/removeDownloadListener;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Lccsansan/cq/addDownloadListener;

    invoke-direct {p1}, Lccsansan/cq/addDownloadListener;-><init>()V

    return-object p1

    .line 10
    :cond_1
    new-instance p1, Lccsansan/cq/unifiedDownload;

    invoke-direct {p1}, Lccsansan/cq/unifiedDownload;-><init>()V

    return-object p1

    .line 11
    :cond_2
    new-instance p1, Lccsansan/cq/IncentiveDownloadUtils;

    invoke-direct {p1}, Lccsansan/cq/IncentiveDownloadUtils;-><init>()V

    return-object p1
.end method
