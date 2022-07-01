.class final Lccsansan/cy/deleteDownItem$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/deleteDownItem;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsansan/dt/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/deleteDownItem$addDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    iput-object p2, p0, Lccsansan/cy/deleteDownItem$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/cy/deleteDownItem$addDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    iget-object v1, p0, Lccsansan/cy/deleteDownItem$addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lccsansan/cy/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;)Z

    .line 3
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->resume()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lccsansan/cy/deleteDownItem$addDownloadListener;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v1, v0}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Lccsansan/m/removeDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method
