.class Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/aw/getDownloadedRecordByUrl;

.field final synthetic unifiedDownload:Lccsansan/aw/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/aw/getDownloadedRecordByUrl;Ljava/lang/String;Lccsansan/aw/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Lccsansan/aw/getDownloadedRecordByUrl;

    iput-object p3, p0, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:Lccsansan/aw/IncentiveDownloadUtils;

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Lccsansan/aw/getDownloadedRecordByUrl;

    iget-object v1, p0, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:Lccsansan/aw/IncentiveDownloadUtils;

    invoke-virtual {v0, v1}, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;->unifiedDownload:Lccsansan/aw/IncentiveDownloadUtils;

    iget v1, v0, Lccsansan/aw/IncentiveDownloadUtils;->pause:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lccsansan/aw/IncentiveDownloadUtils;->pause:I

    .line 5
    iget-object v1, p0, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Lccsansan/aw/getDownloadedRecordByUrl;

    invoke-virtual {v1, v0}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Lccsansan/aw/getDownloadedRecordByUrl;

    invoke-virtual {v0}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;->removeDownloadListener:Lccsansan/aw/getDownloadedRecordByUrl;

    invoke-virtual {v1}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener()V

    .line 8
    throw v0
.end method
