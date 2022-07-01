.class Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/ads/core/AdMediationModeLoaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediationLoaderHandler"
.end annotation


# instance fields
.field private final getDownloadingList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/san/ads/core/AdMediationModeLoaderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/san/ads/core/AdMediationModeLoaderManager;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    .line 2
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;->getDownloadingList:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    if-eqz p1, :cond_5

    const-string v0, "SANAd.LoaderManager.M"

    const/4 v1, 0x5

    if-eq p1, v1, :cond_3

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_4

    goto/16 :goto_1

    .line 12
    :cond_0
    iget-object p1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;->getDownloadingList:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/ads/core/AdMediationModeLoaderManager;

    .line 14
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    iget-object v1, p1, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-nez v1, :cond_1

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p1, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v3}, Lccsansan/bq/removeDownloadListener;->ActionTypeDetailPage()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 17
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " TimeOut, will fast finish on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_2
    invoke-virtual {p1}, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->removeDownloadListener()V

    .line 20
    invoke-virtual {p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl()V

    goto :goto_1

    .line 21
    :cond_3
    iget-object p1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;->getDownloadingList:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/ads/core/AdMediationModeLoaderManager;

    invoke-static {p1, v1}, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getDownloadingList(Lccsancom/san/ads/core/AdMediationModeLoaderManager;I)V

    :cond_4
    nop

    .line 24
    const-string p1, "AD_TIMER_WAIT_LOAD"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_5
    iget-object p1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;->getDownloadingList:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 27
    iget-object p1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/ads/core/AdMediationModeLoaderManager;

    invoke-virtual {p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownItem()V

    :cond_6
    :goto_1
    return-void
.end method
