.class public Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cy/getDownloadingRecordByUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "addDownloadListener"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private IncentiveSDK:J

.field private addDownloadListener:Ljava/lang/String;

.field private deleteDownItem:I

.field private deleteDownList:I

.field private execute:I

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:Z

.field private getDownloadedList:I

.field private getDownloadedRecordByUrl:I

.field private getDownloadingCount:I

.field private getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:I

.field private getPackageNameByRecord:I

.field private getThumbPathByRecord:J

.field private pause:Z

.field private removeDownloadListener:Ljava/lang/String;

.field private resolveUrl:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

.field private resume:I

.field private trackReportClick:Ljava/lang/String;

.field private trackReportShow:J

.field private unifiedDownload:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->pause:Z

    .line 4
    const/4 v1, -0x2

    iput v1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->resume:I

    .line 5
    iput v0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingCount:I

    .line 6
    iput-boolean v0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedCount:Z

    return-void
.end method

.method static synthetic ActionTypeDetailPage(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->resolveUrl:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic IncentiveSDK(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getThumbPathByRecord:J

    return-wide v0
.end method

.method static synthetic addDownloadListener(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload:J

    return-wide v0
.end method

.method static synthetic deleteDownItem(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic deleteDownList(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedCount:Z

    return p0
.end method

.method static synthetic getDownloadStatusByUrl(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedList:I

    return p0
.end method

.method static synthetic getDownloadedCount(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->deleteDownList:I

    return p0
.end method

.method static synthetic getDownloadedList(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedRecordByUrl:I

    return p0
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->deleteDownItem:I

    return p0
.end method

.method static synthetic getDownloadingCount(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingCount:I

    return p0
.end method

.method static synthetic getDownloadingList(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl:I

    return p0
.end method

.method static synthetic getPackageNameByRecord(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->trackReportShow:J

    return-wide v0
.end method

.method static synthetic getThumbPathByRecord(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveSDK:J

    return-wide v0
.end method

.method static synthetic pause(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->resume:I

    return p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic resume(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->trackReportClick:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic shouldTryHandlingAction(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->pause:Z

    return p0
.end method

.method static synthetic trackReportClick(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->execute:I

    return p0
.end method

.method static synthetic trackReportShow(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getPackageNameByRecord:I

    return p0
.end method

.method static synthetic unifiedDownload(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->deleteDownList:I

    return-object p0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 8
    iput-object p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingList:Ljava/lang/String;

    return-object p0
.end method

.method public addDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedRecordByUrl:I

    return-object p0
.end method

.method public addDownloadListener(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 11
    iput-wide p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveSDK:J

    return-object p0
.end method

.method public addDownloadListener(Z)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->pause:Z

    return-object p0
.end method

.method public getDownloadStatusByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 5
    iput p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->execute:I

    return-object p0
.end method

.method public getDownloadingList(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedList:I

    return-object p0
.end method

.method public getDownloadingList(J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 3
    iput-wide p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->trackReportShow:J

    return-object p0
.end method

.method public getDownloadingList(Ljava/lang/String;)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->trackReportClick:Ljava/lang/String;

    return-object p0
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 5
    iput-object p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 7
    iput p3, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadingRecordByUrl:I

    return-object p0
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->unifiedDownload:J

    return-object p0
.end method

.method public getDownloadingList()Lccsansan/cy/getDownloadingRecordByUrl;
    .locals 1

    .line 12
    new-instance v0, Lccsansan/cy/getDownloadingRecordByUrl;

    invoke-direct {v0, p0}, Lccsansan/cy/getDownloadingRecordByUrl;-><init>(Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;)V

    return-object v0
.end method

.method public getDownloadingRecordByUrl(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getPackageNameByRecord:I

    return-object p0
.end method

.method public removeDownloadListener(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->deleteDownItem:I

    return-object p0
.end method

.method public removeDownloadListener(Z)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 10
    iput-boolean p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->getDownloadedCount:Z

    return-object p0
.end method

.method public unifiedDownload(I)Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;
    .locals 0

    .line 9
    iput p1, p0, Lccsansan/cy/getDownloadingRecordByUrl$addDownloadListener;->resume:I

    return-object p0
.end method
