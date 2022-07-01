.class Lccsansan/p/removeDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/p/removeDownloadListener;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/p/removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/p/removeDownloadListener;

    iput-object p2, p0, Lccsansan/p/removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

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
    iget-object v0, p0, Lccsansan/p/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/p/removeDownloadListener;

    invoke-static {v0}, Lccsansan/p/removeDownloadListener;->getDownloadingList(Lccsansan/p/removeDownloadListener;)Lccsansan/m/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsansan/p/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/p/removeDownloadListener;

    invoke-static {v1}, Lccsansan/p/removeDownloadListener;->removeDownloadListener(Lccsansan/p/removeDownloadListener;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/p/removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsansan/m/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
