.class public Lccsansan/ce/unifiedDownload;
.super Lccsansan/ce/removeDownloadListener;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Lccsansan/ce/unifiedDownload;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/ce/removeDownloadListener;-><init>()V

    return-void
.end method

.method public static addDownloadListener()Lccsansan/ce/unifiedDownload;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/ce/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ce/unifiedDownload;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/ce/unifiedDownload;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/ce/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ce/unifiedDownload;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/ce/unifiedDownload;

    invoke-direct {v1}, Lccsansan/ce/unifiedDownload;-><init>()V

    sput-object v1, Lccsansan/ce/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ce/unifiedDownload;

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
    sget-object v0, Lccsansan/ce/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/ce/unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/cj/IncentiveDownloadUtils;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lccsansan/cj/unifiedDownload;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-super {p0, p1}, Lccsansan/ce/removeDownloadListener;->addDownloadListener(Lccsansan/cj/IncentiveDownloadUtils;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsansan/cj/unifiedDownload;

    .line 5
    iget-object v2, v0, Lccsansan/cj/unifiedDownload;->pause:Ljava/util/List;

    .line 6
    iget v3, v0, Lccsansan/cj/unifiedDownload;->getDownloadingCount:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 7
    iget-object v3, v0, Lccsansan/cj/unifiedDownload;->getDownloadedCount:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lccsansan/cj/unifiedDownload;->deleteDownList:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v2}, Lccsansan/ce/unifiedDownload;->unifiedDownload(Ljava/util/List;)Lccsansan/cj/unifiedDownload$getDownloadingList;

    move-result-object v3

    if-nez v3, :cond_2

    .line 13
    const-string v0, "sts == 1 but cannot find out the winner layer"

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v1

    .line 15
    :cond_2
    iget-object v4, v0, Lccsansan/cj/unifiedDownload;->getDownloadedCount:Ljava/lang/String;

    iget-object v5, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->resume:Ljava/lang/String;

    invoke-static {v4, v5}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lccsansan/cj/unifiedDownload;->deleteDownList:Ljava/lang/String;

    iget-object v3, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->deleteDownList:Ljava/lang/String;

    invoke-static {v4, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 16
    :cond_3
    const-string v0, "the winner layer not equals"

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_0
    nop

    .line 17
    const-string v0, "sts == 1 but has no winner info"

    invoke-virtual {p1, v0}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v1

    .line 29
    :cond_5
    invoke-virtual {p0, v2, v0}, Lccsansan/ce/unifiedDownload;->unifiedDownload(Ljava/util/List;Lccsansan/cj/unifiedDownload;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method public unifiedDownload(Ljava/util/List;)Lccsansan/cj/unifiedDownload$getDownloadingList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cj/unifiedDownload$getDownloadingList;",
            ">;)",
            "Lccsansan/cj/unifiedDownload$getDownloadingList;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 30
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 33
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/cj/unifiedDownload$getDownloadingList;

    if-nez v1, :cond_1

    goto :goto_0

    .line 36
    :cond_1
    iget v2, v1, Lccsansan/cj/unifiedDownload$getDownloadingList;->getDownloadingCount:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    .line 37
    iget-wide v2, v0, Lccsansan/cj/unifiedDownload$getDownloadingList;->trackReportClick:J

    iget-wide v4, v1, Lccsansan/cj/unifiedDownload$getDownloadingList;->trackReportClick:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    nop

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public unifiedDownload(Ljava/util/List;Lccsansan/cj/unifiedDownload;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cj/unifiedDownload$getDownloadingList;",
            ">;",
            "Lccsansan/cj/unifiedDownload;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p2

    const/4 v1, 0x1

    if-eqz p1, :cond_a

    .line 38
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 42
    :cond_0
    iget-wide v2, v0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    .line 43
    iget-wide v4, v0, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    .line 45
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsansan/cj/unifiedDownload$getDownloadingList;

    .line 46
    invoke-virtual {v7}, Lccsansan/cj/unifiedDownload$getDownloadingList;->unifiedDownload()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 47
    iget-wide v6, v7, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    goto :goto_0

    .line 45
    :cond_2
    move-wide v6, v8

    .line 52
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsansan/cj/unifiedDownload$getDownloadingList;

    .line 53
    iget v12, v11, Lccsansan/cj/unifiedDownload$getDownloadingList;->getDownloadingCount:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    goto/16 :goto_3

    .line 55
    :cond_3
    iget-wide v13, v11, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    const/4 v15, 0x0

    cmp-long v16, v13, v8

    if-gtz v16, :cond_4

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layer start with startTS==0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v15

    :cond_4
    cmp-long v16, v13, v2

    if-gez v16, :cond_5

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layer start earlier than RHEvent\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v15

    :cond_5
    cmp-long v16, v4, v8

    if-lez v16, :cond_6

    .line 63
    iget-wide v8, v11, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    cmp-long v17, v8, v4

    if-lez v17, :cond_6

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layer end later than RHEvent\'s "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v15

    :cond_6
    if-eq v12, v1, :cond_7

    .line 68
    iget-wide v8, v11, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    cmp-long v12, v8, v13

    if-gez v12, :cond_7

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layer endTs is earlier than startTs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v15

    :cond_7
    const-wide/16 v8, 0x0

    cmp-long v12, v6, v8

    if-nez v12, :cond_8

    move-wide v6, v13

    goto :goto_2

    :cond_8
    cmp-long v12, v6, v13

    if-lez v12, :cond_9

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "layer start earlier than pre one "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    return v15

    :cond_9
    nop

    :goto_2
    goto/16 :goto_1

    :cond_a
    :goto_3
    return v1
.end method
