.class Lccsansan/p/addDownloadListener$removeDownloadListener$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$removeDownloadListener;

.field final synthetic unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/p/addDownloadListener$removeDownloadListener;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/p/addDownloadListener$removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$removeDownloadListener;

    iput-object p2, p0, Lccsansan/p/addDownloadListener$removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

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
    iget-object v0, p0, Lccsansan/p/addDownloadListener$removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:Lccsansan/p/addDownloadListener$removeDownloadListener;

    iget-object v0, v0, Lccsansan/p/addDownloadListener$removeDownloadListener;->removeDownloadListener:Lccsansan/p/addDownloadListener;

    invoke-static {v0}, Lccsansan/p/addDownloadListener;->unifiedDownload(Lccsansan/p/addDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/p/addDownloadListener$removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    invoke-static {v0, v1}, Lccsansan/p/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    return-void
.end method
