.class Lccsansan/cm/unifiedDownload$removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cm/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "removeDownloadListener"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:J

.field private final addDownloadListener:Ljava/lang/String;

.field private getDownloadStatusByUrl:I

.field private getDownloadingList:J

.field private getDownloadingRecordByUrl:I

.field private removeDownloadListener:I

.field private unifiedDownload:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lccsansan/cm/unifiedDownload$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/cm/unifiedDownload$removeDownloadListener;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cm/unifiedDownload$removeDownloadListener;I)I
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadingRecordByUrl:I

    return p1
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cm/unifiedDownload$removeDownloadListener;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadingList:J

    return-wide v0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cm/unifiedDownload$removeDownloadListener;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadingList:J

    return-wide p1
.end method

.method static synthetic addDownloadListener(Lccsansan/cm/unifiedDownload$removeDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadingRecordByUrl:I

    return p0
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsansan/cm/unifiedDownload$removeDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadStatusByUrl:I

    return p0
.end method

.method static synthetic getDownloadingList(Lccsansan/cm/unifiedDownload$removeDownloadListener;I)I
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadStatusByUrl:I

    return p1
.end method

.method static synthetic getDownloadingList(Lccsansan/cm/unifiedDownload$removeDownloadListener;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:J

    return-wide v0
.end method

.method static synthetic getDownloadingList(Lccsansan/cm/unifiedDownload$removeDownloadListener;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:J

    return-wide p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/cm/unifiedDownload$removeDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->unifiedDownload:I

    return p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/cm/unifiedDownload$removeDownloadListener;I)I
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->removeDownloadListener:I

    return p1
.end method

.method static synthetic unifiedDownload(Lccsansan/cm/unifiedDownload$removeDownloadListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->removeDownloadListener:I

    return p0
.end method

.method static synthetic unifiedDownload(Lccsansan/cm/unifiedDownload$removeDownloadListener;I)I
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->unifiedDownload:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{networkId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", spotLoadingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadingList:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", spotShowingInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", spotDailyLoadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->removeDownloadListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spotHourlyLoadCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->unifiedDownload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spotDailyShowingCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadingRecordByUrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", spotHourlyShowingCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cm/unifiedDownload$removeDownloadListener;->getDownloadStatusByUrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
