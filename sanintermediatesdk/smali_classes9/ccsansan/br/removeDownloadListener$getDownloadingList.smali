.class Lccsansan/br/removeDownloadListener$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/br/removeDownloadListener;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/br/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/br/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/br/removeDownloadListener$getDownloadingList;->getDownloadingList:Lccsansan/br/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/br/removeDownloadListener$getDownloadingList;->getDownloadingList:Lccsansan/br/removeDownloadListener;

    invoke-static {v0}, Lccsansan/br/removeDownloadListener;->addDownloadListener(Lccsansan/br/removeDownloadListener;)Lccsansan/av/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/av/getDownloadingList;->removeDownloadListener()V

    return-void
.end method
