.class public Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue$ClassHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadRequestQueue"


# instance fields
.field private final currentRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final delayRequestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private final sequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->sequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;-><init>()V

    return-void
.end method

.method private cancelAndRemoveFromMap(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Ljava/lang/String;)V
    .locals 0

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadMessage()Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->cancel(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 40
    :cond_0
    return-void
.end method

.method public static getInstance()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;
    .locals 1

    .line 28
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue$ClassHolder;->access$000()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;

    move-result-object v0

    return-object v0
.end method

.method private getSequenceNumber()I
    .locals 1

    .line 32
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->sequenceGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addRequest(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest<",
            "TT;>;)V"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadId()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->getSequenceNumber()I

    move-result v1

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setSequence(I)V

    .line 98
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 99
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v1

    sget-object v2, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->RETRY:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq v1, v2, :cond_0

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->DELAY:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->RETRY:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    :goto_0
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setStatus(Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;)V

    .line 100
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 102
    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :cond_1
    goto :goto_2

    .line 108
    :cond_2
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 109
    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object v1

    sget-object v2, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->RETRY:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    if-eq v1, v2, :cond_4

    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->QUEUED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    goto :goto_1

    :cond_4
    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->RETRY:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    :goto_1
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setStatus(Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;)V

    .line 114
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getExecutorSupplier()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;->getDownloadTasks()Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setFuture(Ljava/util/concurrent/Future;)V

    .line 117
    :goto_2
    return-void
.end method

.method public cancel(Ljava/lang/String;)V
    .locals 4

    .line 44
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 46
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 47
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 48
    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadMessage()Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerCancelEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 53
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_2
    :goto_1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 63
    invoke-direct {p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->cancelAndRemoveFromMap(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Ljava/lang/String;)V

    .line 65
    :cond_3
    return-void
.end method

.method public cancelAll()V
    .locals 4

    .line 68
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 71
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 72
    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadMessage()Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->handlerCancelEvent(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V

    .line 75
    :cond_0
    goto :goto_1

    .line 77
    :cond_1
    goto :goto_0

    .line 79
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 83
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->cancelAndRemoveFromMap(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;Ljava/lang/String;)V

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    return-void
.end method

.method public finish(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V
    .locals 4

    .line 120
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getDownloadId()Ljava/lang/String;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 127
    sget-object v2, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->QUEUED:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setStatus(Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;)V

    .line 128
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getExecutorSupplier()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;->getDownloadTasks()Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;

    move-result-object v2

    new-instance v3, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;

    invoke-direct {v3, v1}, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;)V

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->setFuture(Ljava/util/concurrent/Future;)V

    .line 130
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 131
    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->delayRequestMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-void
.end method

.method public getStatus(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;
    .locals 1

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->currentRequestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;

    .line 89
    if-eqz p1, :cond_0

    .line 90
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequest;->getStatus()Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object p1

    return-object p1

    .line 92
    :cond_0
    sget-object p1, Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;->UNKNOWN:Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    return-object p1
.end method

.method public initialize()V
    .locals 0

    .line 25
    return-void
.end method
