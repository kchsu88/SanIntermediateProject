.class Lccsansan/cy/deleteDownList$unifiedDownload$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/deleteDownList$unifiedDownload;->callBackOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;

.field final synthetic unifiedDownload:Lccsansan/cy/deleteDownList$unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/cy/deleteDownList$unifiedDownload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/deleteDownList$unifiedDownload$addDownloadListener;->unifiedDownload:Lccsansan/cy/deleteDownList$unifiedDownload;

    iput-object p3, p0, Lccsansan/cy/deleteDownList$unifiedDownload$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/cy/deleteDownList$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/cy/deleteDownList$unifiedDownload$addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/cy/deleteDownList$unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/cy/deleteDownList$unifiedDownload$addDownloadListener;->unifiedDownload:Lccsansan/cy/deleteDownList$unifiedDownload;

    iget-object v3, v2, Lccsansan/cy/deleteDownList$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/cy/pause;

    iget-object v2, v2, Lccsansan/cy/deleteDownList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lccsansan/cy/deleteDownList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;Ljava/lang/String;)Z

    return-void
.end method
