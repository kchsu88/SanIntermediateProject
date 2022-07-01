.class Lccsansan/ay/unifiedDownload$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ay/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/ay/unifiedDownload;

.field final synthetic unifiedDownload:Lccsansan/aj/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/ay/unifiedDownload;Lccsansan/aj/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ay/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/ay/unifiedDownload;

    iput-object p2, p0, Lccsansan/ay/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "addReserve"

    invoke-static {v0}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    .line 2
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    invoke-static {v0}, Lccsansan/aj/getDownloadingList;->removeDownloadListener(Lccsansan/aj/getDownloadingList;)Lccsansan/aj/getDownloadingList$removeDownloadListener;

    move-result-object v0

    sget-object v1, Lccsansan/aj/getDownloadingList$removeDownloadListener;->OTHER:Lccsansan/aj/getDownloadingList$removeDownloadListener;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lccsansan/bi/addDownloadListener;->unifiedDownload(Z)Z

    :cond_0
    const-wide/32 v0, 0x36ee80

    .line 7
    iget-object v2, p0, Lccsansan/ay/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lccsansan/aj/getDownloadingList;->removeDownloadListener()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 8
    iget-object v2, p0, Lccsansan/ay/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/ay/unifiedDownload;

    iget-object v3, p0, Lccsansan/ay/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    invoke-virtual {v3}, Lccsansan/aj/getDownloadingList;->removeDownloadListener()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lccsansan/ay/unifiedDownload;->unifiedDownload(Lccsansan/ay/unifiedDownload;J)V

    :cond_1
    return-void
.end method
