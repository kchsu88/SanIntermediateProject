.class final Lccsansan/au/addDownloadListener$pause;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/au/addDownloadListener;->addDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/m/removeDownloadListener;

.field final synthetic addDownloadListener:Lccsansan/p/getDownloadedList;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic unifiedDownload:Z


# direct methods
.method constructor <init>(JLccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsansan/au/addDownloadListener$pause;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iput-object p4, p0, Lccsansan/au/addDownloadListener$pause;->getDownloadingList:Ljava/lang/String;

    iput-boolean p5, p0, Lccsansan/au/addDownloadListener$pause;->unifiedDownload:Z

    iput-object p6, p0, Lccsansan/au/addDownloadListener$pause;->IncentiveDownloadUtils:Lccsansan/m/removeDownloadListener;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 1
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsansan/bt/removeDownloadListener;->getDownloadingRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/au/addDownloadListener$pause;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v2, p0, Lccsansan/au/addDownloadListener$pause;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsancom/san/proaz/getDownloadedRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/au/addDownloadListener$pause;->addDownloadListener:Lccsansan/p/getDownloadedList;

    iget-object v1, p0, Lccsansan/au/addDownloadListener$pause;->getDownloadingList:Ljava/lang/String;

    iget-boolean v2, p0, Lccsansan/au/addDownloadListener$pause;->unifiedDownload:Z

    iget-object v3, p0, Lccsansan/au/addDownloadListener$pause;->IncentiveDownloadUtils:Lccsansan/m/removeDownloadListener;

    invoke-static {v0, v1, v2, v3}, Lccsansan/au/addDownloadListener;->removeDownloadListener(Lccsansan/p/getDownloadedList;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;)V

    :goto_0
    return-void
.end method
