.class final Lccsansan/p/IncentiveDownloadUtils$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/addDownloadListener$getDownloadingList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/p/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .line 1
    iget-object v0, p0, Lccsansan/p/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v0, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-string v1, "ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lccsansan/p/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v0, v0, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingCount:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/p/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/p/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v2, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingCount:Ljava/lang/String;

    iget-object v1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 9
    iget-object v1, p0, Lccsansan/p/IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingList;

    iget-object v2, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->resume:Ljava/lang/String;

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    .line 10
    const-string v2, "minisite"

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 11
    iget-object v2, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->trackReportClick:Ljava/lang/String;

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    .line 12
    iget-object v1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveSDK:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    .line 13
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    iget-object v4, v0, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    iget-object v6, v0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    iget-object v7, v0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    iget-object v8, v0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    iget-object v9, v0, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lccsansan/m/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method
