.class Lccsansan/cy/getDownloadedList$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/getDownloadedList;->addDownloadListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/cy/getDownloadingRecordByUrl;

.field final synthetic unifiedDownload:Lccsansan/cy/getDownloadedList;


# direct methods
.method constructor <init>(Lccsansan/cy/getDownloadedList;Lccsansan/cy/getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/cy/getDownloadedList;

    iput-object p2, p0, Lccsansan/cy/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/cy/getDownloadingRecordByUrl;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsansan/cy/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/cy/getDownloadedList;

    invoke-static {v0}, Lccsansan/cy/getDownloadedList;->removeDownloadListener(Lccsansan/cy/getDownloadedList;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cy/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v1, v1, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/cy/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/cy/getDownloadedList;

    invoke-static {v0}, Lccsansan/cy/getDownloadedList;->removeDownloadListener(Lccsansan/cy/getDownloadedList;)Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cy/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v1, v1, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lccsansan/cy/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iput-object v2, v0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    .line 7
    iget-object v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    iput-object v2, v0, Lccsansan/m/getDownloadedList;->getDownloadedList:Ljava/lang/String;

    .line 8
    iget-object v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->deleteDownItem:Ljava/lang/String;

    iput-object v2, v0, Lccsansan/m/getDownloadedList;->deleteDownItem:Ljava/lang/String;

    .line 9
    iget v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedList:I

    iput v2, v0, Lccsansan/m/getDownloadedList;->getDownloadedRecordByUrl:I

    .line 10
    iget v2, v1, Lccsansan/cy/getDownloadingRecordByUrl;->pause:I

    iput v2, v0, Lccsansan/m/getDownloadedList;->addDownloadListener:I

    .line 11
    iget-wide v1, v1, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->getDownloadingRecordByUrl:J

    const-string v1, "s2s_track_status"

    const-string v2, "0"

    .line 12
    invoke-virtual {v0, v1, v2}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lccsansan/m/getDownloadedList;->deleteDownList:J

    .line 14
    iget-object v1, p0, Lccsansan/cy/getDownloadedList$getDownloadingList;->unifiedDownload:Lccsansan/cy/getDownloadedList;

    invoke-static {v1}, Lccsansan/cy/getDownloadedList;->removeDownloadListener(Lccsansan/cy/getDownloadedList;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    .line 15
    iget-object v2, v0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    iget-object v0, p0, Lccsansan/cy/getDownloadedList$getDownloadingList;->addDownloadListener:Lccsansan/cy/getDownloadingRecordByUrl;

    iget-object v3, v0, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iget-object v4, v0, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "failed"

    const/4 v6, 0x2

    :try_start_1
    iget-object v7, v0, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    return-void
.end method
