.class public Lccsansan/bu/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/Object;

.field private addDownloadListener:Ljava/lang/Object;

.field private getDownloadingList:J

.field private removeDownloadListener:J

.field private unifiedDownload:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;ZJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/bu/getDownloadingList;->removeDownloadListener:J

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/bu/getDownloadingList;->addDownloadListener:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lccsansan/bu/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 8
    iput-object p1, p0, Lccsansan/bu/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lccsansan/bu/getDownloadingList;->unifiedDownload:I

    goto :goto_0

    .line 11
    :cond_0
    iput-object p1, p0, Lccsansan/bu/getDownloadingList;->addDownloadListener:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 12
    iput p1, p0, Lccsansan/bu/getDownloadingList;->unifiedDownload:I

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsansan/bu/getDownloadingList;->removeDownloadListener:J

    .line 15
    :goto_0
    iput-wide p3, p0, Lccsansan/bu/getDownloadingList;->getDownloadingList:J

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/Object;J)V
    .locals 2

    .line 2
    iput-object p1, p0, Lccsansan/bu/getDownloadingList;->addDownloadListener:Ljava/lang/Object;

    .line 3
    const/4 p1, 0x2

    iput p1, p0, Lccsansan/bu/getDownloadingList;->unifiedDownload:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bu/getDownloadingList;->removeDownloadListener:J

    .line 5
    iput-wide p2, p0, Lccsansan/bu/getDownloadingList;->getDownloadingList:J

    return-void
.end method

.method public addDownloadListener()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lccsansan/bu/getDownloadingList;->addDownloadListener:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsansan/bu/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public removeDownloadListener(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/bu/getDownloadingList;->getDownloadingList:J

    invoke-virtual {p0, p1, v0, v1}, Lccsansan/bu/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/Object;J)V

    return-void
.end method

.method public removeDownloadListener()Z
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/bu/getDownloadingList;->removeDownloadListener:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/bu/getDownloadingList;->getDownloadingList:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    iget v0, p0, Lccsansan/bu/getDownloadingList;->unifiedDownload:I

    if-eq v0, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method
