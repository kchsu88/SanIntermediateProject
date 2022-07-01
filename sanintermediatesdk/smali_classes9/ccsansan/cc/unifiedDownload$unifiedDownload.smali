.class final Lccsansan/cc/unifiedDownload$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cc/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cc/unifiedDownload$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/cc/unifiedDownload$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/cc/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;)V

    .line 3
    const-string v0, "et"

    invoke-static {v0}, Lccsansan/cc/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lccsansan/cc/unifiedDownload$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v2, v0, v1}, Lccsansan/cc/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 6
    const-string v0, "pid"

    invoke-static {v0}, Lccsansan/cc/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lccsansan/cc/unifiedDownload$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v2, v0, v1}, Lccsansan/cc/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 9
    const-string v0, "rid"

    invoke-static {v0}, Lccsansan/cc/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lccsansan/cc/unifiedDownload$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v2, v0, v1}, Lccsansan/cc/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 12
    const-string v0, "sid"

    invoke-static {v0}, Lccsansan/cc/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lccsansan/cc/unifiedDownload$unifiedDownload;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v2, v0, v1}, Lccsansan/cc/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
