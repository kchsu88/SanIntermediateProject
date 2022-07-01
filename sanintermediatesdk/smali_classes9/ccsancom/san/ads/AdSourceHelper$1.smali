.class final Lccsancom/san/ads/AdSourceHelper$1;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/AdSourceHelper;->getDownloadingList(Lccsanandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field final synthetic unifiedDownload:Z


# direct methods
.method constructor <init>(ZLccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsancom/san/ads/AdSourceHelper$1;->unifiedDownload:Z

    iput-object p2, p0, Lccsancom/san/ads/AdSourceHelper$1;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/AdSourceHelper;->addDownloadListener()Z

    move-result v0

    invoke-static {v0}, Lccsancom/san/core/unifiedDownload;->unifiedDownload(Z)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#Initialize finish isFromGp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/san/ads/AdSourceHelper;->isAzFromGp()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasAdapters:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsancom/san/ads/AdSourceHelper;->addDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFromActivity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/san/ads/AdSourceHelper$1;->unifiedDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InitHelper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public execute()V
    .locals 7

    .line 1
    invoke-super {p0}, Lccsancom/san/ads/Task$UICallBackTask;->execute()V

    .line 2
    invoke-static {}, Lccsansan/bq/unifiedDownload;->values()[Lccsansan/bq/unifiedDownload;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 3
    iget-object v5, v4, Lccsansan/bq/unifiedDownload;->initHelperClazz:Ljava/lang/String;

    invoke-static {v5}, Lccsancom/san/ads/AdSourceHelper;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget-object v5, v4, Lccsansan/bq/unifiedDownload;->necessaryClazzName:Ljava/lang/String;

    .line 4
    invoke-static {v5}, Lccsancom/san/ads/AdSourceHelper;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    invoke-static {v6}, Lccsancom/san/ads/AdSourceHelper;->removeDownloadListener(Z)Z

    .line 8
    iget-boolean v5, p0, Lccsancom/san/ads/AdSourceHelper$1;->unifiedDownload:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lccsansan/bq/unifiedDownload;->needInitInActivity:Z

    if-eqz v5, :cond_2

    .line 9
    iget-object v5, p0, Lccsancom/san/ads/AdSourceHelper$1;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v5, v4, v6}, Lccsancom/san/ads/AdSourceHelper;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/bq/unifiedDownload;Z)V

    .line 11
    :cond_2
    iget-boolean v5, p0, Lccsancom/san/ads/AdSourceHelper$1;->unifiedDownload:Z

    if-nez v5, :cond_3

    iget-boolean v5, v4, Lccsansan/bq/unifiedDownload;->needInitInActivity:Z

    if-nez v5, :cond_3

    .line 12
    iget-object v5, p0, Lccsancom/san/ads/AdSourceHelper$1;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v5, v4, v2}, Lccsancom/san/ads/AdSourceHelper;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/bq/unifiedDownload;Z)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
