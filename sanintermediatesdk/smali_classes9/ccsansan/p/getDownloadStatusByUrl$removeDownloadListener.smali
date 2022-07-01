.class final Lccsansan/p/getDownloadStatusByUrl$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Z

.field final synthetic getDownloadingList:Z


# direct methods
.method constructor <init>(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/p/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:Z

    iput-boolean p2, p0, Lccsansan/p/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Z

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/p/getDownloadStatusByUrl;->IncentiveDownloadUtils()V

    .line 2
    iget-boolean v0, p0, Lccsansan/p/getDownloadStatusByUrl$removeDownloadListener;->getDownloadingList:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lccsansan/p/getDownloadStatusByUrl;->addDownloadListener()V

    .line 5
    :cond_0
    invoke-static {}, Lccsansan/p/getDownloadStatusByUrl;->removeDownloadListener()V

    .line 7
    invoke-static {}, Lccsansan/bq/getDownloadingRecordByUrl;->unifiedDownload()V

    .line 9
    iget-boolean v0, p0, Lccsansan/p/getDownloadStatusByUrl$removeDownloadListener;->addDownloadListener:Z

    if-eqz v0, :cond_1

    const-string v1, "init"

    goto :goto_0

    :cond_1
    const-string v1, "net_change"

    :goto_0
    invoke-static {v0, v1}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList(ZLjava/lang/String;)V

    return-void
.end method
