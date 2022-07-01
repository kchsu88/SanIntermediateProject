.class final Lccsanokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lccsanokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lccsanokhttp3/OkHttpClient;

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lccsanokhttp3/Request;

.field private transmitter:Lccsanokhttp3/internal/connection/Transmitter;


# direct methods
.method private constructor <init>(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Request;Z)V
    .locals 0
    .param p1, "client"    # Lccsanokhttp3/OkHttpClient;
    .param p2, "originalRequest"    # Lccsanokhttp3/Request;
    .param p3, "forWebSocket"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    .line 57
    iput-object p2, p0, Lccsanokhttp3/RealCall;->originalRequest:Lccsanokhttp3/Request;

    .line 58
    iput-boolean p3, p0, Lccsanokhttp3/RealCall;->forWebSocket:Z

    .line 59
    return-void
.end method

.method static synthetic access$000(Lccsanokhttp3/RealCall;)Lccsanokhttp3/internal/connection/Transmitter;
    .locals 1
    .param p0, "x0"    # Lccsanokhttp3/RealCall;

    .line 39
    iget-object v0, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    return-object v0
.end method

.method static newRealCall(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Request;Z)Lccsanokhttp3/RealCall;
    .locals 2
    .param p0, "client"    # Lccsanokhttp3/OkHttpClient;
    .param p1, "originalRequest"    # Lccsanokhttp3/Request;
    .param p2, "forWebSocket"    # Z

    .line 63
    new-instance v0, Lccsanokhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lccsanokhttp3/RealCall;-><init>(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Request;Z)V

    .line 64
    .local v0, "call":Lccsanokhttp3/RealCall;
    new-instance v1, Lccsanokhttp3/internal/connection/Transmitter;

    invoke-direct {v1, p0, v0}, Lccsanokhttp3/internal/connection/Transmitter;-><init>(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Call;)V

    iput-object v1, v0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    .line 65
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 97
    iget-object v0, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Transmitter;->cancel()V

    .line 98
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lccsanokhttp3/RealCall;->clone()Lccsanokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lccsanokhttp3/Call;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lccsanokhttp3/RealCall;->clone()Lccsanokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lccsanokhttp3/RealCall;
    .locals 3

    .line 114
    iget-object v0, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    iget-object v1, p0, Lccsanokhttp3/RealCall;->originalRequest:Lccsanokhttp3/Request;

    iget-boolean v2, p0, Lccsanokhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lccsanokhttp3/RealCall;->newRealCall(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Request;Z)Lccsanokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lccsanokhttp3/Callback;)V
    .locals 2
    .param p1, "responseCallback"    # Lccsanokhttp3/Callback;

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/RealCall;->executed:Z

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Transmitter;->callStart()V

    .line 93
    iget-object v0, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lccsanokhttp3/OkHttpClient;->dispatcher()Lccsanokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lccsanokhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lccsanokhttp3/RealCall$AsyncCall;-><init>(Lccsanokhttp3/RealCall;Lccsanokhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lccsanokhttp3/Dispatcher;->enqueue(Lccsanokhttp3/RealCall$AsyncCall;)V

    .line 94
    return-void

    .line 89
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "responseCallback":Lccsanokhttp3/Callback;
    throw v0

    .line 91
    .restart local p1    # "responseCallback":Lccsanokhttp3/Callback;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public execute()Lccsanokhttp3/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/RealCall;->executed:Z

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    iget-object v0, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Transmitter;->timeoutEnter()V

    .line 78
    iget-object v0, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Transmitter;->callStart()V

    .line 80
    :try_start_1
    iget-object v0, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lccsanokhttp3/OkHttpClient;->dispatcher()Lccsanokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanokhttp3/Dispatcher;->executed(Lccsanokhttp3/RealCall;)V

    .line 81
    invoke-virtual {p0}, Lccsanokhttp3/RealCall;->getResponseWithInterceptorChain()Lccsanokhttp3/Response;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    iget-object v1, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->dispatcher()Lccsanokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsanokhttp3/Dispatcher;->finished(Lccsanokhttp3/RealCall;)V

    .line 81
    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->dispatcher()Lccsanokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsanokhttp3/Dispatcher;->finished(Lccsanokhttp3/RealCall;)V

    throw v0

    .line 74
    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method getResponseWithInterceptorChain()Lccsanokhttp3/Response;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Interceptor;>;"
    iget-object v1, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    new-instance v1, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;

    iget-object v2, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-direct {v1, v2}, Lccsanokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lccsanokhttp3/OkHttpClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v1, Lccsanokhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lccsanokhttp3/OkHttpClient;->cookieJar()Lccsanokhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanokhttp3/internal/http/BridgeInterceptor;-><init>(Lccsanokhttp3/CookieJar;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lccsanokhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lccsanokhttp3/OkHttpClient;->internalCache()Lccsanokhttp3/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanokhttp3/internal/cache/CacheInterceptor;-><init>(Lccsanokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v1, Lccsanokhttp3/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-direct {v1, v2}, Lccsanokhttp3/internal/connection/ConnectInterceptor;-><init>(Lccsanokhttp3/OkHttpClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-boolean v1, p0, Lccsanokhttp3/RealCall;->forWebSocket:Z

    if-nez v1, :cond_0

    .line 219
    iget-object v1, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    :cond_0
    new-instance v1, Lccsanokhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lccsanokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v1, v2}, Lccsanokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v11, Lccsanokhttp3/internal/http/RealInterceptorChain;

    iget-object v3, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lccsanokhttp3/RealCall;->originalRequest:Lccsanokhttp3/Request;

    iget-object v1, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    .line 224
    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v8

    iget-object v1, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    .line 225
    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v9

    iget-object v1, p0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v10

    move-object v1, v11

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v1 .. v10}, Lccsanokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/internal/connection/Exchange;ILccsanokhttp3/Request;Lccsanokhttp3/Call;III)V

    .line 227
    .local v1, "chain":Lccsanokhttp3/Interceptor$Chain;
    const/4 v2, 0x0

    .line 229
    .local v2, "calledNoMoreExchanges":Z
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lccsanokhttp3/RealCall;->originalRequest:Lccsanokhttp3/Request;

    invoke-interface {v1, v4}, Lccsanokhttp3/Interceptor$Chain;->proceed(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;

    move-result-object v4

    .line 230
    .local v4, "response":Lccsanokhttp3/Response;
    iget-object v5, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v5}, Lccsanokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_2

    .line 234
    nop

    .line 239
    if-nez v2, :cond_1

    .line 240
    iget-object v5, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v5, v3}, Lccsanokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    .line 234
    :cond_1
    return-object v4

    .line 231
    :cond_2
    :try_start_1
    invoke-static {v4}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Canceled"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "interceptors":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Interceptor;>;"
    .end local v1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    .end local v2    # "calledNoMoreExchanges":Z
    throw v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    .end local v4    # "response":Lccsanokhttp3/Response;
    .restart local v0    # "interceptors":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Interceptor;>;"
    .restart local v1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    .restart local v2    # "calledNoMoreExchanges":Z
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 235
    :catch_0
    move-exception v4

    .line 236
    .local v4, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    .line 237
    :try_start_2
    iget-object v5, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v5, v4}, Lccsanokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v5

    .end local v0    # "interceptors":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Interceptor;>;"
    .end local v1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    .end local v2    # "calledNoMoreExchanges":Z
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "interceptors":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Interceptor;>;"
    .restart local v1    # "chain":Lccsanokhttp3/Interceptor$Chain;
    .restart local v2    # "calledNoMoreExchanges":Z
    :goto_0
    if-nez v2, :cond_3

    .line 240
    iget-object v5, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v5, v3}, Lccsanokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_3
    throw v4
.end method

.method public isCanceled()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 105
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 105
    .end local p0    # "this":Lccsanokhttp3/RealCall;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lccsanokhttp3/RealCall;->originalRequest:Lccsanokhttp3/Request;

    invoke-virtual {v0}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lccsanokhttp3/Request;
    .locals 1

    .line 69
    iget-object v0, p0, Lccsanokhttp3/RealCall;->originalRequest:Lccsanokhttp3/Request;

    return-object v0
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 101
    iget-object v0, p0, Lccsanokhttp3/RealCall;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Transmitter;->timeout()Lccsanokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsanokhttp3/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-boolean v1, p0, Lccsanokhttp3/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lccsanokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    return-object v0
.end method
