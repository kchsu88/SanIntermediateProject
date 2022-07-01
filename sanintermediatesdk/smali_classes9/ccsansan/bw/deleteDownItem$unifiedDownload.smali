.class public final Lccsansan/bw/deleteDownItem$unifiedDownload;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bw/deleteDownItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "unifiedDownload"
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Z

.field private addDownloadListener:J

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/bw/deleteDownItem$unifiedDownload;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/bw/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Z

    return p1
.end method

.method static synthetic addDownloadListener(Lccsansan/bw/deleteDownItem$unifiedDownload;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bw/deleteDownItem$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic getDownloadingList(Lccsansan/bw/deleteDownItem$unifiedDownload;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lccsansan/bw/deleteDownItem$unifiedDownload;->addDownloadListener:J

    return-wide p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lccsansan/bw/deleteDownItem$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    return-object v0
.end method

.method public addDownloadListener()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/bw/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Z

    return v0
.end method

.method public getDownloadingList()Z
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/bw/deleteDownItem$unifiedDownload;->addDownloadListener:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Info{androidAdvertiserId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/bw/deleteDownItem$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", limitTracking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/bw/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", fetchTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/bw/deleteDownItem$unifiedDownload;->addDownloadListener:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
