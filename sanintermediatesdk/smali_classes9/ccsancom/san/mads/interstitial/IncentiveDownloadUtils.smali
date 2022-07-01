.class public Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;
.super Lccsancom/san/mads/base/unifiedDownload;
.source ""


# instance fields
.field private pause:Lccsansan/db/IncentiveDownloadUtils;

.field private resume:Lccsansan/db/getDownloadingList;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/base/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V

    return-void
.end method

.method private deleteDownList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->pause:Lccsansan/db/IncentiveDownloadUtils;

    invoke-interface {v0}, Lccsansan/db/IncentiveDownloadUtils;->unifiedDownload()V

    .line 2
    const-string v0, "Mads.InterstitialLoader"

    const-string v1, "Interstitial ad loaded."

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic unifiedDownload(Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->deleteDownList()V

    return-void
.end method


# virtual methods
.method public addDownloadListener()V
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/db/unifiedDownload;->addDownloadListener()Lccsansan/db/unifiedDownload;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedCount()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/db/unifiedDownload;->removeDownloadListener(I)Lccsansan/db/getDownloadingList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->resume:Lccsansan/db/getDownloadingList;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lccsancom/san/ads/AdError;->UN_SUPPORT_TYPE_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    iget-object v2, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->pause:Lccsansan/db/IncentiveDownloadUtils;

    invoke-virtual {v0, v1, v2}, Lccsansan/db/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Lccsansan/db/IncentiveDownloadUtils;)V

    .line 7
    iget-object v0, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->resume:Lccsansan/db/getDownloadingList;

    sget-object v1, Lccsancom/san/ads/AdFormat;->INTERSTITIAL:Lccsancom/san/ads/AdFormat;

    invoke-virtual {v0, v1}, Lccsansan/db/getDownloadingList;->removeDownloadListener(Lccsancom/san/ads/AdFormat;)V

    .line 8
    invoke-virtual {p0}, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lccsancom/san/ads/AdError;

    const/16 v1, 0x3e9

    const-string v2, "No Ad return"

    invoke-direct {v0, v1, v2}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->resume:Lccsansan/db/getDownloadingList;

    instance-of v1, v0, Lccsansan/db/getDownloadingRecordByUrl;

    if-eqz v1, :cond_2

    .line 14
    check-cast v0, Lccsansan/db/getDownloadingRecordByUrl;

    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->resume()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance v2, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils$addDownloadListener;

    invoke-direct {v2, p0}, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils$addDownloadListener;-><init>(Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1, v2}, Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V

    goto :goto_0

    .line 26
    :cond_2
    invoke-direct {p0}, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->deleteDownList()V

    :goto_0
    return-void
.end method

.method public getDownloadingCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadingList()V
    .locals 6

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    const-string v1, "Mads.InterstitialLoader"

    if-nez v0, :cond_0

    .line 2
    const-string v0, "context is null."

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->pause:Lccsansan/db/IncentiveDownloadUtils;

    new-instance v2, Lccsancom/san/ads/AdError;

    const/16 v3, 0x3e9

    const-string v4, "No ad to show!"

    invoke-direct {v2, v3, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lccsansan/db/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    .line 7
    const-string v0, "ad is not ready."

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->pause:Lccsansan/db/IncentiveDownloadUtils;

    sget-object v2, Lccsancom/san/ads/AdError;->AD_EXPIRED:Lccsancom/san/ads/AdError;

    invoke-interface {v0, v2}, Lccsansan/db/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    .line 13
    const-string v0, "ad is expired."

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 18
    :cond_2
    const/16 v0, 0x7d1

    :try_start_0
    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->resume:Lccsansan/db/getDownloadingList;

    invoke-static {v2, v3}, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/db/getDownloadingList;)V

    const-string v2, "ad interstitial find type and show"

    .line 19
    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 25
    iget-object v3, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->pause:Lccsansan/db/IncentiveDownloadUtils;

    new-instance v4, Lccsancom/san/ads/AdError;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lccsansan/db/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Open interstitial activity error : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 27
    iget-object v2, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->pause:Lccsansan/db/IncentiveDownloadUtils;

    new-instance v3, Lccsancom/san/ads/AdError;

    const-string v4, "Activity not found - did you declare it in AndroidManifest.xml?"

    invoke-direct {v3, v0, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Lccsansan/db/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    .line 28
    invoke-static {v1, v4}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->pause:Lccsansan/db/IncentiveDownloadUtils;

    invoke-interface {v0, p1}, Lccsansan/db/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public unifiedDownload(Lccsansan/db/IncentiveDownloadUtils;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsancom/san/mads/interstitial/IncentiveDownloadUtils;->pause:Lccsansan/db/IncentiveDownloadUtils;

    return-void
.end method

.method public unifiedDownload()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
