.class public Lccsansan/dg/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/dg/addDownloadListener;

.field private addDownloadListener:Lccsansan/dd/removeDownloadListener;

.field private deleteDownItem:I

.field private deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

.field private getDownloadStatusByUrl:I

.field private getDownloadedCount:I

.field private getDownloadedList:I

.field private getDownloadedRecordByUrl:J

.field private getDownloadingCount:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

.field private getDownloadingList:Lccsansan/dd/getDownloadingList;

.field private getDownloadingRecordByUrl:Z

.field private pause:Lccsansan/dd/getDownloadingList$addDownloadListener;

.field private removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

.field private resume:Lccsansan/dd/getDownloadingList$removeDownloadListener;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsansan/dg/addDownloadListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingRecordByUrl:Z

    .line 7
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl:J

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadedCount:I

    .line 9
    sget-object v0, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->IDLE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    .line 265
    new-instance v0, Lccsansan/dg/unifiedDownload$getDownloadingList;

    invoke-direct {v0, p0}, Lccsansan/dg/unifiedDownload$getDownloadingList;-><init>(Lccsansan/dg/unifiedDownload;)V

    iput-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingCount:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

    .line 341
    new-instance v0, Lccsansan/dg/unifiedDownload$addDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/dg/unifiedDownload$addDownloadListener;-><init>(Lccsansan/dg/unifiedDownload;)V

    iput-object v0, p0, Lccsansan/dg/unifiedDownload;->pause:Lccsansan/dd/getDownloadingList$addDownloadListener;

    .line 375
    new-instance v0, Lccsansan/dg/unifiedDownload$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/dg/unifiedDownload$removeDownloadListener;-><init>(Lccsansan/dg/unifiedDownload;)V

    iput-object v0, p0, Lccsansan/dg/unifiedDownload;->resume:Lccsansan/dd/getDownloadingList$removeDownloadListener;

    .line 376
    iput-object p1, p0, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dg/addDownloadListener;

    .line 377
    new-instance p1, Lccsansan/dg/getDownloadingList;

    invoke-direct {p1}, Lccsansan/dg/getDownloadingList;-><init>()V

    iput-object p1, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dg/addDownloadListener;

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsansan/dg/unifiedDownload;->getDownloadingList(I)V

    return-void
.end method

.method private IncentiveSDK()V
    .locals 4

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    iget-object v2, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lccsansan/dd/getDownloadingList;->getDownloadStatusByUrl()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, p0, Lccsansan/dg/unifiedDownload;->getDownloadStatusByUrl:I

    :goto_0
    iget v3, p0, Lccsansan/dg/unifiedDownload;->getDownloadedCount:I

    invoke-interface {v0, v1, v2, v3}, Lccsansan/dg/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dd/removeDownloadListener;II)V

    .line 5
    :cond_1
    invoke-static {}, Lccsansan/dd/addDownloadListener;->unifiedDownload()Lccsansan/dd/addDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/dd/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadStatusByUrl:I

    .line 7
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "statsComplete"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/dg/unifiedDownload;I)I
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/dg/unifiedDownload;->getDownloadedList:I

    return p1
.end method

.method static synthetic addDownloadListener(Lccsansan/dg/unifiedDownload;Lccsansan/dd/getDownloadingList;)Lccsansan/dd/getDownloadingList;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    return-object p1
.end method

.method static synthetic addDownloadListener(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    return-object p0
.end method

.method private addDownloadListener(I)V
    .locals 3

    .line 37
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 38
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    iget v2, p0, Lccsansan/dg/unifiedDownload;->getDownloadedCount:I

    invoke-interface {v0, v1, v2}, Lccsansan/dg/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dd/removeDownloadListener;I)V

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statsPlay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ad.VideoPresenter"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic deleteDownItem(Lccsansan/dg/unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/dg/unifiedDownload;->getPackageNameByRecord()V

    return-void
.end method

.method static synthetic getDownloadStatusByUrl(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    return-object p0
.end method

.method static synthetic getDownloadedList(Lccsansan/dg/unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/dg/unifiedDownload;->getDownloadingCount()V

    return-void
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsansan/dg/unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/dg/unifiedDownload;->getThumbPathByRecord()V

    return-void
.end method

.method static synthetic getDownloadingCount(Lccsansan/dg/unifiedDownload;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/dg/unifiedDownload;->getDownloadedList:I

    return p0
.end method

.method private getDownloadingCount()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "statsStart, url = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad.VideoPresenter"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_1

    .line 5
    iget-object v2, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lccsansan/dg/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/dd/removeDownloadListener;I)V

    :cond_1
    nop

    .line 6
    const-string v0, "statsStart"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/dg/unifiedDownload;I)I
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/dg/unifiedDownload;->getDownloadStatusByUrl:I

    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    return-object p0
.end method

.method private getDownloadingList(I)V
    .locals 6

    .line 3
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    sget-object v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->IDLE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    if-eq v0, v1, :cond_8

    sget-object v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->COMPLETE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    if-ne v0, v1, :cond_1

    goto/16 :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0, p1}, Lccsansan/dg/IncentiveDownloadUtils;->IncentiveDownloadUtils(I)V

    .line 12
    :cond_2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->getDownloadStatusByUrl()I

    move-result v0

    .line 13
    div-int/lit8 v1, v0, 0x4

    .line 14
    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v1, 0x3

    add-int/lit16 v3, v1, -0x1f4

    const-string v4, "Ad.VideoPresenter"

    if-lt p1, v3, :cond_4

    add-int/lit16 v3, v1, 0x1f4

    if-gt p1, v3, :cond_4

    .line 17
    iget-object v3, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    sget-object v5, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->START:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    if-ne v3, v5, :cond_4

    .line 18
    const-string p1, "quarter report"

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p1, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz p1, :cond_3

    .line 20
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    iget v2, p0, Lccsansan/dg/unifiedDownload;->getDownloadedCount:I

    invoke-interface {p1, v0, v1, v2}, Lccsansan/dg/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/dd/removeDownloadListener;II)V

    .line 21
    :cond_3
    sget-object p1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->QUARTER:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    goto :goto_0

    :cond_4
    add-int/lit16 v1, v0, -0x1f4

    if-lt p1, v1, :cond_6

    add-int/lit16 v1, v0, 0x1f4

    if-gt p1, v1, :cond_6

    .line 22
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    sget-object v3, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->QUARTER:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    if-ne v1, v3, :cond_6

    .line 23
    const-string p1, "half report"

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz p1, :cond_5

    .line 25
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    iget v2, p0, Lccsansan/dg/unifiedDownload;->getDownloadedCount:I

    invoke-interface {p1, v1, v0, v2}, Lccsansan/dg/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/dd/removeDownloadListener;II)V

    .line 26
    :cond_5
    sget-object p1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->HALF:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    goto :goto_0

    :cond_6
    add-int/lit16 v0, v2, -0x1f4

    if-lt p1, v0, :cond_8

    add-int/lit16 v0, v2, 0x1f4

    if-gt p1, v0, :cond_8

    .line 27
    iget-object p1, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    sget-object v0, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->HALF:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    if-ne p1, v0, :cond_8

    .line 28
    const-string p1, "threeQuarter report"

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz p1, :cond_7

    .line 30
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    iget v1, p0, Lccsansan/dg/unifiedDownload;->getDownloadedCount:I

    invoke-interface {p1, v0, v2, v1}, Lccsansan/dg/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dd/removeDownloadListener;II)V

    .line 31
    :cond_7
    sget-object p1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->THREEQUARTER:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    :cond_8
    :goto_0
    return-void
.end method

.method private getDownloadingList(II)V
    .locals 1

    .line 49
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dg/addDownloadListener;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1, p2}, Lccsansan/dg/addDownloadListener;->getDownloadingList(II)V

    :cond_0
    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/dg/unifiedDownload;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lccsansan/dg/unifiedDownload;->getDownloadingList(II)V

    return-void
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsansan/dg/unifiedDownload;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl:J

    return-wide v0
.end method

.method private getPackageNameByRecord()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    invoke-interface {v0, v1}, Lccsansan/dg/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/dd/removeDownloadListener;)V

    :cond_0
    nop

    .line 4
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "statsPause"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getThumbPathByRecord()V
    .locals 8

    .line 1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->deleteDownItem()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->getDownloadStatusByUrl()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v1, :cond_2

    .line 8
    iget-object v2, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->getDownloadStatusByUrl()I

    move-result v3

    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->deleteDownItem()I

    move-result v5

    iget v6, p0, Lccsansan/dg/unifiedDownload;->getDownloadedList:I

    iget v7, p0, Lccsansan/dg/unifiedDownload;->deleteDownItem:I

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v7}, Lccsansan/dg/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/dd/removeDownloadListener;IIIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic pause(Lccsansan/dg/unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/dg/unifiedDownload;->IncentiveSDK()V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/dg/unifiedDownload;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsansan/dg/unifiedDownload;->addDownloadListener(I)V

    return-void
.end method

.method static synthetic resume(Lccsansan/dg/unifiedDownload;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/dg/unifiedDownload;->deleteDownItem:I

    return p0
.end method

.method static synthetic unifiedDownload(Lccsansan/dg/unifiedDownload;I)I
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/dg/unifiedDownload;->deleteDownItem:I

    return p1
.end method

.method static synthetic unifiedDownload(Lccsansan/dg/unifiedDownload;J)J
    .locals 0

    .line 5
    iput-wide p1, p0, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl:J

    return-wide p1
.end method

.method static synthetic unifiedDownload(Lccsansan/dg/unifiedDownload;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/dg/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsansan/dg/unifiedDownload;Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;
    .locals 0

    .line 6
    iput-object p1, p0, Lccsansan/dg/unifiedDownload;->deleteDownList:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    return-object p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->getDownloadingRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addDownloadListener()V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "releasePlayer"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->IncentiveDownloadUtils()V

    .line 7
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsansan/dd/getDownloadingList;->getDownloadingList(Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;)V

    .line 8
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {v0, v1}, Lccsansan/dd/getDownloadingList;->unifiedDownload(Lccsansan/dd/getDownloadingList$addDownloadListener;)V

    .line 9
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {v0, v1}, Lccsansan/dd/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/dd/getDownloadingList$removeDownloadListener;)V

    .line 11
    iput-object v1, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    return-void
.end method

.method public deleteDownItem()V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->removeDownloadListener()V

    .line 7
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    invoke-interface {v0, v1}, Lccsansan/dg/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/dd/removeDownloadListener;)V

    :cond_1
    return-void
.end method

.method public deleteDownList()V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    invoke-interface {v0, v1}, Lccsansan/dg/IncentiveDownloadUtils;->deleteDownItem(Lccsansan/dd/removeDownloadListener;)V

    :cond_0
    nop

    .line 5
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "statsCreateView"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadStatusByUrl()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingRecordByUrl:Z

    if-eqz v0, :cond_0

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingRecordByUrl:Z

    invoke-virtual {p0, v0}, Lccsansan/dg/unifiedDownload;->removeDownloadListener(Z)V

    goto :goto_0

    :cond_0
    nop

    .line 5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingRecordByUrl:Z

    invoke-virtual {p0, v0}, Lccsansan/dg/unifiedDownload;->removeDownloadListener(Z)V

    .line 7
    :goto_0
    iget-boolean v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingRecordByUrl:Z

    return v0
.end method

.method public getDownloadedCount()V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    invoke-interface {v0, v1}, Lccsansan/dg/IncentiveDownloadUtils;->getDownloadStatusByUrl(Lccsansan/dd/removeDownloadListener;)V

    :cond_0
    nop

    .line 5
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "statsClose"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadedList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    invoke-interface {v0, v1}, Lccsansan/dg/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/dd/removeDownloadListener;)V

    :cond_0
    nop

    .line 4
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "statsSkip"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadedRecordByUrl()V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->unifiedDownload()V

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 7

    .line 42
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    iget-object v2, p0, Lccsansan/dg/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl:J

    sub-long/2addr v3, v5

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lccsansan/dg/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/dd/removeDownloadListener;Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    nop

    .line 45
    const-string p1, "Ad.VideoPresenter"

    const-string v0, "statsError"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;ZZI)V
    .locals 2

    .line 8
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    const-string v1, "Ad.VideoPresenter"

    if-nez v0, :cond_0

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lccsansan/dg/unifiedDownload;->removeDownloadListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "start error :: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_0
    :goto_0
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dg/addDownloadListener;

    invoke-interface {v0}, Lccsansan/dg/addDownloadListener;->deleteDownItem()V

    .line 18
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {v0, p2}, Lccsansan/dd/getDownloadingList;->removeDownloadListener(Z)V

    .line 19
    iput-object p1, p0, Lccsansan/dg/unifiedDownload;->unifiedDownload:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lccsansan/dg/unifiedDownload;->getDownloadingRecordByUrl:Z

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl:J

    .line 23
    iget-boolean p2, p0, Lccsansan/dg/unifiedDownload;->getDownloadingRecordByUrl:Z

    invoke-virtual {p0, p2}, Lccsansan/dg/unifiedDownload;->removeDownloadListener(Z)V

    .line 24
    const-string p2, "start"

    invoke-static {v1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p2, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {p2, p1, p4}, Lccsansan/dd/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;I)V

    .line 27
    iget p1, p0, Lccsansan/dg/unifiedDownload;->getDownloadedCount:I

    if-nez p1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 28
    iput p1, p0, Lccsansan/dg/unifiedDownload;->getDownloadedCount:I

    :cond_1
    return-void
.end method

.method public getDownloadingList()Z
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->getDownloadedList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDownloadingRecordByUrl()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->getDownloadingList()V

    .line 6
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lccsansan/dg/IncentiveDownloadUtils;->getDownloadingList()V

    :cond_1
    return-void
.end method

.method public pause()I
    .locals 1

    .line 32
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->getDownloadStatusByUrl()I

    move-result v0

    :goto_0
    return v0
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 3
    invoke-static {}, Lccsansan/dd/addDownloadListener;->unifiedDownload()Lccsansan/dd/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dd/addDownloadListener;->IncentiveDownloadUtils()Lccsansan/dd/getDownloadingList;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->IncentiveDownloadUtils()V

    .line 6
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->addDownloadListener()V

    .line 7
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->getDownloadingCount:Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;

    invoke-interface {v0, v1}, Lccsansan/dd/getDownloadingList;->getDownloadingList(Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;)V

    .line 8
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->pause:Lccsansan/dd/getDownloadingList$addDownloadListener;

    invoke-interface {v0, v1}, Lccsansan/dd/getDownloadingList;->unifiedDownload(Lccsansan/dd/getDownloadingList$addDownloadListener;)V

    .line 9
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    iget-object v1, p0, Lccsansan/dg/unifiedDownload;->resume:Lccsansan/dd/getDownloadingList$removeDownloadListener;

    invoke-interface {v0, v1}, Lccsansan/dd/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/dd/getDownloadingList$removeDownloadListener;)V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Z)V
    .locals 2

    .line 29
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 30
    :goto_0
    invoke-interface {v0, v1}, Lccsansan/dd/getDownloadingList;->addDownloadListener(I)V

    .line 31
    :cond_1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->removeDownloadListener:Lccsansan/dg/IncentiveDownloadUtils;

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 34
    iget-object p1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    invoke-interface {v0, p1}, Lccsansan/dg/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dd/removeDownloadListener;)V

    goto :goto_1

    .line 36
    :cond_3
    iget-object p1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    invoke-interface {v0, p1}, Lccsansan/dg/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dd/removeDownloadListener;)V

    :goto_1
    return-void
.end method

.method public resume()V
    .locals 2

    .line 46
    iget v0, p0, Lccsansan/dg/unifiedDownload;->deleteDownItem:I

    if-eqz v0, :cond_1

    iget v1, p0, Lccsansan/dg/unifiedDownload;->getDownloadedList:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-direct {p0, v0, v1}, Lccsansan/dg/unifiedDownload;->getDownloadingList(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public unifiedDownload()Lccsansan/dd/getDownloadingList;
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    return-object v0
.end method

.method public unifiedDownload(Lccsanandroid/view/TextureView;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lccsansan/dg/unifiedDownload;->getDownloadingList:Lccsansan/dd/getDownloadingList;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0, p1}, Lccsansan/dd/getDownloadingList;->unifiedDownload(Lccsanandroid/view/TextureView;)V

    :cond_0
    return-void
.end method

.method public unifiedDownload(Lccsansan/dd/removeDownloadListener;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lccsansan/dg/unifiedDownload;->addDownloadListener:Lccsansan/dd/removeDownloadListener;

    return-void
.end method
