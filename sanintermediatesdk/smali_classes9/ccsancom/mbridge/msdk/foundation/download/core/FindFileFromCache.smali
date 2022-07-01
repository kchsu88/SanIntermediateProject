.class Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;
.super Ljava/lang/Object;
.source "FindFileFromCache.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;


# instance fields
.field private final databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

.field private final downloadId:Ljava/lang/String;

.field private downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

.field private final downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

.field private final request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 24
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 25
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 26
    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadId:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 28
    return-void
.end method

.method static create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;
    .locals 7

    .line 66
    new-instance v6, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    return-object v6
.end method


# virtual methods
.method public run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;
    .locals 10

    .line 32
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;-><init>()V

    .line 37
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectoryPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 40
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v6

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    .line 41
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getTotalBytes()J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 42
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setTotalBytes(J)V

    .line 43
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setTotalBytes(J)V

    .line 47
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 48
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    goto :goto_0

    .line 51
    :cond_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 52
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->remove(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->deleteFile(Ljava/io/File;)V

    .line 54
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    goto :goto_0

    .line 57
    :cond_3
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->request:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 58
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/core/FindFileFromCache;->downloadId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->remove(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->deleteFile(Ljava/io/File;)V

    .line 60
    invoke-virtual {v0, v5}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 62
    :goto_0
    return-object v0
.end method
