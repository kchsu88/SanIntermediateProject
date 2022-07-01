.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cacheWritingResponse(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

.field final synthetic val$cacheRequest:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

.field final synthetic val$source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;

    .line 169
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

    iput-object p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheBody:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->discard(Lccsancom/mbridge/msdk/thrid/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 207
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;->abort()V

    .line 209
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->close()V

    .line 210
    return-void
.end method

.method public read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J
    .locals 9
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->read(Lccsancom/mbridge/msdk/thrid/okio/Buffer;J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .local v1, "bytesRead":J
    nop

    .line 185
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 186
    iget-boolean v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v5, :cond_0

    .line 187
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 188
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheBody:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->close()V

    .line 190
    :cond_0
    return-wide v3

    .line 193
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheBody:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v4

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, v1

    move-object v3, p1

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->copyTo(Lccsancom/mbridge/msdk/thrid/okio/Buffer;JJ)Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    .line 194
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheBody:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->emitCompleteSegments()Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 195
    return-wide v1

    .line 177
    .end local v1    # "bytesRead":J
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v2, :cond_2

    .line 179
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 180
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;->abort()V

    .line 182
    :cond_2
    throw v1
.end method

.method public timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    .locals 1

    .line 200
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;->val$source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    return-object v0
.end method
