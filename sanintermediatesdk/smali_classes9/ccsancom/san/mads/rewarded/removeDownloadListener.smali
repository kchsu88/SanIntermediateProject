.class public Lccsancom/san/mads/rewarded/removeDownloadListener;
.super Lccsancom/san/mads/base/unifiedDownload;
.source ""


# instance fields
.field private getDownloadedCount:Lccsansan/db/getDownloadingList;

.field private pause:Lccsansan/db/IncentiveDownloadUtils;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/base/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/removeDownloadListener;->pause:Lccsansan/db/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lccsansan/db/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    :cond_0
    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/rewarded/removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->pause()V

    return-void
.end method

.method private deleteDownList()V
    .locals 5

    .line 1
    const-string v0, "Mads.RewardedLoader"

    const-string v1, "ad rewarded find type and show"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const/16 v1, 0x7d1

    :try_start_0
    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsancom/san/mads/rewarded/removeDownloadListener;->getDownloadedCount:Lccsansan/db/getDownloadingList;

    invoke-static {v2, v3}, Lccsancom/san/mads/FullScreenActivity;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/db/getDownloadingList;)V
    :try_end_0
    .catch Lccsanandroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 9
    new-instance v3, Lccsancom/san/ads/AdError;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v3}, Lccsancom/san/mads/rewarded/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/ads/AdError;)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open FullScreenActivity activity error : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 11
    new-instance v2, Lccsancom/san/ads/AdError;

    const-string v3, "AdRewarded not found - did you declare it in AndroidManifest.xml?"

    invoke-direct {v2, v1, v3}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lccsancom/san/mads/rewarded/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/ads/AdError;)V

    .line 12
    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/rewarded/removeDownloadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->deleteDownList()V

    return-void
.end method

.method private pause()V
    .locals 2

    .line 1
    const-string v0, "Mads.RewardedLoader"

    const-string v1, "rewarded ad loaded."

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/removeDownloadListener;->pause:Lccsansan/db/IncentiveDownloadUtils;

    invoke-interface {v0}, Lccsansan/db/IncentiveDownloadUtils;->unifiedDownload()V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/mads/rewarded/removeDownloadListener;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/mads/rewarded/removeDownloadListener;Lccsancom/san/ads/AdError;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/mads/rewarded/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/ads/AdError;)V

    return-void
.end method


# virtual methods
.method public addDownloadListener()V
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/db/addDownloadListener;->getDownloadingList()Lccsansan/db/addDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/db/addDownloadListener;->getDownloadingList(I)Lccsansan/db/getDownloadingList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/mads/rewarded/removeDownloadListener;->getDownloadedCount:Lccsansan/db/getDownloadingList;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lccsancom/san/ads/AdError;->UN_SUPPORT_TYPE_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    iget-object v2, p0, Lccsancom/san/mads/rewarded/removeDownloadListener;->pause:Lccsansan/db/IncentiveDownloadUtils;

    invoke-virtual {v0, v1, v2}, Lccsansan/db/getDownloadingList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Lccsansan/db/IncentiveDownloadUtils;)V

    .line 7
    iget-object v0, p0, Lccsancom/san/mads/rewarded/removeDownloadListener;->getDownloadedCount:Lccsansan/db/getDownloadingList;

    sget-object v1, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    invoke-virtual {v0, v1}, Lccsansan/db/getDownloadingList;->removeDownloadListener(Lccsancom/san/ads/AdFormat;)V

    .line 9
    invoke-virtual {p0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->getDownloadingList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lccsancom/san/ads/AdError;

    const/16 v1, 0x3e9

    const-string v2, "no Ad return"

    invoke-direct {v0, v1, v2}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lccsancom/san/mads/rewarded/removeDownloadListener;->getDownloadedCount:Lccsansan/db/getDownloadingList;

    instance-of v1, v0, Lccsansan/db/getDownloadingRecordByUrl;

    if-eqz v1, :cond_2

    .line 15
    check-cast v0, Lccsansan/db/getDownloadingRecordByUrl;

    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->resume()Lccsanandroid/content/Context;

    move-result-object v1

    new-instance v2, Lccsancom/san/mads/rewarded/removeDownloadListener$getDownloadingList;

    invoke-direct {v2, p0}, Lccsancom/san/mads/rewarded/removeDownloadListener$getDownloadingList;-><init>(Lccsancom/san/mads/rewarded/removeDownloadListener;)V

    invoke-virtual {v0, v1, v2}, Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V

    goto :goto_0

    .line 27
    :cond_2
    invoke-direct {p0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->pause()V

    :goto_0
    return-void
.end method

.method public getDownloadingCount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadingList()Z
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

.method public removeDownloadListener(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/removeDownloadListener;->pause:Lccsansan/db/IncentiveDownloadUtils;

    invoke-interface {v0, p1}, Lccsansan/db/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    const-string v1, "Mads.RewardedLoader"

    if-nez v0, :cond_0

    .line 2
    const-string v0, "context is null."

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->getDownloadingList()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lccsancom/san/ads/AdError;

    const/16 v2, 0x3e9

    const-string v3, "No ad to show!"

    invoke-direct {v0, v2, v3}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/ads/AdError;)V

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
    sget-object v0, Lccsancom/san/ads/AdError;->AD_EXPIRED:Lccsancom/san/ads/AdError;

    invoke-direct {p0, v0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/ads/AdError;)V

    .line 13
    const-string v0, "ad is expired."

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 17
    :cond_2
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dt/getDownloadedList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 19
    new-instance v0, Lccsansan/co/trackReportClick;

    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lccsansan/co/trackReportClick;-><init>(Lccsanandroid/content/Context;Z)V

    .line 20
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lccsancom/san/mads/rewarded/removeDownloadListener$unifiedDownload;

    invoke-direct {v2, p0}, Lccsancom/san/mads/rewarded/removeDownloadListener$unifiedDownload;-><init>(Lccsancom/san/mads/rewarded/removeDownloadListener;)V

    iget-object v3, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v4, v3}, Lccsansan/co/trackReportClick;->unifiedDownload(Ljava/lang/String;Lccsansan/co/trackReportClick$addDownloadListener;Ljava/lang/String;Lccsanandroid/content/Context;)V

    goto :goto_0

    .line 37
    :cond_3
    invoke-direct {p0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->deleteDownList()V

    :goto_0
    return-void
.end method

.method public unifiedDownload(Lccsansan/db/IncentiveDownloadUtils;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsancom/san/mads/rewarded/removeDownloadListener;->pause:Lccsansan/db/IncentiveDownloadUtils;

    return-void
.end method
