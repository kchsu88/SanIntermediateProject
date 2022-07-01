.class public Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;


# instance fields
.field private databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

.field private volatile downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

.field private downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

.field private volatile request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 24
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 25
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 26
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 27
    return-void
.end method

.method static synthetic access$002(Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;
    .locals 0

    .line 16
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    return-object p1
.end method

.method static create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;
    .locals 1

    .line 30
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;)V

    return-object v0
.end method

.method private sendProgress(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V
    .locals 2

    .line 156
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 157
    invoke-virtual {p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerProcessEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V

    .line 159
    :cond_0
    return-void
.end method


# virtual methods
.method public run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;
    .locals 18

    .line 36
    move-object/from16 v1, p0

    .line 38
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    .line 40
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v0

    sget-object v3, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_0

    .line 41
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;-><init>()V

    .line 42
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setCancelled(Z)V

    .line 43
    return-object v0

    .line 46
    :cond_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;-><init>()V

    .line 48
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 49
    return-object v0

    .line 52
    :cond_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectoryPath()Ljava/lang/String;

    move-result-object v3

    .line 54
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectorPathType()I

    move-result v5

    .line 56
    new-instance v6, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v6, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 57
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    new-instance v7, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask$1;

    invoke-direct {v7, v1, v6}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask$1;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v0, v2, v3, v7}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->find(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V

    .line 65
    const-wide/16 v7, 0xa

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v8, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getLogger()Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "DownloadTask"

    invoke-interface {v7, v8, v0}, Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 71
    :goto_0
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v6, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    iget-object v7, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    iget-object v8, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-static {v0, v6, v7, v2, v8}, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;->run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    move-result-object v0

    .line 73
    packed-switch v5, :pswitch_data_0

    .line 147
    if-nez v0, :cond_8

    .line 148
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    iget-object v3, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    iget-object v4, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-static {v0, v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;->run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    move-result-object v0

    goto/16 :goto_2

    .line 93
    :pswitch_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v8

    .line 95
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v6

    .line 96
    invoke-static {v8, v9, v6, v7}, Lccsancom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    move-result v10

    .line 97
    new-instance v2, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;-><init>(JJI)V

    .line 98
    iget-object v5, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v6, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-direct {v1, v5, v6, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->sendProgress(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V

    .line 99
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getResourceUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getEtag()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveDirectorPath()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveFileName()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v11

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v13

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadRate()I

    move-result v15

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getUsageCounter()I

    move-result v2

    add-int/lit8 v16, v2, 0x1

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadResourceType()Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-result-object v17

    invoke-static/range {v5 .. v17}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    move-result-object v2

    iput-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 100
    iget-object v5, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-interface {v5, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->update(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;)V

    .line 101
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v2

    sget-object v3, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-ne v2, v3, :cond_2

    .line 102
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setCancelled(Z)V

    .line 104
    :cond_2
    return-object v0

    .line 107
    :cond_3
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDirectoryPathInternal()Ljava/lang/String;

    move-result-object v0

    .line 108
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 109
    iget-object v6, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    new-instance v7, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask$2;

    invoke-direct {v7, v1, v5}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask$2;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v6, v2, v0, v7}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->find(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper$IDatabaseListener;)V

    .line 118
    const-wide/16 v6, 0x3c

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    goto :goto_1

    .line 120
    :catch_1
    move-exception v0

    .line 121
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 123
    :goto_1
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v5, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    iget-object v6, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    iget-object v7, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-static {v0, v5, v6, v2, v7}, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;->run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 126
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v8

    .line 127
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v6

    .line 128
    invoke-static {v8, v9, v6, v7}, Lccsancom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    move-result v10

    .line 129
    new-instance v2, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;-><init>(JJI)V

    .line 131
    iget-object v5, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v6, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-direct {v1, v5, v6, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->sendProgress(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V

    .line 132
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getResourceUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getEtag()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveDirectorPath()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveFileName()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v11

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v13

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadRate()I

    move-result v15

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getUsageCounter()I

    move-result v2

    add-int/lit8 v16, v2, 0x1

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadResourceType()Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-result-object v17

    invoke-static/range {v5 .. v17}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    move-result-object v2

    iput-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 133
    iget-object v5, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-interface {v5, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->update(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;)V

    .line 134
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v2

    sget-object v3, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-ne v2, v3, :cond_4

    .line 135
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setCancelled(Z)V

    .line 137
    :cond_4
    return-object v0

    .line 139
    :cond_5
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    iget-object v3, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    iget-object v4, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-static {v0, v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;->run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    move-result-object v0

    .line 140
    return-object v0

    .line 75
    :pswitch_1
    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v6

    .line 77
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v8

    .line 78
    invoke-static {v8, v9, v6, v7}, Lccsancom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    move-result v10

    .line 79
    new-instance v2, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;-><init>(JJI)V

    .line 80
    iget-object v5, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v6, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-direct {v1, v5, v6, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->sendProgress(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V

    .line 81
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadId()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getResourceUrl()Ljava/lang/String;

    move-result-object v7

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getEtag()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveDirectorPath()Ljava/lang/String;

    move-result-object v9

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveFileName()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v11

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v13

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadRate()I

    move-result v15

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getUsageCounter()I

    move-result v2

    add-int/lit8 v16, v2, 0x1

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadResourceType()Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-result-object v17

    invoke-static/range {v5 .. v17}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    move-result-object v2

    iput-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 82
    iget-object v5, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-interface {v5, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->update(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;)V

    .line 83
    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v2

    sget-object v3, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-ne v2, v3, :cond_6

    .line 84
    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setCancelled(Z)V

    .line 86
    :cond_6
    return-object v0

    .line 88
    :cond_7
    iget-object v0, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v2, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    iget-object v3, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    iget-object v4, v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-static {v0, v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;->run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    move-result-object v0

    .line 89
    return-object v0

    .line 151
    :cond_8
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
