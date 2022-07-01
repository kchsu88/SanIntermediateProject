.class public Lccsancom/san/mads/nativead/unifiedDownload;
.super Lccsancom/san/mads/base/unifiedDownload;
.source ""


# instance fields
.field private getDownloadedCount:Lccsancom/san/mads/nativead/removeDownloadListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/base/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V

    return-void
.end method


# virtual methods
.method public addDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Mads.NativeLoader"

    const-string v1, "#onAdLoaded"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dt/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/nativead/unifiedDownload;->getDownloadedCount:Lccsancom/san/mads/nativead/removeDownloadListener;

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lccsancom/san/ads/AdError;->UN_SUPPORT_TYPE_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {v0, v1}, Lccsancom/san/mads/nativead/removeDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/nativead/unifiedDownload;->getDownloadedCount:Lccsancom/san/mads/nativead/removeDownloadListener;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-interface {v0, v1}, Lccsancom/san/mads/nativead/removeDownloadListener;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public deleteDownItem()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadingList(Lccsancom/san/mads/nativead/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/nativead/unifiedDownload;->getDownloadedCount:Lccsancom/san/mads/nativead/removeDownloadListener;

    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoadError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.NativeLoader"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/nativead/unifiedDownload;->getDownloadedCount:Lccsancom/san/mads/nativead/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lccsancom/san/mads/nativead/removeDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    :cond_0
    return-void
.end method
