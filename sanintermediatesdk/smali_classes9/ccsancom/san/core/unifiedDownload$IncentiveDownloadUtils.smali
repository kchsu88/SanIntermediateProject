.class final Lccsancom/san/core/unifiedDownload$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/core/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/api/SanAdSettings;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cm/addDownloadListener;->getDownloadingList()V

    .line 2
    invoke-static {}, Lccsancom/san/api/SanAdSdk;->canCollectUserInfo()Z

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/core/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method
