.class Lccsansan/ay/unifiedDownload$addDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ay/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Lccsansan/aj/getDownloadingList;

.field final synthetic unifiedDownload:Lccsansan/ay/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/ay/unifiedDownload;Lccsanandroid/content/Context;Lccsansan/aj/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ay/unifiedDownload$addDownloadListener;->unifiedDownload:Lccsansan/ay/unifiedDownload;

    iput-object p2, p0, Lccsansan/ay/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/ay/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/aj/getDownloadingList;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    instance-of v1, v0, Lccsanandroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsansan/ay/unifiedDownload$removeDownloadListener;

    iget-object v1, p0, Lccsansan/ay/unifiedDownload$addDownloadListener;->unifiedDownload:Lccsansan/ay/unifiedDownload;

    iget-object v2, p0, Lccsansan/ay/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/aj/getDownloadingList;

    iget-object v3, p0, Lccsansan/ay/unifiedDownload$addDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    check-cast v3, Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1, v2, v3}, Lccsansan/ay/unifiedDownload$removeDownloadListener;-><init>(Lccsansan/ay/unifiedDownload;Lccsansan/aj/getDownloadingList;Lccsanandroidx/fragment/app/FragmentActivity;)V

    .line 3
    iget-object v1, p0, Lccsansan/ay/unifiedDownload$addDownloadListener;->unifiedDownload:Lccsansan/ay/unifiedDownload;

    invoke-static {v1}, Lccsansan/ay/unifiedDownload;->removeDownloadListener(Lccsansan/ay/unifiedDownload;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v0}, Lccsansan/ay/unifiedDownload$removeDownloadListener;->unifiedDownload()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    .line 7
    new-instance v1, Lccsansan/ay/unifiedDownload$addDownloadListener$removeDownloadListener;

    invoke-direct {v1, p0}, Lccsansan/ay/unifiedDownload$addDownloadListener$removeDownloadListener;-><init>(Lccsansan/ay/unifiedDownload$addDownloadListener;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
