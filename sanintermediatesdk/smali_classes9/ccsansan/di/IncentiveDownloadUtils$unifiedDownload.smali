.class final Lccsansan/di/IncentiveDownloadUtils$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/di/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/dt/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/dt/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/di/IncentiveDownloadUtils$unifiedDownload;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsansan/di/IncentiveDownloadUtils$unifiedDownload;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsansan/dc/getDownloadingList;->getDownloadingList(Ljava/lang/String;Lccsansan/dt/getDownloadingRecordByUrl;)Z

    return-void
.end method
