.class public Lccsansan/ce/IncentiveDownloadUtils;
.super Lccsansan/ce/removeDownloadListener;
.source ""


# static fields
.field private static getDownloadingList:Lccsansan/ce/IncentiveDownloadUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/ce/removeDownloadListener;-><init>()V

    return-void
.end method

.method public static IncentiveDownloadUtils()Lccsansan/ce/IncentiveDownloadUtils;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/ce/IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ce/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/ce/IncentiveDownloadUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/ce/IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ce/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/ce/IncentiveDownloadUtils;

    invoke-direct {v1}, Lccsansan/ce/IncentiveDownloadUtils;-><init>()V

    sput-object v1, Lccsansan/ce/IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ce/IncentiveDownloadUtils;

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
    sget-object v0, Lccsansan/ce/IncentiveDownloadUtils;->getDownloadingList:Lccsansan/ce/IncentiveDownloadUtils;

    return-object v0
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/cj/IncentiveDownloadUtils;)Z
    .locals 12

    .line 1
    instance-of v0, p1, Lccsansan/cj/unifiedDownload$getDownloadingList;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Lccsansan/ce/removeDownloadListener;->addDownloadListener(Lccsansan/cj/IncentiveDownloadUtils;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsansan/cj/unifiedDownload$getDownloadingList;

    .line 5
    iget-object v2, v0, Lccsansan/cj/unifiedDownload$getDownloadingList;->resume:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, v0, Lccsansan/cj/unifiedDownload$getDownloadingList;->deleteDownList:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 9
    :cond_1
    iget v2, v0, Lccsansan/cj/unifiedDownload$getDownloadingList;->getDownloadingCount:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    if-ne v2, v3, :cond_2

    .line 10
    iget-wide v2, v0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    cmp-long v7, v2, v5

    if-lez v7, :cond_7

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is wating, but has startTs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v3, ", endTS="

    if-ne v2, v4, :cond_4

    .line 15
    iget-wide v7, v0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_3

    iget-wide v7, v0, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_7

    .line 16
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is running, startTs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v1

    .line 20
    :cond_4
    iget-wide v7, v0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_8

    iget-wide v9, v0, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    cmp-long v11, v9, v5

    if-lez v11, :cond_8

    cmp-long v5, v9, v7

    if-gez v5, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    cmp-long v5, v9, v7

    if-nez v5, :cond_6

    .line 24
    iget-boolean v5, v0, Lccsansan/cj/unifiedDownload$getDownloadingList;->getThumbPathByRecord:Z

    if-nez v5, :cond_6

    .line 25
    const-string v0, "is suc with 0s, but not cachedAd"

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v1

    .line 28
    :cond_6
    iget-boolean v0, v0, Lccsansan/cj/unifiedDownload$getDownloadingList;->getThumbPathByRecord:Z

    if-eqz v0, :cond_7

    if-eq v2, v3, :cond_7

    .line 29
    const-string v0, "is cachedAd, but not succeed"

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v1

    :cond_7
    return v4

    .line 30
    :cond_8
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is ending, startTs="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v1

    :cond_9
    :goto_1
    nop

    .line 31
    const-string v0, "has no spot info"

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return v1
.end method
