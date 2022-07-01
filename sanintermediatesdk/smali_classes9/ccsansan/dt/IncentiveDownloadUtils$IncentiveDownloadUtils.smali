.class Lccsansan/dt/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/dt/unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/dt/IncentiveDownloadUtils;

.field final synthetic getDownloadingList:Lccsansan/dt/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/dt/IncentiveDownloadUtils;Lccsansan/dt/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/dt/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/IncentiveDownloadUtils;

    iput-object p2, p0, Lccsansan/dt/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/dt/unifiedDownload;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dt/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsansan/dt/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/dt/unifiedDownload;

    invoke-static {v0, v1}, Lccsansan/dt/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dt/IncentiveDownloadUtils;Lccsansan/dt/unifiedDownload;)Ljava/lang/String;

    return-void
.end method
