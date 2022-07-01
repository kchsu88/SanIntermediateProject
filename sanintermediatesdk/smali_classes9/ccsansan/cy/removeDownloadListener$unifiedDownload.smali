.class Lccsansan/cy/removeDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/removeDownloadListener;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;

.field final synthetic addDownloadListener:Lccsansan/dt/removeDownloadListener;

.field final synthetic getDownloadingList:Lccsansan/cy/removeDownloadListener;

.field final synthetic unifiedDownload:Ljava/util/List;


# direct methods
.method constructor <init>(Lccsansan/cy/removeDownloadListener;Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/cy/removeDownloadListener;

    iput-object p2, p0, Lccsansan/cy/removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/util/List;

    iput-object p3, p0, Lccsansan/cy/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    iput-object p4, p0, Lccsansan/cy/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v3, p0, Lccsansan/cy/removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 2
    iget-object v3, p0, Lccsansan/cy/removeDownloadListener$unifiedDownload;->unifiedDownload:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->getDownloadedRecordByUrl()I

    move-result v10

    const/4 v4, 0x0

    const/4 v11, 0x0

    :cond_0
    :goto_1
    if-nez v4, :cond_1

    if-ge v11, v10, :cond_1

    .line 7
    iget-object v4, p0, Lccsansan/cy/removeDownloadListener$unifiedDownload;->getDownloadingList:Lccsansan/cy/removeDownloadListener;

    invoke-static {v4}, Lccsansan/cy/removeDownloadListener;->removeDownloadListener(Lccsansan/cy/removeDownloadListener;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lccsansan/cy/pause;->SHOW:Lccsansan/cy/pause;

    iget-object v4, p0, Lccsansan/cy/removeDownloadListener$unifiedDownload;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v9

    move-object v4, v3

    move v7, v11

    move v8, v10

    invoke-static/range {v4 .. v9}, Lccsansan/cy/deleteDownList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;IILjava/lang/String;)Z

    move-result v4

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#reportShow Ad show, track success = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "   retryCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AD.Mads.AttributionManager"

    invoke-static {v6, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    if-nez v4, :cond_0

    .line 12
    :try_start_0
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->removeDownloadListener()J

    move-result-wide v5

    invoke-static {}, Lccsansan/cy/removeDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v7

    int-to-long v12, v1

    mul-long v7, v7, v12

    add-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21
    :cond_3
    iget-object v0, p0, Lccsansan/cy/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;

    if-eqz v0, :cond_4

    .line 22
    invoke-interface {v0, v2}, Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;->a(Z)V

    :cond_4
    return-void
.end method
