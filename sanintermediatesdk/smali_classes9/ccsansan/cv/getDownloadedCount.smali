.class public final Lccsansan/cv/getDownloadedCount;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ActionTypeDetailPage:Lccsansan/cv/getPackageNameByRecord;

.field public IncentiveDownloadUtils:J

.field public IncentiveSDK:D

.field public addDownloadListener:J

.field public deleteDownItem:J

.field public deleteDownList:J

.field private execute:Lccsansan/cv/getPackageNameByRecord;

.field public getDownloadStatusByUrl:J

.field public getDownloadedCount:J

.field public getDownloadedList:J

.field public getDownloadedRecordByUrl:J

.field public getDownloadingCount:J

.field public getDownloadingList:J

.field public getDownloadingRecordByUrl:J

.field public getPackageNameByRecord:D

.field private getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

.field public pause:D

.field public removeDownloadListener:J

.field public resume:D

.field public trackReportClick:J

.field public trackReportShow:J

.field public unifiedDownload:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/cv/getDownloadedCount;->getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

    .line 3
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils:J

    .line 5
    iput-object v0, p0, Lccsansan/cv/getDownloadedCount;->execute:Lccsansan/cv/getPackageNameByRecord;

    .line 7
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->unifiedDownload:J

    .line 8
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->removeDownloadListener:J

    .line 9
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingList:J

    .line 10
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->addDownloadListener:J

    .line 11
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedRecordByUrl:J

    .line 13
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->deleteDownItem:J

    .line 15
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->getDownloadStatusByUrl:J

    .line 16
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingRecordByUrl:J

    .line 17
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedList:J

    .line 18
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->deleteDownList:J

    .line 19
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingCount:J

    .line 21
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedCount:J

    .line 23
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lccsansan/cv/getDownloadedCount;->pause:D

    .line 24
    iput-wide v3, p0, Lccsansan/cv/getDownloadedCount;->resume:D

    .line 25
    iput-wide v3, p0, Lccsansan/cv/getDownloadedCount;->IncentiveSDK:D

    .line 30
    iput-object v0, p0, Lccsansan/cv/getDownloadedCount;->ActionTypeDetailPage:Lccsansan/cv/getPackageNameByRecord;

    .line 32
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->trackReportShow:J

    .line 33
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->trackReportClick:J

    .line 34
    iput-wide v3, p0, Lccsansan/cv/getDownloadedCount;->getPackageNameByRecord:D

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingList:J

    iget-object v2, p0, Lccsansan/cv/getDownloadedCount;->getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v2}, Lccsansan/cv/getPackageNameByRecord;->getDownloadingList()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingList:J

    return-void
.end method

.method public IncentiveDownloadUtils(J)V
    .locals 5

    .line 4
    iget-wide v0, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingCount:J

    .line 6
    iget-wide v0, p0, Lccsansan/cv/getDownloadedCount;->deleteDownList:J

    .line 7
    iget-object v2, p0, Lccsansan/cv/getDownloadedCount;->getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v2}, Lccsansan/cv/getPackageNameByRecord;->getDownloadingList()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lccsansan/cv/getDownloadedCount;->deleteDownList:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-lez v4, :cond_4

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    long-to-float p1, p1

    const/high16 p2, 0x44800000    # 1024.0f

    div-float/2addr p1, p2

    float-to-double p1, p1

    long-to-double v0, v2

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-nez v2, :cond_1

    return-void

    .line 17
    :cond_1
    iget-wide v2, p0, Lccsansan/cv/getDownloadedCount;->resume:D

    cmpl-double v4, v2, v0

    if-eqz v4, :cond_2

    cmpg-double v0, p1, v2

    if-gez v0, :cond_3

    .line 18
    :cond_2
    iput-wide p1, p0, Lccsansan/cv/getDownloadedCount;->resume:D

    .line 19
    :cond_3
    iget-wide v0, p0, Lccsansan/cv/getDownloadedCount;->IncentiveSDK:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_4

    .line 20
    iput-wide p1, p0, Lccsansan/cv/getDownloadedCount;->IncentiveSDK:D

    :cond_4
    :goto_0
    return-void
.end method

.method public addDownloadListener()V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/cv/getPackageNameByRecord;

    invoke-direct {v0}, Lccsansan/cv/getPackageNameByRecord;-><init>()V

    invoke-virtual {v0}, Lccsansan/cv/getPackageNameByRecord;->addDownloadListener()Lccsansan/cv/getPackageNameByRecord;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cv/getDownloadedCount;->ActionTypeDetailPage:Lccsansan/cv/getPackageNameByRecord;

    .line 2
    new-instance v0, Lccsansan/cv/getPackageNameByRecord;

    invoke-direct {v0}, Lccsansan/cv/getPackageNameByRecord;-><init>()V

    invoke-virtual {v0}, Lccsansan/cv/getPackageNameByRecord;->addDownloadListener()Lccsansan/cv/getPackageNameByRecord;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cv/getDownloadedCount;->execute:Lccsansan/cv/getPackageNameByRecord;

    return-void
.end method

.method public getDownloadedRecordByUrl()V
    .locals 2

    .line 4
    iget-object v0, p0, Lccsansan/cv/getDownloadedCount;->getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v0}, Lccsansan/cv/getPackageNameByRecord;->getDownloadingList()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedList:J

    return-void
.end method

.method public getDownloadingList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cv/getDownloadedCount;->getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v0}, Lccsansan/cv/getPackageNameByRecord;->getDownloadingList()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingRecordByUrl:J

    return-void
.end method

.method public getDownloadingList(I)V
    .locals 4

    int-to-long v0, p1

    .line 1
    iget-wide v2, p0, Lccsansan/cv/getDownloadedCount;->deleteDownItem:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    iput-wide v0, p0, Lccsansan/cv/getDownloadedCount;->deleteDownItem:J

    :cond_0
    return-void
.end method

.method public getDownloadingList(J)V
    .locals 13

    .line 4
    const-string v0, "\n"

    :try_start_0
    iget-object v1, p0, Lccsansan/cv/getDownloadedCount;->getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v1}, Lccsansan/cv/getPackageNameByRecord;->unifiedDownload()J

    move-result-wide v1

    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils:J

    .line 5
    iget-wide v3, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingRecordByUrl:J

    iget-wide v5, p0, Lccsansan/cv/getDownloadedCount;->deleteDownList:J

    add-long/2addr v3, v5

    iget-wide v7, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedList:J

    add-long/2addr v3, v7

    iput-wide v3, p0, Lccsansan/cv/getDownloadedCount;->getDownloadStatusByUrl:J

    .line 6
    iget-wide v7, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingList:J

    iget-wide v9, p0, Lccsansan/cv/getDownloadedCount;->addDownloadListener:J

    add-long v11, v7, v9

    add-long/2addr v11, v5

    iput-wide v11, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedCount:J

    sub-long/2addr v1, v3

    .line 7
    iget-wide v3, p0, Lccsansan/cv/getDownloadedCount;->unifiedDownload:J

    sub-long/2addr v1, v3

    sub-long/2addr v1, v7

    sub-long/2addr v1, v9

    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedRecordByUrl:J

    .line 9
    iget-wide v1, p0, Lccsansan/cv/getDownloadedCount;->trackReportClick:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 10
    iget-object v1, p0, Lccsansan/cv/getDownloadedCount;->ActionTypeDetailPage:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v1}, Lccsansan/cv/getPackageNameByRecord;->unifiedDownload()J

    move-result-wide v1

    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->trackReportShow:J

    .line 11
    iput-wide p1, p0, Lccsansan/cv/getDownloadedCount;->trackReportClick:J

    .line 14
    :cond_0
    iget-wide v1, p0, Lccsansan/cv/getDownloadedCount;->trackReportShow:J

    const/high16 v5, 0x44800000    # 1024.0f

    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    cmp-long v8, v1, v3

    if-lez v8, :cond_1

    .line 15
    iget-wide v8, p0, Lccsansan/cv/getDownloadedCount;->trackReportClick:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-float v8, v8

    div-float/2addr v8, v5

    float-to-double v8, v8

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v6

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v1

    :try_start_1
    iput-wide v8, p0, Lccsansan/cv/getDownloadedCount;->getPackageNameByRecord:D

    .line 17
    :cond_1
    iget-wide v1, p0, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils:J

    cmp-long v8, v1, v3

    if-nez v8, :cond_2

    const-wide/16 v1, 0x1

    .line 18
    iput-wide v1, p0, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils:J

    :cond_2
    long-to-float v1, p1

    div-float/2addr v1, v5

    float-to-double v2, v1

    .line 19
    iget-wide v4, p0, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    :try_start_2
    iput-wide v2, p0, Lccsansan/cv/getDownloadedCount;->pause:D

    .line 21
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/32 v2, 0x10000

    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    .line 22
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "=================================\n"

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p2, "Size = %.2f KB, Time = %.2f S, Speed = %.2f KB/s"

    .line 24
    const/4 v2, 0x3

    :try_start_3
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-wide v8, p0, Lccsansan/cv/getDownloadedCount;->IncentiveDownloadUtils:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v8, v6

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v3, v5

    iget-wide v8, p0, Lccsansan/cv/getDownloadedCount;->pause:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v8, 0x2

    aput-object v1, v3, v8

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string p2, "ReadTime = %.2f S vs CoreTime = %.2f S [ Wait = %.2f S, Write = %.2f S, Progress = %.2f S ]"

    .line 26
    const/4 v1, 0x5

    :try_start_5
    new-array v3, v1, [Ljava/lang/Object;

    iget-wide v9, p0, Lccsansan/cv/getDownloadedCount;->removeDownloadListener:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v6

    :try_start_6
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v4

    iget-wide v9, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedCount:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v6

    :try_start_7
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v5

    iget-wide v9, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingList:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v6

    :try_start_8
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v8

    iget-wide v9, p0, Lccsansan/cv/getDownloadedCount;->addDownloadListener:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v6

    :try_start_9
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v2

    iget-wide v9, p0, Lccsansan/cv/getDownloadedCount;->deleteDownList:J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v6

    :try_start_a
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v3, v10

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string p2, "InitPhase = %.2f S, InitSpeed = %.2f KB/s, MinInstSpeed = %.2f KB/s, MaxInstSpeed = %.2f KB/s"

    .line 28
    :try_start_b
    new-array v3, v10, [Ljava/lang/Object;

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->trackReportShow:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v6

    :try_start_c
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v4

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->getPackageNameByRecord:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v5

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->resume:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v8

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->IncentiveSDK:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v2

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string p2, "ProgressCount = %d, QueueMaxLength = %d"

    .line 30
    :try_start_d
    new-array v3, v8, [Ljava/lang/Object;

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingCount:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v4

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->deleteDownItem:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v3, v5

    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string p2, "Request = %.2f S, Wait = %.2f S, Write = %.2f S, Progress = %.2f S, Other = %.2f S"

    .line 32
    :try_start_e
    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->unifiedDownload:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v6

    :try_start_f
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v4

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingList:J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v6

    :try_start_10
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v5

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->addDownloadListener:J
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v6

    :try_start_11
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v8

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->deleteDownList:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v6

    :try_start_12
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    iget-wide v11, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedRecordByUrl:J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    long-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v11, v6

    :try_start_13
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    const-string p2, "UITime = %.2f S: Started = %.2f S, Progress = %.2f S, Finished = %.2f S"

    .line 34
    :try_start_14
    new-array v0, v10, [Ljava/lang/Object;

    iget-wide v9, p0, Lccsansan/cv/getDownloadedCount;->getDownloadStatusByUrl:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    long-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v6

    :try_start_15
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v4

    iget-wide v3, p0, Lccsansan/cv/getDownloadedCount;->getDownloadingRecordByUrl:J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v6

    :try_start_16
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v5

    iget-wide v3, p0, Lccsansan/cv/getDownloadedCount;->deleteDownList:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v6

    :try_start_17
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v8

    iget-wide v3, p0, Lccsansan/cv/getDownloadedCount;->getDownloadedList:J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    long-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v6

    :try_start_18
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const-string p2, "TimeStats"

    .line 35
    :try_start_19
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_3
    :goto_0
    return-void
.end method

.method public getDownloadingRecordByUrl()V
    .locals 4

    .line 3
    iget-wide v0, p0, Lccsansan/cv/getDownloadedCount;->addDownloadListener:J

    iget-object v2, p0, Lccsansan/cv/getDownloadedCount;->getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v2}, Lccsansan/cv/getPackageNameByRecord;->getDownloadingList()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/cv/getDownloadedCount;->addDownloadListener:J

    return-void
.end method

.method public removeDownloadListener()V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/cv/getPackageNameByRecord;

    invoke-direct {v0}, Lccsansan/cv/getPackageNameByRecord;-><init>()V

    invoke-virtual {v0}, Lccsansan/cv/getPackageNameByRecord;->addDownloadListener()Lccsansan/cv/getPackageNameByRecord;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cv/getDownloadedCount;->getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

    return-void
.end method

.method public unifiedDownload()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cv/getDownloadedCount;->getThumbPathByRecord:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v0}, Lccsansan/cv/getPackageNameByRecord;->getDownloadingList()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cv/getDownloadedCount;->unifiedDownload:J

    return-void
.end method

.method public unifiedDownload(I)V
    .locals 4

    .line 3
    iget-wide v0, p0, Lccsansan/cv/getDownloadedCount;->removeDownloadListener:J

    iget-object p1, p0, Lccsansan/cv/getDownloadedCount;->execute:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {p1}, Lccsansan/cv/getPackageNameByRecord;->getDownloadingList()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/cv/getDownloadedCount;->removeDownloadListener:J

    return-void
.end method

.method public unifiedDownload(J)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lccsansan/cv/getDownloadedCount;->trackReportClick:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lccsansan/cv/getDownloadedCount;->ActionTypeDetailPage:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v0}, Lccsansan/cv/getPackageNameByRecord;->unifiedDownload()J

    move-result-wide v0

    const-wide v2, 0xb2d05e00L

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/cv/getDownloadedCount;->ActionTypeDetailPage:Lccsansan/cv/getPackageNameByRecord;

    invoke-virtual {v0}, Lccsansan/cv/getPackageNameByRecord;->unifiedDownload()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cv/getDownloadedCount;->trackReportShow:J

    .line 3
    iput-wide p1, p0, Lccsansan/cv/getDownloadedCount;->trackReportClick:J

    :cond_0
    return-void
.end method
