.class Lccsancom/san/mads/rewarded/removeDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/co/trackReportClick$addDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/rewarded/removeDownloadListener;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/rewarded/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/rewarded/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/rewarded/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsancom/san/mads/rewarded/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsansan/co/resolveUrl;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/rewarded/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsancom/san/mads/rewarded/removeDownloadListener;

    sget-object v0, Lccsancom/san/ads/AdError;->NO_VAST_CONTENT_ERROR:Lccsancom/san/ads/AdError;

    invoke-static {p1, v0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/rewarded/removeDownloadListener;Lccsancom/san/ads/AdError;)V

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsancom/san/mads/rewarded/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsancom/san/mads/rewarded/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/rewarded/removeDownloadListener;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/dt/removeDownloadListener;->unifiedDownload(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lccsancom/san/mads/rewarded/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsancom/san/mads/rewarded/removeDownloadListener;

    invoke-static {p1}, Lccsancom/san/mads/rewarded/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/rewarded/removeDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
