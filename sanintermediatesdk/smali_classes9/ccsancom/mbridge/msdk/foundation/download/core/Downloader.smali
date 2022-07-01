.class public Lccsancom/mbridge/msdk/foundation/download/core/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadTask"


# instance fields
.field private databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

.field private volatile downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

.field public final downloadPriority:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

.field public volatile downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

.field public final sequence:I


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 19
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadPriority()Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadPriority:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 20
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getSequence()I

    move-result p1

    iput p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->sequence:I

    .line 21
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 25
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->RETRY:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 26
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadMessage()Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerStartEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 29
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->RUNNING:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setStatus(Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;)V

    .line 31
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadMessage()Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 33
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getDatabaseHelper()Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 35
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/core/SynchronizeAvailableDirectorPath;->create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;->run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    .line 37
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectoryPath()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getCacheDirectorPathType()I

    .line 40
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getSaveFileName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->setSaveFilePath(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadTask;->create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;)Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/IDownloadTask;->run()Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerSuccessEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->getError()Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->getError()Lccsancom/mbridge/msdk/foundation/download/DownloadError;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerErrorEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/DownloadResponse;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 49
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadRequest:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerCancelEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 51
    :cond_3
    :goto_0
    return-void
.end method
