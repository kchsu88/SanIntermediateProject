.class final Lccsansan/cy/deleteDownItem$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/deleteDownItem;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/cy/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    iput-object p3, p0, Lccsansan/cy/deleteDownItem$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iput-object p4, p0, Lccsansan/cy/deleteDownItem$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/cy/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    iget-object v2, p0, Lccsansan/cy/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v0, v3, v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClickInfo  success  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPIProxy"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lccsansan/cy/deleteDownItem$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    iget-object v1, p0, Lccsansan/cy/deleteDownItem$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    iget-object v2, p0, Lccsansan/cy/deleteDownItem$unifiedDownload;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsansan/cy/deleteDownItem;->addDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
