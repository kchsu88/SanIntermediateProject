.class public Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cv/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "addDownloadListener"
.end annotation


# instance fields
.field public IncentiveDownloadUtils:J

.field public addDownloadListener:Ljava/lang/String;

.field public deleteDownItem:Ljava/lang/String;

.field public getDownloadStatusByUrl:J

.field public getDownloadedList:J

.field private getDownloadedRecordByUrl:Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;

.field public getDownloadingList:J

.field public getDownloadingRecordByUrl:J

.field public removeDownloadListener:I

.field public unifiedDownload:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;)Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;

    return-object p1
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload()Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    move-result-object v0

    return-object v0
.end method

.method public removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadedRecordByUrl:Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lccsansan/dn/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatsInfo{httpCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", headerRange=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", reqStart="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reqOffset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", reqEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadedList:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", filesize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadStatusByUrl:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingRecordByUrl:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload()Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;
    .locals 3

    .line 3
    new-instance v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;

    invoke-direct {v0}, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;-><init>()V

    .line 4
    iget v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    iput v1, v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->removeDownloadListener:I

    .line 5
    iget-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:J

    iput-wide v1, v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingList:J

    .line 6
    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 7
    iget-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:J

    iput-wide v1, v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->IncentiveDownloadUtils:J

    .line 8
    iget-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:J

    iput-wide v1, v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->unifiedDownload:J

    .line 9
    iget-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadedList:J

    iput-wide v1, v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadedList:J

    .line 10
    iget-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadStatusByUrl:J

    iput-wide v1, v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadStatusByUrl:J

    .line 11
    iget-object v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->deleteDownItem:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->deleteDownItem:Ljava/lang/String;

    .line 12
    iget-wide v1, p0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingRecordByUrl:J

    iput-wide v1, v0, Lccsansan/cv/IncentiveDownloadUtils$addDownloadListener;->getDownloadingRecordByUrl:J

    return-object v0
.end method
