.class Lccsansan/p/unifiedDownload$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/unifiedDownload;->removeDownloadListener(JLccsansan/m/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/m/removeDownloadListener;

.field final synthetic removeDownloadListener:Lccsansan/p/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/p/unifiedDownload;JLccsansan/m/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/p/unifiedDownload;

    iput-object p4, p0, Lccsansan/p/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/m/removeDownloadListener;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/p/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/p/unifiedDownload;

    iget-object v1, p0, Lccsansan/p/unifiedDownload$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/m/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/p/unifiedDownload;->getDownloadingList(Lccsansan/p/unifiedDownload;Lccsansan/m/removeDownloadListener;)V

    return-void
.end method
