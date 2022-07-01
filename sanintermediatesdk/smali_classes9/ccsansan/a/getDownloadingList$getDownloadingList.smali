.class Lccsansan/a/getDownloadingList$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/a/getDownloadingList;->getDownloadingList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/a/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/a/getDownloadingList;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/a/getDownloadingList$getDownloadingList;->getDownloadingList:Lccsansan/a/getDownloadingList;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task;-><init>(J)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/a/getDownloadingList$getDownloadingList;->getDownloadingList:Lccsansan/a/getDownloadingList;

    invoke-static {v0}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/a/getDownloadingList;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/p/getDownloadStatusByUrl;->unifiedDownload(ZZ)V

    return-void
.end method
