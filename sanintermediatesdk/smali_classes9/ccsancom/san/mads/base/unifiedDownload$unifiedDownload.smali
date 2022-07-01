.class Lccsancom/san/mads/base/unifiedDownload$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cv/getThumbPathByRecord;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/base/unifiedDownload;->trackReportShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/base/unifiedDownload;


# direct methods
.method constructor <init>(Lccsancom/san/mads/base/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/base/unifiedDownload$unifiedDownload;->getDownloadingList:Lccsancom/san/mads/base/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadingList()V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/base/unifiedDownload$unifiedDownload;->getDownloadingList:Lccsancom/san/mads/base/unifiedDownload;

    sget-object v1, Lccsancom/san/ads/AdError;->XZ_VIDEO_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {v0, v1}, Lccsancom/san/mads/base/unifiedDownload;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public removeDownloadListener(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/base/unifiedDownload$unifiedDownload;->getDownloadingList:Lccsancom/san/mads/base/unifiedDownload;

    iget-object p2, p1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {p1, p2}, Lccsancom/san/mads/base/unifiedDownload;->IncentiveDownloadUtils(Lccsancom/san/mads/base/unifiedDownload;Lccsansan/dt/removeDownloadListener;)V

    return-void
.end method
