.class Lccsansan/a/getDownloadingList$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/a/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field final synthetic getDownloadingList:Lccsansan/a/getDownloadingList;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/a/getDownloadingList;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/a/getDownloadingList;

    iput-object p2, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iput-object p3, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/a/getDownloadingList;

    invoke-static {v1, v0}, Lccsansan/a/getDownloadingList;->removeDownloadListener(Lccsansan/a/getDownloadingList;Lccsansan/m/getDownloadedList;)V

    .line 4
    iget-object v1, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/a/getDownloadingList;

    invoke-static {v1}, Lccsansan/a/getDownloadingList;->getDownloadingList(Lccsansan/a/getDownloadingList;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v2, 0x240c8400

    const-string v4, "AppPkgReceiver"

    if-eqz v1, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleReceiveIntent() ignore app upgrade: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v5

    iget-object v6, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v5, v0, v2

    if-gez v5, :cond_0

    .line 7
    const-string v0, "handleReceiveIntent() ignore  time wrong "

    invoke-static {v4, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/a/getDownloadingList;

    iget-object v1, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lccsansan/a/getDownloadingList;->getDownloadingList(Lccsansan/a/getDownloadingList;Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleReceiveIntent() package name: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v1

    iget-object v7, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v1, v5, v2

    if-gez v1, :cond_2

    return-void

    .line 18
    :cond_2
    invoke-static {}, Lccsansan/a/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--CPIReportInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " infoStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_3

    const-string v2, "[info == null]"

    goto :goto_0

    :cond_3
    iget v2, v0, Lccsansan/m/getDownloadedList;->execute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->getDownloadingList:Lccsansan/a/getDownloadingList;

    iget-object v2, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsansan/a/getDownloadingList$unifiedDownload;->unifiedDownload:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lccsansan/a/getDownloadingList;->unifiedDownload(Lccsansan/a/getDownloadingList;Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/m/getDownloadedList;)V

    return-void
.end method
