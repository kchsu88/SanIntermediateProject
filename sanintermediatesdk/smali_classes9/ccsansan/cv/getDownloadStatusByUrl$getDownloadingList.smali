.class final Lccsansan/cv/getDownloadStatusByUrl$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cv/getDownloadStatusByUrl;->IncentiveDownloadUtils()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lccsansan/cv/getDownloadStatusByUrl;->removeDownloadListener()V

    .line 2
    invoke-static {}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload()Z

    return-void
.end method
