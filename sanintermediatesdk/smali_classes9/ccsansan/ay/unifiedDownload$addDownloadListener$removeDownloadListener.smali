.class Lccsansan/ay/unifiedDownload$addDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/ay/unifiedDownload$addDownloadListener;->callBackOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsansan/ay/unifiedDownload$addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/ay/unifiedDownload$addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/ay/unifiedDownload$addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/ay/unifiedDownload$addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    .line 2
    new-instance v1, Lccsansan/ay/unifiedDownload$removeDownloadListener;

    iget-object v2, p0, Lccsansan/ay/unifiedDownload$addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/ay/unifiedDownload$addDownloadListener;

    iget-object v3, v2, Lccsansan/ay/unifiedDownload$addDownloadListener;->unifiedDownload:Lccsansan/ay/unifiedDownload;

    iget-object v2, v2, Lccsansan/ay/unifiedDownload$addDownloadListener;->removeDownloadListener:Lccsansan/aj/getDownloadingList;

    check-cast v0, Lccsanandroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v3, v2, v0}, Lccsansan/ay/unifiedDownload$removeDownloadListener;-><init>(Lccsansan/ay/unifiedDownload;Lccsansan/aj/getDownloadingList;Lccsanandroidx/fragment/app/FragmentActivity;)V

    .line 3
    iget-object v0, p0, Lccsansan/ay/unifiedDownload$addDownloadListener$removeDownloadListener;->getDownloadingList:Lccsansan/ay/unifiedDownload$addDownloadListener;

    iget-object v0, v0, Lccsansan/ay/unifiedDownload$addDownloadListener;->unifiedDownload:Lccsansan/ay/unifiedDownload;

    invoke-static {v0}, Lccsansan/ay/unifiedDownload;->removeDownloadListener(Lccsansan/ay/unifiedDownload;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v1}, Lccsansan/ay/unifiedDownload$removeDownloadListener;->unifiedDownload()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
