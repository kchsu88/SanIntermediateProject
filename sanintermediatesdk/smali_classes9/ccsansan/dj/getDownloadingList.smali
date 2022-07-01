.class public Lccsansan/dj/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public IncentiveDownloadUtils:Ljava/lang/String;

.field public addDownloadListener:Lccsansan/cs/removeDownloadListener;

.field public getDownloadingList:Ljava/lang/String;

.field public removeDownloadListener:Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;


# direct methods
.method public constructor <init>(Lccsansan/cs/removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    return-void
.end method

.method private declared-synchronized IncentiveDownloadUtils()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 4
    :catch_0
    move-exception v0

    :goto_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;JJ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lccsansan/dj/getDownloadingList;->IncentiveDownloadUtils()V

    .line 2
    iget-object v0, p0, Lccsansan/dj/getDownloadingList;->removeDownloadListener:Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 3
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;JJ)V
    .locals 7

    .line 2
    iget-object v0, p0, Lccsansan/dj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 3
    iget-object v0, p0, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v0, p2, p3}, Lccsansan/cs/removeDownloadListener;->removeDownloadListener(J)V

    .line 4
    iget-object v1, p0, Lccsansan/dj/getDownloadingList;->removeDownloadListener:Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;

    if-eqz v1, :cond_0

    .line 5
    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;JJ)V

    :cond_0
    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lccsansan/dj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 7
    invoke-direct {p0}, Lccsansan/dj/getDownloadingList;->IncentiveDownloadUtils()V

    .line 8
    iget-object v0, p0, Lccsansan/dj/getDownloadingList;->removeDownloadListener:Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1, p2}, Lccsansan/cv/IncentiveDownloadUtils$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public getDownloadingList()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/cs/removeDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v0

    iget-object v2, p0, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/cs/removeDownloadListener;->removeDownloadListener()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lccsansan/dj/getDownloadingList;->addDownloadListener:Lccsansan/cs/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/cs/removeDownloadListener;->unifiedDownload()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
