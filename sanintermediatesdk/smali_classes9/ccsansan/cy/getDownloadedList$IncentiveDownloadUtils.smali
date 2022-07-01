.class public Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cy/getDownloadedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IncentiveDownloadUtils"
.end annotation


# instance fields
.field private ActionTypeDetailPage:I

.field private ActionTypeDownload:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

.field private ActionTypeReserveApp:Ljava/lang/String;

.field private IncentiveDownloadUtils:I

.field private IncentiveSDK:I

.field private IncentiveSDK$1:J

.field private addDownloadListener:Lccsanandroid/content/Context;

.field private deleteDownItem:I

.field private deleteDownList:I

.field private execute:J

.field private getActionType:I

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:I

.field private getDownloadedList:Ljava/lang/String;

.field private getDownloadedRecordByUrl:Ljava/lang/String;

.field private getDownloadingCount:I

.field private getDownloadingList:I

.field private getDownloadingRecordByUrl:J

.field private getPackageNameByRecord:I

.field private getThumbPathByRecord:Z

.field private pause:I

.field private performAction:Z

.field private performActionWhenOffline:Ljava/lang/String;

.field private removeDownloadListener:Ljava/lang/String;

.field private resolveUrl:Ljava/lang/String;

.field private resume:I

.field private shouldTryHandlingAction:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;"
        }
    .end annotation
.end field

.field private trackReportClick:I

.field private trackReportShow:I

.field private unifiedDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lccsansan/dt/getDownloadedCount;->NORMAL:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v0}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v0

    iput v0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 3
    const/4 v0, 0x1

    iput v0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList:I

    .line 13
    const/4 v1, -0x1

    iput v1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->resume:I

    .line 14
    iput v1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->pause:I

    .line 15
    const/4 v2, 0x0

    iput v2, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedCount:I

    .line 18
    iput v1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->trackReportClick:I

    .line 20
    iput-boolean v2, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getThumbPathByRecord:Z

    .line 22
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getThumbPathByRecord()I

    move-result v1

    iput v1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->trackReportShow:I

    .line 23
    invoke-static {}, Lccsansan/cy/unifiedDownload;->IncentiveSDK()I

    move-result v1

    iput v1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getPackageNameByRecord:I

    .line 39
    iput-object p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/content/Context;

    .line 40
    new-array p1, v0, [Ljava/lang/String;

    aput-object p2, p1, v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:Ljava/util/List;

    return-void
.end method

.method static synthetic ActionTypeDetailPage(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->shouldTryHandlingAction:Ljava/util/List;

    return-object p0
.end method

.method static synthetic ActionTypeDownload(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getActionType:I

    return p0
.end method

.method static synthetic ActionTypeReserveApp(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->performActionWhenOffline:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic IncentiveSDK(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->trackReportShow:I

    return p0
.end method

.method static synthetic IncentiveSDK$1(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    return p0
.end method

.method static synthetic addDownloadListener(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList:I

    return p0
.end method

.method static synthetic deleteDownItem(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->deleteDownItem:I

    return p0
.end method

.method static synthetic deleteDownList(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingCount:I

    return p0
.end method

.method static synthetic execute(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->resolveUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic getActionType(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    return-object p0
.end method

.method static synthetic getDownloadStatusByUrl(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    return-wide v0
.end method

.method static synthetic getDownloadedCount(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->pause:I

    return p0
.end method

.method static synthetic getDownloadedList(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic getDownloadingCount(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->resume:I

    return p0
.end method

.method static synthetic getDownloadingList(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    return p0
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic getPackageNameByRecord(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveSDK:I

    return p0
.end method

.method static synthetic getThumbPathByRecord(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getPackageNameByRecord:I

    return p0
.end method

.method static synthetic pause(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedCount:I

    return p0
.end method

.method static synthetic performAction(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->performAction:Z

    return p0
.end method

.method static synthetic performActionWhenOffline(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->ActionTypeReserveApp:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:Ljava/util/List;

    return-object p0
.end method

.method static synthetic resolveUrl(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveSDK$1:J

    return-wide v0
.end method

.method static synthetic resume(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->deleteDownList:I

    return p0
.end method

.method static synthetic shouldTryHandlingAction(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->execute:J

    return-wide v0
.end method

.method static synthetic trackReportClick(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->trackReportClick:I

    return p0
.end method

.method static synthetic trackReportShow(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getThumbPathByRecord:Z

    return p0
.end method

.method static synthetic unifiedDownload(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)Lccsanandroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->resolveUrl:Ljava/lang/String;

    return-object p0
.end method

.method public IncentiveDownloadUtils(Ljava/util/List;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;)",
            "Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;"
        }
    .end annotation

    .line 18
    iput-object p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->shouldTryHandlingAction:Ljava/util/List;

    return-object p0
.end method

.method public addDownloadListener(I)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getActionType:I

    return-object p0
.end method

.method public addDownloadListener(J)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 4
    iput-wide p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->execute:J

    return-object p0
.end method

.method public addDownloadListener(Ljava/lang/String;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 22
    iput-object p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->performActionWhenOffline:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadingList(I)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->ActionTypeDetailPage:I

    return-object p0
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIIIIIZLjava/lang/String;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 4
    iput p3, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->deleteDownItem:I

    .line 6
    iput-object p4, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/String;

    .line 8
    iput-wide p6, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    .line 10
    iput p8, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->resume:I

    .line 11
    iput p9, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->pause:I

    .line 12
    iput p10, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingCount:I

    .line 13
    iput p11, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadedCount:I

    .line 14
    iput p12, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveSDK:I

    .line 15
    iput-boolean p13, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getThumbPathByRecord:Z

    .line 16
    iput-object p14, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->ActionTypeReserveApp:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadingList(Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 21
    iput-object p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->ActionTypeDownload:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    return-object p0
.end method

.method public removeDownloadListener(I)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 17
    iput p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->trackReportClick:I

    return-object p0
.end method

.method public removeDownloadListener(J)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    return-object p0
.end method

.method public unifiedDownload(I)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->deleteDownList:I

    return-object p0
.end method

.method public unifiedDownload(J)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 19
    iput-wide p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveSDK$1:J

    return-object p0
.end method

.method public unifiedDownload(Z)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;
    .locals 0

    .line 20
    iput-boolean p1, p0, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->performAction:Z

    return-object p0
.end method

.method public unifiedDownload()Lccsansan/cy/getDownloadedList;
    .locals 1

    .line 23
    new-instance v0, Lccsansan/cy/getDownloadedList;

    invoke-direct {v0, p0}, Lccsansan/cy/getDownloadedList;-><init>(Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;)V

    return-object v0
.end method
