.class final Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field final client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

.field private eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private executed:Z

.field final forWebSocket:Z

.field final originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

.field final retryAndFollowUpInterceptor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

.field final timeout:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Request;Z)V
    .locals 4
    .param p1, "client"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .param p2, "originalRequest"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p3, "forWebSocket"    # Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 61
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 62
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    .line 63
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-direct {v0, p1, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Z)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    .line 64
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$1;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 69
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->callTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;)Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    .line 41
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    return-object v0
.end method

.method private captureCallStackTrace()V
    .locals 2

    .line 116
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v0

    const-string v1, "response.body().close()"

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->getStackTraceForCloseable(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 117
    .local v0, "callStackTrace":Ljava/lang/Object;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->setCallStackTrace(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method static newRealCall(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Request;Z)Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;
    .locals 2
    .param p0, "client"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .param p1, "originalRequest"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p2, "forWebSocket"    # Z

    .line 74
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Request;Z)V

    .line 75
    .local v0, "call":Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->eventListenerFactory()Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    move-result-object v1

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;->create(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    move-result-object v1

    iput-object v1, v0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    .line 76
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 131
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->cancel()V

    .line 132
    return-void
.end method

.method public bridge synthetic clone()Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->clone()Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;
    .locals 3

    .line 148
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->newRealCall(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Request;Z)Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->clone()Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Lccsancom/mbridge/msdk/thrid/okhttp/Callback;)V
    .locals 2
    .param p1, "responseCallback"    # Lccsancom/mbridge/msdk/thrid/okhttp/Callback;

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z

    .line 124
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->captureCallStackTrace()V

    .line 126
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->callStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V

    .line 127
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v0

    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;Lccsancom/mbridge/msdk/thrid/okhttp/Callback;)V

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->enqueue(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    .line 128
    return-void

    .line 122
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "responseCallback":Lccsancom/mbridge/msdk/thrid/okhttp/Callback;
    throw v0

    .line 124
    .restart local p1    # "responseCallback":Lccsancom/mbridge/msdk/thrid/okhttp/Callback;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public execute()Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    monitor-enter p0

    .line 85
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z

    if-nez v0, :cond_1

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z

    .line 87
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 88
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->captureCallStackTrace()V

    .line 89
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->enter()V

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->callStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V

    .line 92
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->executed(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;)V

    .line 93
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->getResponseWithInterceptorChain()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .local v0, "result":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    if-eqz v0, :cond_0

    .line 95
    nop

    .line 101
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;)V

    .line 95
    return-object v0

    .line 94
    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    .end local v0    # "result":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    move-object v0, v1

    .line 98
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    invoke-virtual {v1, p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->callFailed(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V

    .line 99
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;)V

    .line 102
    throw v0

    .line 85
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method getResponseWithInterceptorChain()Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .local v0, "interceptors":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;>;"
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->cookieJar()Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/BridgeInterceptor;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->internalCache()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectInterceptor;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    if-nez v1, :cond_0

    .line 249
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 251
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    new-instance v13, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    iget-object v9, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 254
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectTimeoutMillis()I

    move-result v10

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 255
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->readTimeoutMillis()I

    move-result v11

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->writeTimeoutMillis()I

    move-result v12

    move-object v1, v13

    move-object v2, v0

    move-object v8, p0

    invoke-direct/range {v1 .. v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;ILccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;III)V

    .line 257
    .local v1, "chain":Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->proceed(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v2

    .line 258
    .local v2, "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    return-object v2

    .line 259
    :cond_1
    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 260
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Canceled"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public isCanceled()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isExecuted()Z
    .locals 1

    monitor-enter p0

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->executed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 139
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method redactedUrl()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->redact()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .locals 1

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    return-object v0
.end method

.method streamAllocation()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .locals 1

    .line 152
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->retryAndFollowUpInterceptor:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->streamAllocation()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    move-result-object v0

    return-object v0
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 135
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    return-object v0
.end method

.method timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 106
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 108
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 112
    :cond_1
    return-object v0
.end method

.method toLoggableString()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "canceled "

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1

    const-string v1, "web socket"

    goto :goto_1

    :cond_1
    const-string v1, "call"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    return-object v0
.end method
