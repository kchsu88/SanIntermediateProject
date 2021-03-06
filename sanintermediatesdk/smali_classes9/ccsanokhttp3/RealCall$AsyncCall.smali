.class final Lccsanokhttp3/RealCall$AsyncCall;
.super Lccsanokhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private volatile callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final responseCallback:Lccsanokhttp3/Callback;

.field final synthetic this$0:Lccsanokhttp3/RealCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    const-class v0, Lccsanokhttp3/RealCall;

    return-void
.end method

.method constructor <init>(Lccsanokhttp3/RealCall;Lccsanokhttp3/Callback;)V
    .locals 3
    .param p1, "this$0"    # Lccsanokhttp3/RealCall;
    .param p2, "responseCallback"    # Lccsanokhttp3/Callback;

    .line 121
    iput-object p1, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lccsanokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s"

    invoke-direct {p0, v1, v0}, Lccsanokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lccsanokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    iput-object p2, p0, Lccsanokhttp3/RealCall$AsyncCall;->responseCallback:Lccsanokhttp3/Callback;

    .line 124
    return-void
.end method


# virtual methods
.method callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 127
    iget-object v0, p0, Lccsanokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method protected execute()V
    .locals 6

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "signalledCallback":Z
    iget-object v1, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    invoke-static {v1}, Lccsanokhttp3/RealCall;->access$000(Lccsanokhttp3/RealCall;)Lccsanokhttp3/internal/connection/Transmitter;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/internal/connection/Transmitter;->timeoutEnter()V

    .line 172
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    invoke-virtual {v1}, Lccsanokhttp3/RealCall;->getResponseWithInterceptorChain()Lccsanokhttp3/Response;

    move-result-object v1

    .line 173
    .local v1, "response":Lccsanokhttp3/Response;
    const/4 v0, 0x1

    .line 174
    iget-object v2, p0, Lccsanokhttp3/RealCall$AsyncCall;->responseCallback:Lccsanokhttp3/Callback;

    iget-object v3, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lccsanokhttp3/Callback;->onResponse(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    .end local v1    # "response":Lccsanokhttp3/Response;
    :goto_0
    iget-object v1, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    iget-object v1, v1, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->dispatcher()Lccsanokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsanokhttp3/Dispatcher;->finished(Lccsanokhttp3/RealCall$AsyncCall;)V

    .line 192
    goto :goto_1

    .line 182
    :catchall_0
    move-exception v1

    .line 183
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    invoke-virtual {v2}, Lccsanokhttp3/RealCall;->cancel()V

    .line 184
    if-nez v0, :cond_0

    .line 185
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canceled due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, "canceledException":Ljava/io/IOException;
    nop

    .line 187
    iget-object v3, p0, Lccsanokhttp3/RealCall$AsyncCall;->responseCallback:Lccsanokhttp3/Callback;

    iget-object v4, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    invoke-interface {v3, v4, v2}, Lccsanokhttp3/Callback;->onFailure(Lccsanokhttp3/Call;Ljava/io/IOException;)V

    .line 189
    .end local v2    # "canceledException":Ljava/io/IOException;
    :cond_0
    nop

    .end local v0    # "signalledCallback":Z
    throw v1

    .line 191
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "signalledCallback":Z
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/io/IOException;
    if-eqz v0, :cond_1

    .line 178
    invoke-static {}, Lccsanokhttp3/internal/platform/Platform;->get()Lccsanokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    invoke-virtual {v5}, Lccsanokhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lccsanokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 180
    :cond_1
    iget-object v2, p0, Lccsanokhttp3/RealCall$AsyncCall;->responseCallback:Lccsanokhttp3/Callback;

    iget-object v3, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lccsanokhttp3/Callback;->onFailure(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 193
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 191
    :goto_2
    iget-object v2, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    iget-object v2, v2, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lccsanokhttp3/OkHttpClient;->dispatcher()Lccsanokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lccsanokhttp3/Dispatcher;->finished(Lccsanokhttp3/RealCall$AsyncCall;)V

    goto :goto_4

    :goto_3
    throw v1

    :goto_4
    goto :goto_3
.end method

.method executeOn(Ljava/util/concurrent/ExecutorService;)V
    .locals 5
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 151
    iget-object v0, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    iget-object v0, v0, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lccsanokhttp3/OkHttpClient;->dispatcher()Lccsanokhttp3/Dispatcher;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "success":Z
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const/4 v0, 0x1

    .line 162
    if-nez v0, :cond_0

    .line 163
    :goto_0
    iget-object v1, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    iget-object v1, v1, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->dispatcher()Lccsanokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsanokhttp3/Dispatcher;->finished(Lccsanokhttp3/RealCall$AsyncCall;)V

    goto :goto_1

    .line 162
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "executor rejected"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 158
    .local v2, "ioException":Ljava/io/InterruptedIOException;
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 159
    iget-object v3, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    invoke-static {v3}, Lccsanokhttp3/RealCall;->access$000(Lccsanokhttp3/RealCall;)Lccsanokhttp3/internal/connection/Transmitter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsanokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    .line 160
    iget-object v3, p0, Lccsanokhttp3/RealCall$AsyncCall;->responseCallback:Lccsanokhttp3/Callback;

    iget-object v4, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    invoke-interface {v3, v4, v2}, Lccsanokhttp3/Callback;->onFailure(Lccsanokhttp3/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v2    # "ioException":Ljava/io/InterruptedIOException;
    if-nez v0, :cond_0

    .line 163
    goto :goto_0

    .line 166
    :cond_0
    :goto_1
    return-void

    .line 162
    :goto_2
    if-nez v0, :cond_1

    .line 163
    iget-object v2, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    iget-object v2, v2, Lccsanokhttp3/RealCall;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lccsanokhttp3/OkHttpClient;->dispatcher()Lccsanokhttp3/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lccsanokhttp3/Dispatcher;->finished(Lccsanokhttp3/RealCall$AsyncCall;)V

    :cond_1
    throw v1

    .line 151
    .end local v0    # "success":Z
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method get()Lccsanokhttp3/RealCall;
    .locals 1

    .line 143
    iget-object v0, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    iget-object v0, v0, Lccsanokhttp3/RealCall;->originalRequest:Lccsanokhttp3/Request;

    invoke-virtual {v0}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lccsanokhttp3/Request;
    .locals 1

    .line 139
    iget-object v0, p0, Lccsanokhttp3/RealCall$AsyncCall;->this$0:Lccsanokhttp3/RealCall;

    iget-object v0, v0, Lccsanokhttp3/RealCall;->originalRequest:Lccsanokhttp3/Request;

    return-object v0
.end method

.method reuseCallsPerHostFrom(Lccsanokhttp3/RealCall$AsyncCall;)V
    .locals 1
    .param p1, "other"    # Lccsanokhttp3/RealCall$AsyncCall;

    .line 131
    iget-object v0, p1, Lccsanokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v0, p0, Lccsanokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 132
    return-void
.end method
