.class public final Lccsanokhttp3/internal/connection/RealConnectionPool;
.super Ljava/lang/Object;
.source "RealConnectionPool.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/Executor;


# instance fields
.field private final cleanupRunnable:Ljava/lang/Runnable;

.field cleanupRunning:Z

.field private final connections:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lccsanokhttp3/internal/connection/RealConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I

.field final routeDatabase:Lccsanokhttp3/internal/connection/RouteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    nop

    .line 46
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v0, 0x1

    .line 48
    const-string v7, "OkHttp ConnectionPool"

    invoke-static {v7, v0}, Lccsanokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v8, Lccsanokhttp3/internal/connection/RealConnectionPool;->executor:Ljava/util/concurrent/Executor;

    .line 46
    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "maxIdleConnections"    # I
    .param p2, "keepAliveDuration"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lccsanokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lccsanokhttp3/internal/connection/RealConnectionPool$$ExternalSyntheticLambda0;-><init>(Lccsanokhttp3/internal/connection/RealConnectionPool;)V

    iput-object v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    .line 71
    new-instance v0, Lccsanokhttp3/internal/connection/RouteDatabase;

    invoke-direct {v0}, Lccsanokhttp3/internal/connection/RouteDatabase;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lccsanokhttp3/internal/connection/RouteDatabase;

    .line 75
    iput p1, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    .line 76
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    .line 79
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 82
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepAliveDuration <= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pruneAndGetAllocationCount(Lccsanokhttp3/internal/connection/RealConnection;J)I
    .locals 7
    .param p1, "connection"    # Lccsanokhttp3/internal/connection/RealConnection;
    .param p2, "now"    # J

    .line 223
    iget-object v0, p1, Lccsanokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    .line 224
    .local v0, "references":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ref/Reference<Lccsanokhttp3/internal/connection/Transmitter;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 225
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    .line 227
    .local v2, "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lccsanokhttp3/internal/connection/Transmitter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 228
    add-int/lit8 v1, v1, 0x1

    .line 229
    goto :goto_0

    .line 233
    :cond_0
    move-object v3, v2

    check-cast v3, Lccsanokhttp3/internal/connection/Transmitter$TransmitterReference;

    .line 234
    .local v3, "transmitterRef":Lccsanokhttp3/internal/connection/Transmitter$TransmitterReference;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanokhttp3/internal/connection/RealConnection;->route()Lccsanokhttp3/Route;

    move-result-object v5

    invoke-virtual {v5}, Lccsanokhttp3/Route;->address()Lccsanokhttp3/Address;

    move-result-object v5

    invoke-virtual {v5}, Lccsanokhttp3/Address;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " was leaked. Did you forget to close a response body?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "message":Ljava/lang/String;
    invoke-static {}, Lccsanokhttp3/internal/platform/Platform;->get()Lccsanokhttp3/internal/platform/Platform;

    move-result-object v5

    iget-object v6, v3, Lccsanokhttp3/internal/connection/Transmitter$TransmitterReference;->callStackTrace:Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Lccsanokhttp3/internal/platform/Platform;->logCloseableLeak(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 239
    const/4 v5, 0x1

    iput-boolean v5, p1, Lccsanokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 242
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    iget-wide v5, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    sub-long v5, p2, v5

    iput-wide v5, p1, Lccsanokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    .line 244
    const/4 v5, 0x0

    return v5

    .line 246
    .end local v2    # "reference":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Lccsanokhttp3/internal/connection/Transmitter;>;"
    .end local v3    # "transmitterRef":Lccsanokhttp3/internal/connection/Transmitter$TransmitterReference;
    .end local v4    # "message":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method


# virtual methods
.method cleanup(J)J
    .locals 10
    .param p1, "now"    # J

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "inUseConnectionCount":I
    const/4 v1, 0x0

    .line 168
    .local v1, "idleConnectionCount":I
    const/4 v2, 0x0

    .line 169
    .local v2, "longestIdleConnection":Lccsanokhttp3/internal/connection/RealConnection;
    const-wide/high16 v3, -0x8000000000000000L

    .line 172
    .local v3, "longestIdleDurationNs":J
    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v5, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v5}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsanokhttp3/internal/connection/RealConnection;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 174
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanokhttp3/internal/connection/RealConnection;

    .line 177
    .local v6, "connection":Lccsanokhttp3/internal/connection/RealConnection;
    invoke-direct {p0, v6, p1, p2}, Lccsanokhttp3/internal/connection/RealConnectionPool;->pruneAndGetAllocationCount(Lccsanokhttp3/internal/connection/RealConnection;J)I

    move-result v7

    if-lez v7, :cond_0

    .line 178
    add-int/lit8 v0, v0, 0x1

    .line 179
    goto :goto_0

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 185
    iget-wide v7, v6, Lccsanokhttp3/internal/connection/RealConnection;->idleAtNanos:J

    sub-long v7, p1, v7

    .line 186
    .local v7, "idleDurationNs":J
    cmp-long v9, v7, v3

    if-lez v9, :cond_1

    .line 187
    move-wide v3, v7

    .line 188
    move-object v2, v6

    .line 190
    .end local v6    # "connection":Lccsanokhttp3/internal/connection/RealConnection;
    .end local v7    # "idleDurationNs":J
    :cond_1
    goto :goto_0

    .line 192
    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsanokhttp3/internal/connection/RealConnection;>;"
    :cond_2
    iget-wide v5, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->keepAliveDurationNs:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_6

    iget v7, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-le v1, v7, :cond_3

    goto :goto_1

    .line 197
    :cond_3
    if-lez v1, :cond_4

    .line 199
    sub-long/2addr v5, v3

    monitor-exit p0

    return-wide v5

    .line 200
    :cond_4
    if-lez v0, :cond_5

    .line 202
    monitor-exit p0

    return-wide v5

    .line 205
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    .line 206
    const-wide/16 v5, -0x1

    monitor-exit p0

    return-wide v5

    .line 196
    :cond_6
    :goto_1
    iget-object v5, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v5, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 208
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {v2}, Lccsanokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v5

    invoke-static {v5}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 213
    const-wide/16 v5, 0x0

    return-wide v5

    .line 208
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v5

    :goto_3
    goto :goto_2
.end method

.method public connectFailed(Lccsanokhttp3/Route;Ljava/io/IOException;)V
    .locals 4
    .param p1, "failedRoute"    # Lccsanokhttp3/Route;
    .param p2, "failure"    # Ljava/io/IOException;

    .line 254
    invoke-virtual {p1}, Lccsanokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 255
    invoke-virtual {p1}, Lccsanokhttp3/Route;->address()Lccsanokhttp3/Address;

    move-result-object v0

    .line 256
    .local v0, "address":Lccsanokhttp3/Address;
    invoke-virtual {v0}, Lccsanokhttp3/Address;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v1

    .line 257
    invoke-virtual {v0}, Lccsanokhttp3/Address;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lccsanokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p1}, Lccsanokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    .line 256
    invoke-virtual {v1, v2, v3, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 260
    .end local v0    # "address":Lccsanokhttp3/Address;
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->routeDatabase:Lccsanokhttp3/internal/connection/RouteDatabase;

    invoke-virtual {v0, p1}, Lccsanokhttp3/internal/connection/RouteDatabase;->failed(Lccsanokhttp3/Route;)V

    .line 261
    return-void
.end method

.method connectionBecameIdle(Lccsanokhttp3/internal/connection/RealConnection;)Z
    .locals 1
    .param p1, "connection"    # Lccsanokhttp3/internal/connection/RealConnection;

    .line 130
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-boolean v0, p1, Lccsanokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    if-nez v0, :cond_1

    iget v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->maxIdleConnections:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 136
    const/4 v0, 0x0

    return v0

    .line 132
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    .line 133
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public declared-synchronized connectionCount()I
    .locals 1

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 93
    .end local p0    # "this":Lccsanokhttp3/internal/connection/RealConnectionPool;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public evictAll()V
    .locals 4

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "evictedConnections":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/internal/connection/RealConnection;>;"
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsanokhttp3/internal/connection/RealConnection;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanokhttp3/internal/connection/RealConnection;

    .line 145
    .local v2, "connection":Lccsanokhttp3/internal/connection/RealConnection;
    iget-object v3, v2, Lccsanokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const/4 v3, 0x1

    iput-boolean v3, v2, Lccsanokhttp3/internal/connection/RealConnection;->noNewExchanges:Z

    .line 147
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 150
    .end local v2    # "connection":Lccsanokhttp3/internal/connection/RealConnection;
    :cond_0
    goto :goto_0

    .line 151
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsanokhttp3/internal/connection/RealConnection;>;"
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanokhttp3/internal/connection/RealConnection;

    .line 154
    .restart local v2    # "connection":Lccsanokhttp3/internal/connection/RealConnection;
    invoke-virtual {v2}, Lccsanokhttp3/internal/connection/RealConnection;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-static {v3}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 155
    .end local v2    # "connection":Lccsanokhttp3/internal/connection/RealConnection;
    goto :goto_1

    .line 156
    :cond_2
    return-void

    .line 151
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized idleConnectionCount()I
    .locals 4

    monitor-enter p0

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "total":I
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanokhttp3/internal/connection/RealConnection;

    .line 87
    .local v2, "connection":Lccsanokhttp3/internal/connection/RealConnection;
    iget-object v3, v2, Lccsanokhttp3/internal/connection/RealConnection;->transmitters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 88
    .end local v2    # "connection":Lccsanokhttp3/internal/connection/RealConnection;
    :cond_0
    goto :goto_0

    .line 89
    .end local p0    # "this":Lccsanokhttp3/internal/connection/RealConnectionPool;
    :cond_1
    monitor-exit p0

    return v0

    .line 84
    .end local v0    # "total":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public synthetic lambda$new$0$okhttp3-internal-connection-RealConnectionPool()V
    .locals 6

    .line 55
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lccsanokhttp3/internal/connection/RealConnectionPool;->cleanup(J)J

    move-result-wide v0

    .line 56
    .local v0, "waitNanos":J
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 57
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 58
    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    .line 59
    .local v4, "waitMillis":J
    mul-long v2, v2, v4

    sub-long v2, v0, v2

    .line 60
    .end local v0    # "waitNanos":J
    .local v2, "waitNanos":J
    monitor-enter p0

    .line 62
    long-to-int v0, v2

    :try_start_0
    invoke-virtual {p0, v4, v5, v0}, Ljava/lang/Object;->wait(JI)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 65
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 67
    .end local v2    # "waitNanos":J
    .end local v4    # "waitMillis":J
    :cond_1
    :goto_3
    goto :goto_0
.end method

.method put(Lccsanokhttp3/internal/connection/RealConnection;)V
    .locals 2
    .param p1, "connection"    # Lccsanokhttp3/internal/connection/RealConnection;

    .line 117
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-boolean v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->cleanupRunning:Z

    .line 120
    sget-object v0, Lccsanokhttp3/internal/connection/RealConnectionPool;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 123
    return-void

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method transmitterAcquirePooledConnection(Lccsanokhttp3/Address;Lccsanokhttp3/internal/connection/Transmitter;Ljava/util/List;Z)Z
    .locals 3
    .param p1, "address"    # Lccsanokhttp3/Address;
    .param p2, "transmitter"    # Lccsanokhttp3/internal/connection/Transmitter;
    .param p3    # Ljava/util/List;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "requireMultiplexed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/Address;",
            "Lccsanokhttp3/internal/connection/Transmitter;",
            "Ljava/util/List<",
            "Lccsanokhttp3/Route;",
            ">;Z)Z"
        }
    .end annotation

    .line 106
    .local p3, "routes":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Route;>;"
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 107
    iget-object v0, p0, Lccsanokhttp3/internal/connection/RealConnectionPool;->connections:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanokhttp3/internal/connection/RealConnection;

    .line 108
    .local v1, "connection":Lccsanokhttp3/internal/connection/RealConnection;
    if-eqz p4, :cond_0

    invoke-virtual {v1}, Lccsanokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {v1, p1, p3}, Lccsanokhttp3/internal/connection/RealConnection;->isEligible(Lccsanokhttp3/Address;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p2, v1}, Lccsanokhttp3/internal/connection/Transmitter;->acquireConnectionNoEvents(Lccsanokhttp3/internal/connection/RealConnection;)V

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    .end local v1    # "connection":Lccsanokhttp3/internal/connection/RealConnection;
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
