.class Lccsansan/az/getDownloadingList$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/az/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic addDownloadListener:Lccsansan/az/getDownloadingList;

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsansan/az/getDownloadingList;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/az/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/az/getDownloadingList;

    iput-object p2, p0, Lccsansan/az/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/az/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

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
    iget-object v0, p0, Lccsansan/az/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsansan/az/getDownloadingList;

    iget-object v1, p0, Lccsansan/az/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/az/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v2}, Lccsansan/az/getDownloadingList;->unifiedDownload(Lccsansan/az/getDownloadingList;Ljava/lang/String;)Lccsansan/az/unifiedDownload;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsansan/az/getDownloadingList;->unifiedDownload(Lccsansan/az/getDownloadingList;Lccsanandroid/content/Context;Lccsansan/az/unifiedDownload;)V

    return-void
.end method
