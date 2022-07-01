.class public Lccsansan/ar/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/ar/getDownloadingList$getDownloadingList;,
        Lccsansan/ar/getDownloadingList$addDownloadListener;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field private addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

.field private deleteDownItem:J

.field private getDownloadStatusByUrl:J

.field private getDownloadingList:J

.field private getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

.field private removeDownloadListener:I

.field private unifiedDownload:Lccsansan/ar/getDownloadingList$addDownloadListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/ar/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    .line 3
    invoke-static {p1}, Lccsansan/ab/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object p1

    iput-object p1, p0, Lccsansan/ar/getDownloadingList;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    .line 4
    invoke-static {}, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/am/IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/am/IncentiveDownloadUtils;->addDownloadListener()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    .line 5
    new-instance p1, Lccsansan/ar/getDownloadingList$getDownloadingList;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lccsansan/ar/getDownloadingList$getDownloadingList;-><init>(Lccsansan/ar/getDownloadingList;ZZLjava/lang/Exception;)V

    iput-object p1, p0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8
    invoke-static {}, Lccsansan/bw/getErrorCode;->getDownloadedList()I

    move-result p1

    iput p1, p0, Lccsansan/ar/getDownloadingList;->removeDownloadListener:I

    .line 9
    invoke-static {}, Lccsansan/bw/getErrorCode;->getDownloadingRecordByUrl()J

    move-result-wide v4

    iput-wide v4, p0, Lccsansan/ar/getDownloadingList;->deleteDownItem:J

    .line 10
    invoke-static {}, Lccsansan/bw/getErrorCode;->deleteDownItem()J

    move-result-wide v4

    iput-wide v4, p0, Lccsansan/ar/getDownloadingList;->getDownloadStatusByUrl:J

    .line 13
    invoke-static {}, Lccsansan/bw/getErrorCode;->getDownloadingCount()J

    move-result-wide v4

    .line 14
    invoke-static {v2, v3, v4, v5}, Lccsansan/bw/AdFormat;->removeDownloadListener(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_0

    .line 15
    const-string p1, "AD.SanStats.UploadPolicy"

    const-string v0, "restart a upload circle!"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput v1, p0, Lccsansan/ar/getDownloadingList;->removeDownloadListener:I

    .line 17
    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->removeDownloadListener(J)V

    .line 18
    iget p1, p0, Lccsansan/ar/getDownloadingList;->removeDownloadListener:I

    invoke-static {p1}, Lccsansan/bw/getErrorCode;->getDownloadingList(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/ar/getDownloadingList$addDownloadListener;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lccsansan/ar/getDownloadingList;->unifiedDownload:Lccsansan/ar/getDownloadingList$addDownloadListener;

    .line 3
    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->CONNECTED:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-ne p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lccsansan/ar/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/ab/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ar/getDownloadingList;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    .line 6
    :cond_0
    iget-object v0, p0, Lccsansan/ar/getDownloadingList;->unifiedDownload:Lccsansan/ar/getDownloadingList$addDownloadListener;

    sget-object v1, Lccsansan/ar/getDownloadingList$addDownloadListener;->IN_HOMEPAGE:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-eq v0, v1, :cond_2

    sget-object v1, Lccsansan/ar/getDownloadingList$addDownloadListener;->PAGE_IN_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-eq v0, v1, :cond_2

    sget-object v1, Lccsansan/ar/getDownloadingList$addDownloadListener;->PAGE_OUT_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-eq v0, v1, :cond_2

    sget-object v1, Lccsansan/ar/getDownloadingList$addDownloadListener;->UNHANDLE_EXCEPTION_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-eq v0, v1, :cond_2

    sget-object v1, Lccsansan/ar/getDownloadingList$addDownloadListener;->CUSTOM_EVENT:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 8
    iget-wide v0, p0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    .line 10
    :cond_3
    sget-object v0, Lccsansan/ar/getDownloadingList$addDownloadListener;->QUIT_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-ne p1, v0, :cond_4

    .line 11
    iget-object p1, p0, Lccsansan/ar/getDownloadingList;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-wide v0, p0, Lccsansan/ar/getDownloadingList;->getDownloadStatusByUrl:J

    invoke-static {p1, v0, v1}, Lccsansan/l/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;J)V

    :cond_4
    return-void
.end method

.method public IncentiveDownloadUtils()Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    iget v3, v0, Lccsansan/ar/getDownloadingList;->removeDownloadListener:I

    const/16 v4, 0x4e20

    invoke-static {v4}, Lccsansan/ac/getDownloadingList;->removeDownloadListener(I)I

    move-result v4

    const/4 v5, 0x0

    const-string v6, "AD.SanStats.UploadPolicy"

    if-le v3, v4, :cond_0

    .line 5
    const-string v1, "upload times had over the max 50, can not upload!"

    invoke-static {v6, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 10
    :cond_0
    iget-object v3, v0, Lccsansan/ar/getDownloadingList;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    sget-object v4, Lccsansan/ab/removeDownloadListener$addDownloadListener;->OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    const-string v7, " can upload!"

    const-string v8, " can not upload!"

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    if-eq v3, v4, :cond_d

    sget-object v4, Lccsansan/ab/removeDownloadListener$addDownloadListener;->UNKNOWN:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    if-ne v3, v4, :cond_1

    goto/16 :goto_3

    .line 18
    :cond_1
    iget-object v3, v0, Lccsansan/ar/getDownloadingList;->unifiedDownload:Lccsansan/ar/getDownloadingList$addDownloadListener;

    sget-object v4, Lccsansan/ar/getDownloadingList$addDownloadListener;->ENTER_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

    const/16 v12, 0x2710

    if-ne v3, v4, :cond_2

    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    cmp-long v13, v3, v9

    if-lez v13, :cond_2

    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->deleteDownItem:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v12}, Lccsansan/ac/getDownloadingList;->addDownloadListener(I)I

    move-result v13

    int-to-long v13, v13

    cmp-long v15, v3, v13

    if-lez v15, :cond_2

    .line 19
    const-string v1, "enter app, can upload!"

    invoke-static {v6, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 24
    :cond_2
    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    cmp-long v13, v3, v9

    if-lez v13, :cond_3

    iget-object v3, v0, Lccsansan/ar/getDownloadingList;->unifiedDownload:Lccsansan/ar/getDownloadingList$addDownloadListener;

    sget-object v4, Lccsansan/ar/getDownloadingList$addDownloadListener;->IN_HOMEPAGE:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-ne v3, v4, :cond_3

    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->getDownloadStatusByUrl:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const/16 v13, 0x1388

    invoke-static {v13}, Lccsansan/ac/getDownloadingList;->unifiedDownload(I)I

    move-result v13

    int-to-long v13, v13

    cmp-long v15, v3, v13

    if-lez v15, :cond_3

    .line 25
    const-string v1, "upload in homepage!"

    invoke-static {v6, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 30
    :cond_3
    iget-object v3, v0, Lccsansan/ar/getDownloadingList;->unifiedDownload:Lccsansan/ar/getDownloadingList$addDownloadListener;

    sget-object v4, Lccsansan/ar/getDownloadingList$addDownloadListener;->QUIT_APP:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-ne v3, v4, :cond_4

    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    cmp-long v13, v3, v9

    if-lez v13, :cond_4

    .line 31
    const-string v1, "quit app, can upload!"

    invoke-static {v6, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 36
    :cond_4
    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    const/16 v13, 0x400

    invoke-static {v13}, Lccsansan/ac/getDownloadingList;->getDownloadingList(I)I

    move-result v14

    int-to-long v14, v14

    cmp-long v16, v3, v14

    if-lez v16, :cond_5

    iget-object v3, v0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    iget-boolean v3, v3, Lccsansan/ar/getDownloadingList$getDownloadingList;->unifiedDownload:Z

    if-eqz v3, :cond_5

    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->deleteDownItem:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v12}, Lccsansan/ac/getDownloadingList;->addDownloadListener(I)I

    move-result v12

    int-to-long v14, v12

    cmp-long v12, v3, v14

    if-lez v12, :cond_5

    .line 37
    const-string v1, "cached events count had over than MAX count(1024), can upload!"

    invoke-static {v6, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v11

    .line 42
    :cond_5
    iget-object v3, v0, Lccsansan/ar/getDownloadingList;->unifiedDownload:Lccsansan/ar/getDownloadingList$addDownloadListener;

    sget-object v4, Lccsansan/ar/getDownloadingList$addDownloadListener;->CONTINUE_UPLOAD:Lccsansan/ar/getDownloadingList$addDownloadListener;

    if-ne v3, v4, :cond_a

    .line 43
    iget-object v1, v0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    invoke-static {v1}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    invoke-virtual {v2}, Lccsansan/ar/getDownloadingList$getDownloadingList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, v0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    iget-boolean v2, v1, Lccsansan/ar/getDownloadingList$getDownloadingList;->unifiedDownload:Z

    if-eqz v2, :cond_6

    iget-wide v1, v0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    invoke-static {v13}, Lccsansan/ac/getDownloadingList;->getDownloadingList(I)I

    move-result v3

    int-to-long v3, v3

    cmp-long v9, v1, v3

    if-gtz v9, :cond_7

    iget-object v1, v0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    iget-boolean v1, v1, Lccsansan/ar/getDownloadingList$getDownloadingList;->getDownloadingList:Z

    if-eqz v1, :cond_8

    goto :goto_0

    :cond_6
    iget v1, v1, Lccsansan/ar/getDownloadingList$getDownloadingList;->removeDownloadListener:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    :cond_7
    :goto_0
    const/4 v5, 0x1

    .line 46
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "continue to upload,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_9

    goto :goto_1

    :cond_9
    move-object v7, v8

    :goto_1
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v6, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 52
    :cond_a
    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    cmp-long v7, v3, v9

    if-lez v7, :cond_b

    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->deleteDownItem:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const/16 v3, 0x7530

    invoke-static {v3}, Lccsansan/ac/getDownloadingList;->IncentiveDownloadUtils(I)I

    move-result v3

    int-to-long v3, v3

    cmp-long v7, v1, v3

    if-lez v7, :cond_b

    const/4 v5, 0x1

    :cond_b
    if-eqz v5, :cond_c

    const-string v1, "current had over than default interval, can upload!"

    goto :goto_2

    :cond_c
    const-string v1, "current is not time to default interval, can not upload!"

    .line 54
    :goto_2
    invoke-static {v6, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 55
    :cond_d
    :goto_3
    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    cmp-long v12, v3, v9

    if-lez v12, :cond_e

    iget-wide v3, v0, Lccsansan/ar/getDownloadingList;->deleteDownItem:J

    cmp-long v12, v3, v9

    if-eqz v12, :cond_e

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v9, v1, v3

    if-lez v9, :cond_e

    const/4 v5, 0x1

    .line 56
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network is offline or unknown,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_f

    goto :goto_4

    :cond_f
    move-object v7, v8

    :goto_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v6, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method public addDownloadListener(ZZLjava/lang/Exception;)V
    .locals 4

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    iput-wide v0, p0, Lccsansan/ar/getDownloadingList;->deleteDownItem:J

    if-nez p1, :cond_0

    .line 17
    iget-object v2, p0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    iget-boolean v3, v2, Lccsansan/ar/getDownloadingList$getDownloadingList;->unifiedDownload:Z

    if-nez v3, :cond_0

    .line 18
    iget p2, v2, Lccsansan/ar/getDownloadingList$getDownloadingList;->removeDownloadListener:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v2, Lccsansan/ar/getDownloadingList$getDownloadingList;->removeDownloadListener:I

    goto :goto_0

    .line 20
    :cond_0
    new-instance v2, Lccsansan/ar/getDownloadingList$getDownloadingList;

    invoke-direct {v2, p0, p1, p2, p3}, Lccsansan/ar/getDownloadingList$getDownloadingList;-><init>(Lccsansan/ar/getDownloadingList;ZZLjava/lang/Exception;)V

    iput-object v2, p0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    :goto_0
    if-eqz p1, :cond_1

    .line 23
    iput-wide v0, p0, Lccsansan/ar/getDownloadingList;->getDownloadStatusByUrl:J

    .line 24
    invoke-static {}, Lccsansan/am/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/am/IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/am/IncentiveDownloadUtils;->addDownloadListener()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    .line 26
    :cond_1
    iget p1, p0, Lccsansan/ar/getDownloadingList;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lccsansan/ar/getDownloadingList;->removeDownloadListener:I

    .line 27
    invoke-static {p1}, Lccsansan/bw/getErrorCode;->getDownloadingList(I)V

    .line 28
    iget-wide p1, p0, Lccsansan/ar/getDownloadingList;->deleteDownItem:J

    invoke-static {p1, p2}, Lccsansan/bw/getErrorCode;->getDownloadingList(J)V

    .line 29
    iget-wide p1, p0, Lccsansan/ar/getDownloadingList;->getDownloadStatusByUrl:J

    invoke-static {p1, p2}, Lccsansan/bw/getErrorCode;->unifiedDownload(J)V

    return-void
.end method

.method public removeDownloadListener()J
    .locals 2

    .line 30
    iget-object v0, p0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    iget-boolean v0, v0, Lccsansan/ar/getDownloadingList$getDownloadingList;->unifiedDownload:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2710

    :goto_0
    return-wide v0
.end method

.method public removeDownloadListener(Ljava/lang/String;)Z
    .locals 6

    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Lccsansan/ac/getDownloadingList;->getDownloadedRecordByUrl(I)I

    move-result v1

    .line 13
    const-string v2, "quit_app"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "policy_back_home"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-wide v2, p0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    int-to-long v4, v1

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadPolicy [mNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ar/getDownloadingList;->addDownloadListener:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ar/getDownloadingList;->unifiedDownload:Lccsansan/ar/getDownloadingList$addDownloadListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEventCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/ar/getDownloadingList;->getDownloadingList:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUploadTimesPerCircle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/ar/getDownloadingList;->removeDownloadListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastUploadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lccsansan/ar/getDownloadingList;->deleteDownItem:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 2
    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-static {v2, v1}, Lccsansan/bw/getName;->getDownloadingList(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/ar/getDownloadingList;->getDownloadingRecordByUrl:Lccsansan/ar/getDownloadingList$getDownloadingList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload()I
    .locals 1

    .line 1
    const/16 v0, 0x400

    invoke-static {v0}, Lccsansan/ac/getDownloadingList;->getDownloadingList(I)I

    move-result v0

    return v0
.end method
