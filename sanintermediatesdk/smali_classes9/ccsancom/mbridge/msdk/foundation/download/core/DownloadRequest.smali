.class public Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;
.super Ljava/lang/Object;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadRequest"


# instance fields
.field private builder:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private cacheDirectorPathType:I

.field private cacheDirectoryPath:Ljava/lang/String;

.field private connectTimeout:J

.field private directoryPathExternal:Ljava/lang/String;

.field private directoryPathInternal:Ljava/lang/String;

.field private downloadId:Ljava/lang/String;

.field private downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private downloadPriority:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

.field private downloadedBytes:J

.field private future:Ljava/util/concurrent/Future;

.field private headerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile onDownloadListener:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

.field private volatile onProgressListener:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

.field private readTimeout:J

.field private retry:I

.field private sequence:I

.field private status:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

.field private timeout:J

.field private totalBytes:J

.field private userAgent:Ljava/lang/String;

.field private writeTimeout:J


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->totalBytes:J

    .line 45
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->headerMap:Ljava/util/HashMap;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->headerMap:Ljava/util/HashMap;

    .line 46
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->downloadPriority:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadPriority:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    .line 47
    iget-wide v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->readTimeout:J

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->readTimeout:J

    .line 48
    iget-wide v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->connectTimeout:J

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->connectTimeout:J

    .line 49
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->userAgent:Ljava/lang/String;

    .line 50
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    .line 51
    iget-wide v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->writeTimeout:J

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->writeTimeout:J

    .line 52
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->downloadStateListener:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->onDownloadListener:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 53
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->progressStateListener:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->onProgressListener:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    .line 54
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->directoryPathExternal:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->directoryPathExternal:Ljava/lang/String;

    .line 55
    iget-object v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->directoryPathInternal:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->directoryPathInternal:Ljava/lang/String;

    .line 56
    iget v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->retry:I

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->retry:I

    .line 57
    iget-wide v0, p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;->timeout:J

    iput-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->timeout:J

    .line 58
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->builder:Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->onDownloadListener:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    return-object p0
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->finish()V

    return-void
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;
    .locals 0

    .line 17
    iget-object p0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->onProgressListener:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    return-object p0
.end method

.method public static create(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;
    .locals 1

    .line 62
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;)V

    return-object v0
.end method

.method private destroy()V
    .locals 1

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->onProgressListener:Lccsancom/mbridge/msdk/foundation/download/OnProgressStateListener;

    .line 207
    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->onDownloadListener:Lccsancom/mbridge/msdk/foundation/download/OnDownloadStateListener;

    .line 208
    return-void
.end method

.method private finish()V
    .locals 1

    .line 201
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->destroy()V

    .line 202
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->finish(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V

    .line 203
    return-void
.end method


# virtual methods
.method public cancel(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;)V"
        }
    .end annotation

    .line 194
    sget-object p1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->status:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 195
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->future:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    .line 196
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 198
    :cond_0
    return-void
.end method

.method public getCacheDirectorPathType()I
    .locals 1

    .line 219
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->cacheDirectorPathType:I

    return v0
.end method

.method public getCacheDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->cacheDirectoryPath:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->connectTimeout:J

    return-wide v0
.end method

.method public getDirectoryPathExternal()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->directoryPathExternal:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryPathInternal()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->directoryPathInternal:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadId()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadMessage()Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    return-object v0
.end method

.method public getDownloadPriority()Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;
    .locals 1

    .line 66
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadPriority:Lccsancom/mbridge/msdk/foundation/download/DownloadPriority;

    return-object v0
.end method

.method public getDownloadedBytes()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadedBytes:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->headerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReadTimeout()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->readTimeout:J

    return-wide v0
.end method

.method public getRetry()I
    .locals 1

    .line 255
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->retry:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 243
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->sequence:I

    return v0
.end method

.method public getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;
    .locals 1

    .line 107
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->status:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 251
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->timeout:J

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->totalBytes:J

    return-wide v0
.end method

.method public getWriteTimeout()J
    .locals 2

    .line 223
    iget-wide v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->writeTimeout:J

    return-wide v0
.end method

.method public handlerCancelEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;)V"
        }
    .end annotation

    .line 168
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getExecutorSupplier()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;->getDownloadResultTasks()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$4;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$4;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 169
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method public handlerErrorEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadError;",
            ")V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->status:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 123
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->FAILED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setStatus(Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;)V

    .line 124
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getExecutorSupplier()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;->getDownloadResultTasks()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$1;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadError;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    :cond_0
    return-void
.end method

.method public handlerProcessEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;",
            ")V"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->status:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 182
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getExecutorSupplier()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;->getDownloadResultTasks()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$5;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;Lccsancom/mbridge/msdk/foundation/download/DownloadProgress;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 191
    :cond_0
    return-void
.end method

.method public handlerStartEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->status:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 154
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getExecutorSupplier()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;->getDownloadResultTasks()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$3;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$3;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 155
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 164
    :cond_0
    return-void
.end method

.method public handlerSuccessEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "TT;>;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->status:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->CANCELLED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq v0, v1, :cond_0

    .line 138
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->COMPLETED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setStatus(Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;)V

    .line 139
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getExecutorSupplier()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;->getDownloadResultTasks()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$2;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest$2;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 140
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 150
    :cond_0
    return-void
.end method

.method public setCacheDirectorPathType(I)V
    .locals 0

    .line 239
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->cacheDirectorPathType:I

    .line 240
    return-void
.end method

.method public setCacheDirectoryPath(Ljava/lang/String;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->cacheDirectoryPath:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setDownloadedBytes(J)V
    .locals 0

    .line 82
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadedBytes:J

    .line 83
    return-void
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->future:Ljava/util/concurrent/Future;

    .line 75
    return-void
.end method

.method public setSequence(I)V
    .locals 0

    .line 247
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->sequence:I

    .line 248
    return-void
.end method

.method public setStatus(Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->status:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    .line 112
    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    .line 90
    iput-wide p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->totalBytes:J

    .line 91
    return-void
.end method

.method public start()Ljava/lang/String;
    .locals 2

    .line 116
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadMessage:Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;->getResourceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getDownloadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadId:Ljava/lang/String;

    .line 117
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->addRequest(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V

    .line 118
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->downloadId:Ljava/lang/String;

    return-object v0
.end method
