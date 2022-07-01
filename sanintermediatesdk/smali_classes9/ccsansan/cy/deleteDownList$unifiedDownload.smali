.class final Lccsansan/cy/deleteDownList$unifiedDownload;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cy/pause;

.field final synthetic getDownloadingList:Ljava/util/List;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/deleteDownList$unifiedDownload;->getDownloadingList:Ljava/util/List;

    iput-object p2, p0, Lccsansan/cy/deleteDownList$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/cy/pause;

    iput-object p3, p0, Lccsansan/cy/deleteDownList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 6

    .line 1
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsansan/cy/deleteDownList$unifiedDownload;->getDownloadingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v3

    new-instance v4, Lccsansan/cy/deleteDownList$unifiedDownload$addDownloadListener;

    const-string v5, "Report.Urls"

    invoke-direct {v4, p0, v5, v2, v0}, Lccsansan/cy/deleteDownList$unifiedDownload$addDownloadListener;-><init>(Lccsansan/cy/deleteDownList$unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    :cond_0
    return-void
.end method
