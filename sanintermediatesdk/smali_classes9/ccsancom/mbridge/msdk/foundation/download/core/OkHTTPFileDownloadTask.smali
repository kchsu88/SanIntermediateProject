.class Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;
.super Ljava/lang/Object;
.source "OkHTTPFileDownloadTask.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;


# instance fields
.field private final databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

.field private volatile downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

.field private downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

.field private final downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

.field private downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

.field private etag:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

.field private responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->etag:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 49
    iput-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 50
    iput-object p3, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 51
    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 52
    return-void
.end method

.method public static create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;
    .locals 1

    .line 244
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    return-object v0
.end method

.method private handleInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 198
    move-object/from16 v8, p0

    move-object/from16 v7, p2

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadId()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getResourceUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    move-result v19

    const/16 v20, 0x1

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadResourceType()Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-result-object v21

    move-object/from16 v12, p4

    move-object/from16 v13, p2

    invoke-static/range {v9 .. v21}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    move-result-object v0

    iput-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 200
    iget-object v1, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->insert(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadId()Ljava/lang/String;

    move-result-object v9

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getResourceUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getEtag()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveDirectorPath()Ljava/lang/String;

    move-result-object v13

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getSaveFileName()Ljava/lang/String;

    move-result-object v14

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v15

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getDownloadedBytes()J

    move-result-wide v17

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    move-result v19

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getUsageCounter()I

    move-result v0

    add-int/lit8 v20, v0, 0x1

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadResourceType()Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-result-object v21

    invoke-static/range {v9 .. v21}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    move-result-object v0

    iput-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 203
    iget-object v1, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-interface {v1, v0, v7}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->update(Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;Ljava/lang/String;)V

    .line 206
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p1

    invoke-direct {v1, v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getDownloadFileOutputStream(Ljava/io/File;)Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    move-result-object v0

    iput-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    .line 207
    iget-object v1, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->seek(J)V

    .line 209
    nop

    .line 210
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getByteBufferSize()I

    move-result v0

    new-array v9, v0, [B

    .line 211
    :goto_1
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v9}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 212
    iget-object v1, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    const/4 v2, 0x0

    invoke-interface {v1, v9, v2, v0}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->write([BII)V

    .line 213
    iget-object v1, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v2

    int-to-long v10, v0

    add-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 214
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->flushAndSync()V

    .line 215
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v0

    iget-object v2, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/download/utils/Utils;->getDownloadRate(JJ)I

    move-result v10

    .line 216
    iget-object v1, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v2, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v3

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v11

    move-object/from16 v0, p0

    const/4 v15, 0x1

    move-wide v5, v11

    move-object v14, v7

    move v7, v10

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->sendProgress(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;JJI)V

    .line 218
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    move-result v0

    if-lt v10, v0, :cond_1

    .line 219
    goto :goto_2

    .line 222
    :cond_1
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-ne v0, v1, :cond_2

    .line 223
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {v0, v15}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setCancelled(Z)V

    .line 224
    goto :goto_2

    .line 226
    :cond_2
    move-object v7, v14

    const/4 v5, 0x1

    goto :goto_1

    .line 211
    :cond_3
    move-object v14, v7

    const/4 v15, 0x1

    .line 227
    :goto_2
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getDatabaseHelper()Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    move-result-object v0

    iget-object v1, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getResourceUrl()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v2

    iget-object v4, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v17

    iget-object v4, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadRate()I

    move-result v19

    iget-object v4, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getUsageCounter()I

    move-result v20

    iget-object v4, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadResourceType()Lccsancom/mbridge/msdk/foundation/download/DownloadResourceType;

    move-result-object v21

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p2

    move-object v4, v14

    move-object v14, v1

    const/4 v1, 0x1

    move-wide v15, v2

    invoke-static/range {v9 .. v21}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIILccsancom/mbridge/msdk/foundation/download/DownloadResourceType;)Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v0, v3, v4, v2}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->updateProgress(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)V

    .line 228
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 229
    iget-object v0, v8, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 231
    :cond_4
    return-void
.end method

.method private handlerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    .line 234
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-interface {p1, p3, p2}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    invoke-direct {p1, p4}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;-><init>(Ljava/lang/Exception;)V

    .line 239
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V

    .line 240
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 241
    return-void
.end method

.method private handlerRequestSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/Response;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    invoke-direct {p0, p5, v0}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->isSupportResume(ILccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)Z

    move-result v0

    .line 159
    xor-int/lit8 v0, v0, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 160
    if-eqz p4, :cond_2

    iget-object v3, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    if-eqz v3, :cond_2

    const/16 v3, 0xce

    if-ne p5, v3, :cond_2

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->contentLength()J

    move-result-wide v3

    iget-object v5, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v5

    iget-object v7, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 161
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getLogger()Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u79fb\u9664\uff1a handlerRequestSuccessful\uff1a isSupportResume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " etag: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->etag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getEtag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " responseCode: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "DownloadTask"

    invoke-interface {v3, v0, p5}, Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p5, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {p5, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 163
    iget-object p5, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {p5, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setTotalBytes(J)V

    .line 164
    iget-object p5, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-static {p5}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 165
    iget-object p5, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-interface {p5, p3, p2}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_1
    const/4 p5, 0x0

    iput-object p5, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadModel:Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;

    .line 168
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object p5

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectoryPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, v0}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->deleteFile(Ljava/io/File;)V

    .line 171
    :cond_2
    invoke-virtual {p4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object p4

    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    .line 173
    invoke-static {p4}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_3

    .line 174
    new-instance p1, Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    new-instance p2, Ljava/io/IOException;

    const-string p3, "response body is null"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;-><init>(Ljava/lang/Exception;)V

    .line 175
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V

    .line 176
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {p1, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setTotalBytes(J)V

    .line 177
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {p1, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setDownloadedBytes(J)V

    .line 178
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {p1, p5}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 179
    goto :goto_1

    .line 180
    :cond_3
    iget-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->contentLength()J

    move-result-wide v3

    .line 182
    iget-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTotalBytes()J

    move-result-wide v5

    cmp-long p4, v5, v1

    if-nez p4, :cond_4

    .line 183
    iget-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {p4, v3, v4}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setTotalBytes(J)V

    .line 186
    :cond_4
    iget-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-virtual {p4}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p4

    iput-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    .line 187
    invoke-static {p4}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 188
    iget-object p4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->etag:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handleInputStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :cond_5
    new-instance p1, Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    new-instance p2, Ljava/io/IOException;

    const-string p3, "response inputStream is null"

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;-><init>(Ljava/lang/Exception;)V

    .line 191
    iget-object p2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V

    .line 192
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {p1, p5}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 195
    :goto_1
    return-void
.end method

.method private isSupportResume(ILccsancom/mbridge/msdk/foundation/download/database/DownloadModel;)Z
    .locals 1

    .line 248
    const/16 v0, 0xce

    if-ne p1, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->etag:Ljava/lang/String;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/database/DownloadModel;->getEtag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private sendProgress(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;JJI)V
    .locals 8

    .line 252
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 253
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;

    move-object v2, v0

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;-><init>(JJI)V

    invoke-virtual {p1, p2, v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerProcessEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method public run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;
    .locals 13

    .line 56
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 57
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectoryPath()Ljava/lang/String;

    move-result-object v7

    .line 61
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadId()Ljava/lang/String;

    move-result-object v8

    .line 63
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getOkHttpClient()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 64
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getConnectTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 65
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getReadTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 66
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getWriteTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 67
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    new-instance v3, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask$1;

    invoke-direct {v3, p0}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask$1;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;)V

    .line 69
    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->addNetworkInterceptor(Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    move-result-object v9

    .line 79
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;-><init>()V

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->noCache()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    move-result-object v1

    .line 81
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadedBytes()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "bytes=%d-"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 83
    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v4

    sget-object v5, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-ne v4, v5, :cond_0

    .line 85
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setCancelled(Z)V

    .line 86
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    return-object v0

    .line 89
    :cond_0
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;-><init>()V

    iget-object v4, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->cacheControl(Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v1

    .line 90
    invoke-virtual {v9, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->newCall(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    move-result-object v10

    .line 91
    const/4 v1, 0x0

    .line 93
    :try_start_0
    invoke-interface {v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->execute()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v11
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 95
    :try_start_1
    invoke-static {v11}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v12

    .line 101
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;-><init>(Ljava/lang/Exception;)V

    .line 103
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V

    .line 104
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {v1, v6}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const-string v1, "ETag"

    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->etag:Ljava/lang/String;

    .line 107
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v11

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handlerRequestSuccessful(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/Response;I)V

    goto :goto_1

    .line 96
    :cond_3
    :goto_0
    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/DownloadError;-><init>(Ljava/lang/Exception;)V

    .line 97
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setError(Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V

    .line 98
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    invoke-virtual {v1, v6}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->setSuccessful(Z)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    nop

    .line 121
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    :try_start_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 126
    goto :goto_2

    .line 124
    :catch_0
    move-exception v0

    .line 129
    :cond_4
    :goto_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    :try_start_3
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 134
    goto :goto_3

    .line 132
    :catch_1
    move-exception v0

    .line 137
    :cond_5
    :goto_3
    invoke-static {v11}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    :try_start_4
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 140
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 143
    goto :goto_4

    .line 141
    :catch_2
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_6
    :goto_4
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 150
    :cond_7
    invoke-interface {v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 151
    goto/16 :goto_e

    .line 121
    :catchall_0
    move-exception v0

    move-object v1, v11

    goto/16 :goto_18

    .line 118
    :catch_3
    move-exception v1

    goto :goto_5

    .line 116
    :catch_4
    move-exception v1

    goto :goto_a

    .line 113
    :catch_5
    move-exception v1

    goto/16 :goto_f

    .line 110
    :catch_6
    move-exception v1

    goto/16 :goto_13

    .line 121
    :catchall_1
    move-exception v0

    goto/16 :goto_18

    .line 118
    :catch_7
    move-exception v2

    move-object v11, v1

    move-object v1, v2

    .line 119
    :goto_5
    :try_start_5
    invoke-direct {p0, v0, v7, v8, v1}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handlerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 123
    :try_start_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 126
    goto :goto_6

    .line 124
    :catch_8
    move-exception v0

    .line 129
    :cond_8
    :goto_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    :try_start_7
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 134
    goto :goto_7

    .line 132
    :catch_9
    move-exception v0

    .line 137
    :cond_9
    :goto_7
    invoke-static {v11}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 139
    :try_start_8
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 140
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    .line 143
    goto :goto_8

    .line 141
    :catch_a
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_a
    :goto_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 147
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 150
    :cond_b
    invoke-interface {v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 151
    :goto_9
    goto :goto_e

    .line 116
    :catch_b
    move-exception v2

    move-object v11, v1

    move-object v1, v2

    .line 117
    :goto_a
    :try_start_9
    invoke-direct {p0, v0, v7, v8, v1}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handlerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 123
    :try_start_a
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    .line 126
    goto :goto_b

    .line 124
    :catch_c
    move-exception v0

    .line 129
    :cond_c
    :goto_b
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 131
    :try_start_b
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    .line 134
    goto :goto_c

    .line 132
    :catch_d
    move-exception v0

    .line 137
    :cond_d
    :goto_c
    invoke-static {v11}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 139
    :try_start_c
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 140
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_e

    .line 143
    goto :goto_d

    .line 141
    :catch_e
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_e
    :goto_d
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 147
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 150
    :cond_f
    invoke-interface {v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 151
    :goto_e
    invoke-interface {v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->cancel()V

    goto/16 :goto_17

    .line 113
    :catch_f
    move-exception v2

    move-object v11, v1

    move-object v1, v2

    .line 114
    :goto_f
    :try_start_d
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionPool()Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;->evictAll()V

    .line 115
    invoke-direct {p0, v0, v7, v8, v1}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handlerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 123
    :try_start_e
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_10

    .line 126
    goto :goto_10

    .line 124
    :catch_10
    move-exception v0

    .line 129
    :cond_10
    :goto_10
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 131
    :try_start_f
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    .line 134
    goto :goto_11

    .line 132
    :catch_11
    move-exception v0

    .line 137
    :cond_11
    :goto_11
    invoke-static {v11}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 139
    :try_start_10
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 140
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_12

    .line 143
    goto :goto_12

    .line 141
    :catch_12
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_12
    :goto_12
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 147
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 150
    :cond_13
    invoke-interface {v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 151
    goto :goto_e

    .line 110
    :catch_13
    move-exception v2

    move-object v11, v1

    move-object v1, v2

    .line 111
    :goto_13
    :try_start_11
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionPool()Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;->evictAll()V

    .line 112
    invoke-direct {p0, v0, v7, v8, v1}, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->handlerException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 123
    :try_start_12
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_14

    .line 126
    goto :goto_14

    .line 124
    :catch_14
    move-exception v0

    .line 129
    :cond_14
    :goto_14
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 131
    :try_start_13
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_15

    .line 134
    goto :goto_15

    .line 132
    :catch_15
    move-exception v0

    .line 137
    :cond_15
    :goto_15
    invoke-static {v11}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 139
    :try_start_14
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 140
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_16

    .line 143
    goto :goto_16

    .line 141
    :catch_16
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_16
    :goto_16
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 147
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 150
    :cond_17
    invoke-interface {v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 151
    goto/16 :goto_9

    .line 154
    :cond_18
    :goto_17
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->downloadResponse:Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    return-object v0

    .line 121
    :goto_18
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 123
    :try_start_15
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_17

    .line 126
    goto :goto_19

    .line 124
    :catch_17
    move-exception v2

    .line 129
    :cond_19
    :goto_19
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 131
    :try_start_16
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->outputStream:Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_18

    .line 134
    goto :goto_1a

    .line 132
    :catch_18
    move-exception v2

    .line 137
    :cond_1a
    :goto_1a
    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 139
    :try_start_17
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 140
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_19

    .line 143
    goto :goto_1b

    .line 141
    :catch_19
    move-exception v1

    .line 142
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNotNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 147
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/OkHTTPFileDownloadTask;->responseBody:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 150
    :cond_1c
    invoke-interface {v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 151
    invoke-interface {v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->cancel()V

    .line 153
    :cond_1d
    goto :goto_1d

    :goto_1c
    throw v0

    :goto_1d
    goto :goto_1c
.end method
