.class Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
.super Ljava/lang/Object;
.source "DownloadRequestMediator.java"


# instance fields
.field private children:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroidx/core/util/Pair<",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            "Lccsancom/vungle/warren/downloader/AssetDownloadListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final filePath:Ljava/lang/String;

.field public final isCacheable:Z

.field public final key:Ljava/lang/String;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field public final metaPath:Ljava/lang/String;

.field public final priority:Lccsancom/vungle/warren/downloader/AssetPriority;

.field private runnable:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p2, "downloadListener"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    .param p3, "filePath"    # Ljava/lang/String;
    .param p4, "metaPath"    # Ljava/lang/String;
    .param p5, "isCacheable"    # Z
    .param p6, "key"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->runnable:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    iget-object v0, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->url:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->url:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->filePath:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->metaPath:Ljava/lang/String;

    .line 44
    iput-boolean p5, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->isCacheable:Z

    .line 45
    iput-object p6, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->key:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lccsancom/vungle/warren/downloader/DownloadRequest;->getPriority()Lccsancom/vungle/warren/downloader/AssetPriority;

    move-result-object v0

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->priority:Lccsancom/vungle/warren/downloader/AssetPriority;

    .line 47
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    new-instance v2, Lccsanandroidx/core/util/Pair;

    invoke-direct {v2, p1, p2}, Lccsanandroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method declared-synchronized add(Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;)V
    .locals 3
    .param p1, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .param p2, "downloadListener"    # Lccsancom/vungle/warren/downloader/AssetDownloadListener;

    monitor-enter p0

    .line 51
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    new-instance v2, Lccsanandroidx/core/util/Pair;

    invoke-direct {v2, p1, p2}, Lccsanandroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 50
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .end local p1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    .end local p2    # "downloadListener":Lccsancom/vungle/warren/downloader/AssetDownloadListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getPriority()Lccsancom/vungle/warren/downloader/AssetPriority;
    .locals 5

    .line 81
    new-instance v0, Lccsancom/vungle/warren/downloader/AssetPriority;

    const v1, 0x7fffffff

    invoke-direct {v0, v1, v1}, Lccsancom/vungle/warren/downloader/AssetPriority;-><init>(II)V

    .line 82
    .local v0, "minPriority":Lccsancom/vungle/warren/downloader/AssetPriority;
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/core/util/Pair;

    .line 83
    .local v2, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    iget-object v3, v2, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 84
    goto :goto_0

    .line 86
    :cond_0
    iget-object v3, v2, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lccsancom/vungle/warren/downloader/DownloadRequest;

    invoke-virtual {v3}, Lccsancom/vungle/warren/downloader/DownloadRequest;->getPriority()Lccsancom/vungle/warren/downloader/AssetPriority;

    move-result-object v3

    .line 87
    .local v3, "newPriority":Lccsancom/vungle/warren/downloader/AssetPriority;
    if-nez v3, :cond_1

    .line 88
    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v0, v3}, Lccsancom/vungle/warren/downloader/AssetPriority;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_2

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    move-object v0, v4

    .line 91
    .end local v2    # "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    .end local v3    # "newPriority":Lccsancom/vungle/warren/downloader/AssetPriority;
    goto :goto_0

    .line 93
    :cond_3
    return-object v0
.end method

.method public getRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 140
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->runnable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 112
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method is(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 116
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConnected()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isPausable()Z
    .locals 3

    .line 98
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/util/Pair;

    .line 99
    .local v1, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    iget-object v2, v1, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 100
    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, v1, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsancom/vungle/warren/downloader/DownloadRequest;

    iget-boolean v2, v2, Lccsancom/vungle/warren/downloader/DownloadRequest;->pauseOnConnectionLost:Z

    if-eqz v2, :cond_1

    .line 103
    const/4 v0, 0x1

    return v0

    .line 104
    .end local v1    # "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method lock()V
    .locals 1

    .line 73
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 74
    return-void
.end method

.method declared-synchronized remove(Lccsancom/vungle/warren/downloader/DownloadRequest;)Lccsanandroidx/core/util/Pair;
    .locals 2
    .param p1, "downloadRequest"    # Lccsancom/vungle/warren/downloader/DownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            ")",
            "Lccsanandroidx/core/util/Pair<",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            "Lccsancom/vungle/warren/downloader/AssetDownloadListener;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    iget-object v1, p1, Lccsancom/vungle/warren/downloader/DownloadRequest;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 55
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    .end local p1    # "downloadRequest":Lccsancom/vungle/warren/downloader/DownloadRequest;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized requests()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->values()Ljava/util/List;

    move-result-object v0

    .line 64
    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v1, "requests":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequest;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/core/util/Pair;

    .line 66
    .local v3, "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    iget-object v4, v3, Lccsanandroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    nop

    .end local v3    # "pair":Lccsanandroidx/core/util/Pair;, "Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;"
    goto :goto_0

    .line 69
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 62
    .end local v0    # "pairs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/core/util/Pair<Lccsancom/vungle/warren/downloader/DownloadRequest;Lccsancom/vungle/warren/downloader/AssetDownloadListener;>;>;"
    .end local v1    # "requests":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/downloader/DownloadRequest;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method set(I)V
    .locals 2
    .param p1, "status"    # I

    .line 120
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->statusAtomic:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 124
    return-void
.end method

.method setConnected(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 131
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->connectedAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 132
    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 135
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->runnable:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method unlock()V
    .locals 1

    .line 77
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    return-void
.end method

.method declared-synchronized values()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/core/util/Pair<",
            "Lccsancom/vungle/warren/downloader/DownloadRequest;",
            "Lccsancom/vungle/warren/downloader/AssetDownloadListener;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 59
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/DownloadRequestMediator;->children:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 59
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/DownloadRequestMediator;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
