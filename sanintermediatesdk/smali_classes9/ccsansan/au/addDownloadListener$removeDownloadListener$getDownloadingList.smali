.class Lccsansan/au/addDownloadListener$removeDownloadListener$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/au/addDownloadListener$removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

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
    iget-object v0, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsansan/au/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
