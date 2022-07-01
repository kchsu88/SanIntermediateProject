.class public Lccsansan/ce/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static getDownloadingList:Lccsansan/ce/removeDownloadListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unifiedDownload()Lccsansan/ce/removeDownloadListener;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/ce/removeDownloadListener;->getDownloadingList:Lccsansan/ce/removeDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/ce/removeDownloadListener;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/ce/removeDownloadListener;->getDownloadingList:Lccsansan/ce/removeDownloadListener;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/ce/removeDownloadListener;

    invoke-direct {v1}, Lccsansan/ce/removeDownloadListener;-><init>()V

    sput-object v1, Lccsansan/ce/removeDownloadListener;->getDownloadingList:Lccsansan/ce/removeDownloadListener;

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
    sget-object v0, Lccsansan/ce/removeDownloadListener;->getDownloadingList:Lccsansan/ce/removeDownloadListener;

    return-object v0
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/cj/IncentiveDownloadUtils;)Z
    .locals 6

    .line 8
    iget-wide v0, p1, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    iget-wide v3, p1, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    .line 9
    const-string v0, "endTS < startTS"

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v2

    .line 12
    :cond_0
    iget-object v0, p1, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    const-string v0, "pid is Empty"

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
