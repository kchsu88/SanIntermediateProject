.class public Lccsansan/f/IncentiveDownloadUtils;
.super Lccsansan/aw/IncentiveDownloadUtils;
.source ""


# static fields
.field private static deleteDownList:I

.field private static trackReportClick:I


# instance fields
.field protected IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadedCount:Ljava/lang/Exception;

.field protected getDownloadingList:J

.field protected removeDownloadListener:Lccsansan/da/removeDownloadListener;

.field private unifiedDownload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    return-void
.end method

.method public constructor <init>(Lccsancom/san/xz/base/XzRecord;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lccsansan/f/IncentiveDownloadUtils;-><init>(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lccsansan/aw/IncentiveDownloadUtils;-><init>()V

    .line 3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/f/IncentiveDownloadUtils;->getDownloadingList:J

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lccsansan/f/IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/f/IncentiveDownloadUtils;->unifiedDownload:Z

    .line 16
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveDownloadUtils(J)V

    .line 18
    invoke-super {p0, p1}, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/Object;)V

    .line 19
    iput-object p2, p0, Lccsansan/f/IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    const/16 v1, 0x13

    xor-int/lit8 v2, v0, 0x13

    and-int/lit8 v3, v0, 0x13

    or-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    and-int/lit8 v4, v0, -0x14

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    or-int/2addr v0, v4

    neg-int v0, v0

    or-int v1, v2, v0

    shl-int/2addr v1, v3

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    xor-int/lit8 v2, v1, 0x7

    and-int/lit8 v1, v1, 0x7

    or-int/2addr v1, v2

    shl-int/2addr v1, v3

    neg-int v2, v2

    and-int v4, v1, v2

    or-int/2addr v1, v2

    add-int/2addr v4, v1

    rem-int/lit16 v1, v4, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v1, 0x0

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object v0

    :goto_0
    const/16 v2, 0x23

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public IncentiveDownloadUtils(Z)V
    .locals 3

    .line 4
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    or-int/lit8 v1, v0, 0x75

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x75

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean p1, p0, Lccsansan/f/IncentiveDownloadUtils;->unifiedDownload:Z

    packed-switch v2, :pswitch_data_0

    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public addDownloadListener()Z
    .locals 4

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    or-int/lit8 v1, v0, 0x60

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0x60

    sub-int/2addr v1, v0

    and-int/lit8 v0, v1, -0x1

    or-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getFileSize()J

    move-result-wide v0

    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/san/xz/base/XzRecord;->getCompletedSize()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lccsansan/ad/unifiedDownload;->addDownloadListener(J)Z

    move-result v0

    sget v1, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    xor-int/lit8 v2, v1, 0x35

    and-int/lit8 v1, v1, 0x35

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public deleteDownItem()Z
    .locals 3

    .line 3
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    xor-int/lit8 v1, v0, 0x58

    and-int/lit8 v0, v0, 0x58

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lccsansan/aw/IncentiveDownloadUtils;->execute()Z

    move-result v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Lccsansan/aw/IncentiveDownloadUtils;->execute()Z

    move-result v0

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    xor-int/lit8 v2, v1, 0x20

    and-int/lit8 v1, v1, 0x20

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v2, v1

    and-int/lit8 v1, v2, -0x1

    or-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v1, 0x31

    goto :goto_3

    :cond_1
    const/16 v1, 0x44

    :goto_3
    packed-switch v1, :pswitch_data_1

    return v0

    :pswitch_1
    const/16 v1, 0x2b

    :try_start_1
    div-int/lit8 v1, v1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x31
        :pswitch_1
    .end packed-switch
.end method

.method public deleteDownList()I
    .locals 6

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    and-int/lit8 v1, v0, 0x11

    xor-int/lit8 v0, v0, 0x11

    or-int/2addr v0, v1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    sget-object v1, Lccsansan/cs/unifiedDownload;->APP:Lccsansan/cs/unifiedDownload;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    xor-int/lit8 v4, v0, 0x50

    and-int/lit8 v0, v0, 0x50

    shl-int/2addr v0, v3

    add-int/2addr v4, v0

    sub-int/2addr v4, v3

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_4

    goto :goto_2

    :pswitch_0
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    and-int/lit8 v4, v0, 0x61

    xor-int/lit8 v0, v0, 0x61

    or-int/2addr v0, v4

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    packed-switch v2, :pswitch_data_1

    :cond_3
    :goto_1
    :pswitch_1
    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v4, "dw_app_max_retry_cnt"

    invoke-static {v0, v4, v1}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    and-int/lit8 v4, v0, 0x31

    xor-int/lit8 v5, v4, -0x1

    or-int/lit8 v0, v0, 0x31

    and-int/2addr v0, v5

    shl-int/2addr v4, v3

    add-int/2addr v0, v4

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :goto_3
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    const/16 v2, 0x65

    and-int/lit8 v4, v0, -0x66

    xor-int/lit8 v5, v0, -0x1

    and-int/2addr v5, v2

    or-int/2addr v4, v5

    and-int/2addr v0, v2

    shl-int/2addr v0, v3

    neg-int v0, v0

    neg-int v0, v0

    xor-int v2, v4, v0

    and-int/2addr v0, v4

    shl-int/2addr v0, v3

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v2, v2, 0x2

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadStatusByUrl()Ljava/lang/String;
    .locals 5

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    xor-int/lit8 v1, v0, 0x13

    and-int/lit8 v2, v0, 0x13

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v0, -0x14

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x13

    or-int/2addr v0, v2

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cs/unifiedDownload;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    const/16 v2, 0x4f

    xor-int/lit8 v3, v1, 0x4f

    and-int/lit8 v4, v1, 0x4f

    or-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v1, -0x50

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    or-int/2addr v1, v4

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v3, v3, 0x2

    return-object v0
.end method

.method public getDownloadedCount()Ljava/lang/Exception;
    .locals 3

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    add-int/lit8 v0, v0, 0x6f

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v0, v0, -0x1

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedCount:Ljava/lang/Exception;

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    sget v1, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedList()Lccsancom/san/xz/base/XzRecord;
    .locals 5

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    and-int/lit8 v1, v0, 0xd

    xor-int/lit8 v0, v0, 0xd

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    invoke-super {p0}, Lccsansan/aw/IncentiveDownloadUtils;->trackReportShow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/xz/base/XzRecord;

    sget v2, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    and-int/lit8 v3, v2, 0x15

    or-int/lit8 v2, v2, 0x15

    or-int v4, v3, v2

    shl-int/2addr v4, v1

    xor-int/2addr v2, v3

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v4, v4, 0x2

    const/4 v2, 0x0

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x3f

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadedRecordByUrl()Lccsansan/cv/IncentiveDownloadUtils;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lccsansan/cv/IncentiveDownloadUtils;

    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lccsansan/cv/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsansan/da/removeDownloadListener;ZZ)V

    sget v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    or-int/lit8 v2, v1, 0x69

    shl-int/2addr v2, v4

    xor-int/lit8 v1, v1, 0x69

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v1, 0x4b

    goto :goto_0

    :cond_0
    const/16 v1, 0x24

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingCount()Lccsansan/cs/unifiedDownload;
    .locals 3

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    or-int/lit8 v1, v0, 0x4f

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v0, v0, 0x4f

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    const/16 v2, 0x4d

    :try_start_0
    div-int/2addr v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    throw v0

    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getDownloadingList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    xor-int/lit8 v1, v0, 0x43

    and-int/lit8 v0, v0, 0x43

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    neg-int v0, v0

    neg-int v0, v0

    xor-int v3, v1, v0

    and-int/2addr v0, v1

    shl-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v0, 0x0

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v1

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/4 v3, 0x0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/16 v1, 0x4c

    goto :goto_3

    :cond_2
    const/16 v1, 0x32

    :goto_3
    packed-switch v1, :pswitch_data_2

    goto :goto_6

    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget v3, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 v3, v3, 0xc

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    packed-switch v2, :pswitch_data_3

    :goto_5
    :pswitch_2
    goto :goto_7

    :goto_6
    :pswitch_3
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getMultiPartRecords()Ljava/util/List;

    move-result-object v1

    sget v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/16 v0, 0x24

    goto :goto_5

    :cond_4
    const/16 v0, 0xa

    goto :goto_5

    :goto_7
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    add-int/lit8 v0, v0, 0x1a

    and-int/lit8 v2, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v2, v2, 0x2

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public getDownloadingList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    xor-int/lit8 v1, v0, 0x15

    const/16 v2, 0x15

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    and-int v3, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    const/16 v0, 0x13

    goto :goto_0

    :cond_1
    const/16 v0, 0x49

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 v0, v0, 0x7e

    add-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    :cond_2
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/san/xz/base/XzRecord;->addMultiPartRecords(Ljava/util/List;)V

    sget p1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    :cond_3
    :pswitch_0
    sget p1, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    xor-int/lit8 v0, p1, 0x15

    and-int/lit8 v1, p1, 0x15

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, -0x16

    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v2

    or-int/2addr p1, v1

    sub-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/16 p1, 0x18

    goto :goto_1

    :cond_4
    const/16 p1, 0x4b

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 v1, v0, 0x54

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsansan/f/IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lccsansan/f/IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    const/4 v3, 0x0

    :try_start_0
    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    xor-int/lit8 v3, v0, 0x75

    and-int/lit8 v0, v0, 0x75

    or-int/2addr v0, v3

    shl-int/2addr v0, v2

    sub-int/2addr v0, v3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 6
    sget p1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/16 p1, 0x5b

    goto :goto_0

    :cond_0
    const/16 p1, 0x2d

    :goto_0
    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/ae/removeDownloadListener;->pause()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch
.end method

.method public removeDownloadListener()Lccsansan/da/removeDownloadListener;
    .locals 11

    .line 5
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    or-int/lit8 v1, v0, 0x18

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    xor-int/lit8 v3, v0, 0x18

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    sub-int/2addr v1, v3

    sub-int/2addr v1, v2

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    const/4 v4, 0x2

    rem-int/2addr v1, v4

    if-nez v1, :cond_0

    .line 1
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsansan/f/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Lccsansan/f/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    if-nez v1, :cond_1

    const/16 v1, 0x13

    goto :goto_1

    :cond_1
    const/16 v1, 0x47

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/16 v5, 0x9

    :try_start_0
    div-int/2addr v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    const/4 v1, 0x4

    goto :goto_4

    :cond_2
    const/16 v1, 0x4f

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 5
    :goto_5
    and-int/lit8 v1, v0, -0x70

    xor-int/lit8 v3, v0, -0x1

    and-int/lit8 v3, v3, 0x6f

    or-int/2addr v1, v3

    and-int/lit8 v0, v0, 0x6f

    shl-int/2addr v0, v2

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_3

    .line 2
    :cond_3
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v5

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getItem()Lccsansan/ae/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/ae/getDownloadingList;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/xz/base/XzRecord;->isUseDSV()Z

    move-result v9

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->isDynamicApp()Z

    move-result v10

    invoke-static/range {v5 .. v10}, Lccsansan/ad/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/f/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    xor-int/lit8 v1, v0, 0x11

    and-int/lit8 v0, v0, 0x11

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/2addr v1, v4

    if-eqz v1, :cond_4

    const/16 v0, 0x10

    goto :goto_6

    :cond_4
    const/4 v0, 0x2

    :goto_6
    packed-switch v0, :pswitch_data_3

    goto :goto_7

    .line 5
    :pswitch_1
    nop

    :goto_7
    :pswitch_2
    iget-object v0, p0, Lccsansan/f/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    .line 1
    sget v1, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    xor-int/lit8 v3, v1, 0x3

    and-int/lit8 v5, v1, 0x3

    or-int/2addr v3, v5

    shl-int/2addr v3, v2

    and-int/lit8 v5, v1, -0x4

    xor-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v5

    neg-int v1, v1

    or-int v5, v3, v1

    shl-int/lit8 v2, v5, 0x1

    xor-int/2addr v1, v3

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/2addr v2, v4

    .line 5
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public resume()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    and-int/lit8 v1, v0, 0x71

    or-int/lit8 v0, v0, 0x71

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    const/16 v0, 0x5c

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lccsansan/f/IncentiveDownloadUtils;->unifiedDownload:Z

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lccsansan/f/IncentiveDownloadUtils;->unifiedDownload:Z

    goto :goto_2

    :goto_1
    const/16 v1, 0x45

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 4
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lccsansan/aw/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    const-string v1, ", url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    const-string v1, ", file = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/f/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/da/removeDownloadListener;

    if-eqz v1, :cond_0

    .line 4
    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    const/16 v2, 0x51

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 3
    goto :goto_1

    .line 4
    :pswitch_0
    sget v2, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    and-int/lit8 v3, v2, 0x4b

    xor-int/lit8 v2, v2, 0x4b

    or-int/2addr v2, v3

    add-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 3
    :cond_1
    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget v2, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    and-int/lit8 v3, v2, 0x5

    xor-int/lit8 v2, v2, 0x5

    or-int/2addr v2, v3

    xor-int v4, v3, v2

    and-int/2addr v2, v3

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_2

    const/4 v3, 0x0

    :cond_2
    packed-switch v3, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    :goto_1
    sget v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    and-int/lit8 v2, v1, 0x44

    or-int/lit8 v1, v1, 0x44

    add-int/2addr v2, v1

    and-int/lit8 v1, v2, -0x1

    or-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/16 v1, 0x2c

    goto :goto_2

    :cond_3
    const/16 v1, 0x13

    :goto_2
    packed-switch v1, :pswitch_data_2

    .line 3
    :pswitch_2
    const-string v1, ""

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    and-int/lit8 v2, v1, 0x15

    xor-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v2

    and-int v3, v2, v1

    or-int/2addr v1, v2

    add-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    rem-int/lit8 v3, v3, 0x2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2c
        :pswitch_2
    .end packed-switch
.end method

.method public unifiedDownload()Lccsansan/da/removeDownloadListener;
    .locals 4

    .line 5
    nop

    .line 3
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    and-int/lit8 v1, v0, 0x73

    xor-int/lit8 v2, v1, -0x1

    or-int/lit8 v3, v0, 0x73

    and-int/2addr v2, v3

    shl-int/lit8 v1, v1, 0x1

    or-int v3, v2, v1

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v1, v2

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_0

    .line 1
    const/16 v1, 0x3b

    goto :goto_0

    :cond_0
    const/16 v1, 0x5e

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lccsansan/f/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    goto :goto_3

    :pswitch_0
    iget-object v1, p0, Lccsansan/f/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    if-nez v1, :cond_1

    const/16 v1, 0x3a

    goto :goto_1

    :cond_1
    const/16 v1, 0x2a

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_5

    :goto_3
    const/16 v3, 0x50

    :try_start_0
    div-int/lit8 v3, v3, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_2

    const/16 v1, 0x48

    goto :goto_4

    :cond_2
    const/16 v1, 0x32

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 5
    :goto_5
    and-int/lit8 v1, v0, 0xb

    xor-int/lit8 v3, v1, -0x1

    or-int/lit8 v0, v0, 0xb

    and-int/2addr v0, v3

    shl-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    neg-int v1, v1

    xor-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 1
    const/16 v0, 0x34

    goto :goto_6

    :cond_3
    const/16 v0, 0x1e

    :goto_6
    packed-switch v0, :pswitch_data_3

    .line 2
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lccsansan/ad/unifiedDownload;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/f/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    goto :goto_7

    .line 2
    :pswitch_1
    invoke-virtual {p0}, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedList()Lccsancom/san/xz/base/XzRecord;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getContentType()Lccsansan/cs/unifiedDownload;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lccsancom/san/xz/base/XzRecord;->getXzUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lccsansan/ad/unifiedDownload;->unifiedDownload(Lccsansan/cs/unifiedDownload;Ljava/lang/String;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsansan/f/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    goto :goto_8

    :goto_7
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    :goto_8
    nop

    :pswitch_2
    iget-object v0, p0, Lccsansan/f/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/da/removeDownloadListener;

    .line 3
    sget v1, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    or-int/lit8 v3, v1, 0x1b

    shl-int/lit8 v3, v3, 0x1

    xor-int/lit8 v1, v1, 0x1b

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    .line 1
    const/16 v1, 0x51

    goto :goto_9

    :cond_4
    const/16 v1, 0x13

    :goto_9
    packed-switch v1, :pswitch_data_4

    .line 3
    goto :goto_a

    .line 5
    :pswitch_3
    return-object v0

    .line 3
    :goto_a
    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :catchall_1
    move-exception v0

    throw v0

    .line 3
    :catchall_2
    move-exception v0

    goto :goto_c

    :goto_b
    throw v0

    :goto_c
    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2a
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x13
        :pswitch_3
    .end packed-switch
.end method

.method public unifiedDownload(J)V
    .locals 3

    .line 1
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    add-int/lit8 v1, v0, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x2a

    goto :goto_0

    :cond_0
    const/16 v1, 0x49

    :goto_0
    iput-wide p1, p0, Lccsansan/f/IncentiveDownloadUtils;->getDownloadingList:J

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    and-int/lit8 p1, v0, 0x53

    xor-int/lit8 p2, v0, 0x53

    or-int/2addr p2, p1

    neg-int p2, p2

    neg-int p2, p2

    xor-int v0, p1, p2

    and-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload(Ljava/lang/Exception;)V
    .locals 3

    .line 5
    sget v0, Lccsansan/f/IncentiveDownloadUtils;->deleteDownList:I

    or-int/lit8 v1, v0, 0xf

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v0, 0xf

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iput-object p1, p0, Lccsansan/f/IncentiveDownloadUtils;->getDownloadedCount:Ljava/lang/Exception;

    or-int/lit8 p1, v0, 0x47

    shl-int/lit8 p1, p1, 0x1

    xor-int/lit8 v0, v0, 0x47

    sub-int/2addr p1, v0

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/f/IncentiveDownloadUtils;->trackReportClick:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method
