.class Lccsansan/cy/removeDownloadListener$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cy/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cy/removeDownloadListener;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/removeDownloadListener;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cy/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/removeDownloadListener;

    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/cy/removeDownloadListener;->getDownloadingList(Lccsansan/cy/removeDownloadListener;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lccsansan/cy/removeDownloadListener$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/cy/removeDownloadListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/cy/removeDownloadListener;->removeDownloadListener(Lccsansan/cy/removeDownloadListener;Z)Z

    return-void
.end method
