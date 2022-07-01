.class final Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/cpi/xz/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/cpi/xz/AdXzParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsancom/san/cpi/xz/AdXzParams;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iput-object p3, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 10

    .line 1
    iget-object v0, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v0, v0, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v1, Lccsancom/san/cpi/xz/AdXzParams;->mAdId:Ljava/lang/String;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 8
    iget-object v1, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v2, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPid:Ljava/lang/String;

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    .line 9
    iget-object v2, v1, Lccsancom/san/cpi/xz/AdXzParams;->mSourceType:Ljava/lang/String;

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 10
    iget-object v2, v1, Lccsancom/san/cpi/xz/AdXzParams;->mDid:Ljava/lang/String;

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    .line 11
    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mCpiparam:Ljava/lang/String;

    iput-object v1, v0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget v2, v2, Lccsancom/san/cpi/xz/AdXzParams;->mP2pAzEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "si_az_enable"

    invoke-virtual {v0, v3, v1}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget v3, v3, Lccsancom/san/cpi/xz/AdXzParams;->mActionType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "action_type"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    const-string v2, "portal_key"

    invoke-virtual {v0, v2, v1}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v1, v1, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    invoke-static {v1}, Lccsancom/san/cpi/xz/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 17
    iget-object v1, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    invoke-static {v0, v1}, Lccsancom/san/cpi/xz/removeDownloadListener;->unifiedDownload(Lccsansan/m/removeDownloadListener;Lccsancom/san/cpi/xz/AdXzParams;)V

    .line 20
    :cond_1
    iget-object v1, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->unifiedDownload:Lccsanandroid/content/Context;

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

    .line 22
    iget-object v1, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    const-string v2, "sid"

    invoke-virtual {v0, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lccsancom/san/cpi/xz/AdXzParams;->mSid:Ljava/lang/String;

    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    iget-object v0, v0, Lccsancom/san/cpi/xz/AdXzParams;->mPortal:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/cpi/xz/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lccsancom/san/cpi/xz/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/cpi/xz/AdXzParams;

    invoke-static {v0}, Lccsancom/san/cpi/xz/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/cpi/xz/AdXzParams;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    .line 26
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;)Z

    :cond_3
    :goto_1
    return-void
.end method
