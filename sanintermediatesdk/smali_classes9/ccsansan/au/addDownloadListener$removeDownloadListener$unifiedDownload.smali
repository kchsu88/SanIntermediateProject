.class Lccsansan/au/addDownloadListener$removeDownloadListener$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener$removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/au/addDownloadListener$removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/cy/unifiedDownload;->resolveUrl()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/au/addDownloadListener$removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
