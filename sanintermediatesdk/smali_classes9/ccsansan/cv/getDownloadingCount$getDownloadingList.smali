.class Lccsansan/cv/getDownloadingCount$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cv/getDownloadingCount;->unifiedDownload(Lccsansan/cv/getDownloadedList;JLccsansan/cv/pause;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cv/pause;

.field final synthetic getDownloadingList:Lccsansan/cv/getDownloadedList;

.field final synthetic unifiedDownload:Lccsansan/cv/getDownloadingCount;


# direct methods
.method constructor <init>(Lccsansan/cv/getDownloadingCount;JLccsansan/cv/getDownloadedList;Lccsansan/cv/pause;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->unifiedDownload:Lccsansan/cv/getDownloadingCount;

    iput-object p4, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->getDownloadingList:Lccsansan/cv/getDownloadedList;

    iput-object p5, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->getDownloadingList:Lccsansan/cv/getDownloadedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {v0}, Lccsansan/aw/IncentiveDownloadUtils;->execute()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->getDownloadingList:Lccsansan/cv/getDownloadedList;

    iget-object v1, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    invoke-virtual {v0, v1}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 6
    iget-object v0, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->unifiedDownload:Lccsansan/cv/getDownloadingCount;

    invoke-static {v0}, Lccsansan/cv/getDownloadingCount;->unifiedDownload(Lccsansan/cv/getDownloadingCount;)Lccsansan/aw/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->unifiedDownload:Lccsansan/cv/getDownloadingCount;

    invoke-static {v0}, Lccsansan/cv/getDownloadingCount;->unifiedDownload(Lccsansan/cv/getDownloadingCount;)Lccsansan/aw/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cv/getDownloadingCount$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/cv/pause;

    new-instance v2, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lccsansan/aw/unifiedDownload;->addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;Ljava/lang/Exception;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method
