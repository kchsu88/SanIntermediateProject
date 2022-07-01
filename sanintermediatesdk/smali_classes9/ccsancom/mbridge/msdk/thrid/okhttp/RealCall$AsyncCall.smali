.class final Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsyncCall"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final responseCallback:Lccsancom/mbridge/msdk/thrid/okhttp/Callback;

.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    const-class v0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    return-void
.end method

.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;Lccsancom/mbridge/msdk/thrid/okhttp/Callback;)V
    .locals 3
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;
    .param p2, "responseCallback"    # Lccsancom/mbridge/msdk/thrid/okhttp/Callback;

    .line 158
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "OkHttp %s"

    invoke-direct {p0, v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lccsancom/mbridge/msdk/thrid/okhttp/Callback;

    .line 161
    return-void
.end method


# virtual methods
.method protected execute()V
    .locals 6

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "signalledCallback":Z
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->timeout:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->enter()V

    .line 201
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->getResponseWithInterceptorChain()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v1

    .line 202
    .local v1, "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    const/4 v0, 0x1

    .line 203
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lccsancom/mbridge/msdk/thrid/okhttp/Callback;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-interface {v2, v3, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Callback;->onResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v1    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    .line 222
    goto :goto_1

    .line 213
    :catchall_0
    move-exception v1

    .line 214
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->cancel()V

    .line 215
    if-nez v0, :cond_0

    .line 216
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canceled due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "canceledException":Ljava/io/IOException;
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lccsancom/mbridge/msdk/thrid/okhttp/Callback;

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-interface {v3, v4, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Callback;->onFailure(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V

    .line 219
    .end local v2    # "canceledException":Ljava/io/IOException;
    :cond_0
    nop

    .end local v0    # "signalledCallback":Z
    throw v1

    .line 204
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "signalledCallback":Z
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->timeoutExit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    move-object v1, v2

    .line 206
    if-eqz v0, :cond_1

    .line 208
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback failure for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->access$000(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;)Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v2, v3, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->callFailed(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V

    .line 211
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lccsancom/mbridge/msdk/thrid/okhttp/Callback;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-interface {v2, v3, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Callback;->onFailure(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 223
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 221
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v2, v2, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    .line 222
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method executeOn(Ljava/util/concurrent/ExecutorService;)V
    .locals 5
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .line 180
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    const/4 v0, 0x0

    .line 183
    .local v0, "success":Z
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    const/4 v0, 0x1

    .line 191
    if-nez v0, :cond_0

    .line 192
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    goto :goto_1

    .line 191
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "executor rejected"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 187
    .local v2, "ioException":Ljava/io/InterruptedIOException;
    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 188
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->access$000(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;)Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-virtual {v3, v4, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->callFailed(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V

    .line 189
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->responseCallback:Lccsancom/mbridge/msdk/thrid/okhttp/Callback;

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    invoke-interface {v3, v4, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Callback;->onFailure(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/io/IOException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v1    # "e":Ljava/util/concurrent/RejectedExecutionException;
    .end local v2    # "ioException":Ljava/io/InterruptedIOException;
    if-nez v0, :cond_0

    .line 192
    goto :goto_0

    .line 195
    :cond_0
    :goto_1
    return-void

    .line 191
    :goto_2
    if-nez v0, :cond_1

    .line 192
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v2, v2, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher()Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    move-result-object v2

    invoke-virtual {v2, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->finished(Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;)V

    .line 194
    :cond_1
    throw v1

    .line 180
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

.method get()Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;
    .locals 1

    .line 172
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    return-object v0
.end method

.method host()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .locals 1

    .line 168
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall$AsyncCall;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/RealCall;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    return-object v0
.end method
