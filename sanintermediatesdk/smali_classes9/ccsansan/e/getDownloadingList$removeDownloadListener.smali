.class final Lccsansan/e/getDownloadingList$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/e/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field removeDownloadListener:Z


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/e/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsansan/e/getDownloadingList$removeDownloadListener;->removeDownloadListener:Z

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/e/getDownloadingList$removeDownloadListener;->removeDownloadListener:Z

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/e/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/e/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/e/getDownloadingList$removeDownloadListener;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/e/getDownloadingList$removeDownloadListener;->removeDownloadListener:Z

    return-void
.end method
