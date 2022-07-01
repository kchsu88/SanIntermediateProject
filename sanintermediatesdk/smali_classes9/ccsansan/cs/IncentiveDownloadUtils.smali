.class public Lccsansan/cs/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:J

.field private addDownloadListener:J

.field private deleteDownItem:Lccsansan/cs/unifiedDownload;

.field private getDownloadStatusByUrl:J

.field private getDownloadedCount:J

.field private getDownloadedList:Ljava/lang/String;

.field private getDownloadedRecordByUrl:Lccsansan/cs/addDownloadListener;

.field protected getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingRecordByUrl:J

.field private removeDownloadListener:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

.field private resume:I

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->UNKOWN:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    iput-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lccsansan/cs/addDownloadListener;)V
    .locals 6

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->UNKOWN:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    iput-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lccsansan/cs/addDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    .line 39
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lccsansan/cs/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    .line 41
    iput-object v1, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lccsansan/cs/addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cs/unifiedDownload;->fromString(Ljava/lang/String;)Lccsansan/cs/unifiedDownload;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cs/unifiedDownload;

    .line 43
    iput-object p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/cs/addDownloadListener;

    .line 44
    invoke-virtual {p1}, Lccsansan/cs/addDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    .line 45
    iput-wide v2, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    .line 46
    const/4 p1, 0x0

    iput p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->resume:I

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    return-wide v0
.end method

.method public IncentiveDownloadUtils(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsansan/cs/unifiedDownload;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cs/unifiedDownload;

    return-void
.end method

.method public addDownloadListener()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    return-object v0
.end method

.method public addDownloadListener(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedCount:J

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    return-void
.end method

.method public addDownloadListener(Lccsansan/cs/addDownloadListener;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/cs/addDownloadListener;

    return-void
.end method

.method public deleteDownItem()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedCount:J

    return-wide v0
.end method

.method public getDownloadStatusByUrl()Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    return-object v0
.end method

.method public getDownloadedList()Lccsansan/cs/addDownloadListener;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Lccsansan/cs/addDownloadListener;

    return-object v0
.end method

.method public getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadingCount()I
    .locals 1

    .line 2
    iget v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->resume:I

    return v0
.end method

.method public getDownloadingList()Lccsansan/cs/unifiedDownload;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cs/unifiedDownload;

    return-object v0
.end method

.method public getDownloadingList(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    return-void
.end method

.method public getDownloadingRecordByUrl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadStatusByUrl:J

    return-wide v0
.end method

.method public pause()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingRecordByUrl:J

    return-wide v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    return-void
.end method

.method public resume()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->addDownloadListener:J

    return-wide v0
.end method

.method public unifiedDownload(I)V
    .locals 0

    .line 8
    iput p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->resume:I

    return-void
.end method

.method public unifiedDownload(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->addDownloadListener:J

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadedList:Ljava/lang/String;

    return-void
.end method

.method public unifiedDownload(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    return-void
.end method

.method public unifiedDownload()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cs/IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cs/unifiedDownload;

    sget-object v1, Lccsansan/cs/unifiedDownload;->VIDEO:Lccsansan/cs/unifiedDownload;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lccsansan/cl/unifiedDownload;->getDownloadStatusByUrl()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
