.class Lccsanokhttp3/internal/cache/CacheInterceptor$1;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lccsanokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lccsanokhttp3/internal/cache/CacheRequest;Lccsanokhttp3/Response;)Lccsanokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cacheRequestClosed:Z

.field final synthetic this$0:Lccsanokhttp3/internal/cache/CacheInterceptor;

.field final synthetic val$cacheBody:Lccsanokio/BufferedSink;

.field final synthetic val$cacheRequest:Lccsanokhttp3/internal/cache/CacheRequest;

.field final synthetic val$source:Lccsanokio/BufferedSource;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/cache/CacheInterceptor;Lccsanokio/BufferedSource;Lccsanokhttp3/internal/cache/CacheRequest;Lccsanokio/BufferedSink;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/cache/CacheInterceptor;

    .line 169
    iput-object p1, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->this$0:Lccsanokhttp3/internal/cache/CacheInterceptor;

    iput-object p2, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lccsanokio/BufferedSource;

    iput-object p3, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lccsanokhttp3/internal/cache/CacheRequest;

    iput-object p4, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lccsanokio/BufferedSink;

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

    .line 202
    iget-boolean v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 203
    invoke-static {p0, v0, v1}, Lccsanokhttp3/internal/Util;->discard(Lccsanokio/Source;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 205
    iget-object v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lccsanokhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lccsanokhttp3/internal/cache/CacheRequest;->abort()V

    .line 207
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lccsanokio/BufferedSource;

    invoke-interface {v0}, Lccsanokio/BufferedSource;->close()V

    .line 208
    return-void
.end method

.method public read(Lccsanokio/Buffer;J)J
    .locals 9
    .param p1, "sink"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lccsanokio/BufferedSource;

    invoke-interface {v1, p1, p2, p3}, Lccsanokio/BufferedSource;->read(Lccsanokio/Buffer;J)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .local v1, "bytesRead":J
    nop

    .line 184
    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 185
    iget-boolean v5, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v5, :cond_0

    .line 186
    iput-boolean v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 187
    iget-object v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lccsanokio/BufferedSink;

    invoke-interface {v0}, Lccsanokio/BufferedSink;->close()V

    .line 189
    :cond_0
    return-wide v3

    .line 192
    :cond_1
    iget-object v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lccsanokio/BufferedSink;

    invoke-interface {v0}, Lccsanokio/BufferedSink;->buffer()Lccsanokio/Buffer;

    move-result-object v4

    invoke-virtual {p1}, Lccsanokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v5, v1

    move-object v3, p1

    move-wide v7, v1

    invoke-virtual/range {v3 .. v8}, Lccsanokio/Buffer;->copyTo(Lccsanokio/Buffer;JJ)Lccsanokio/Buffer;

    .line 193
    iget-object v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$cacheBody:Lccsanokio/BufferedSink;

    invoke-interface {v0}, Lccsanokio/BufferedSink;->emitCompleteSegments()Lccsanokio/BufferedSink;

    .line 194
    return-wide v1

    .line 176
    .end local v1    # "bytesRead":J
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/io/IOException;
    iget-boolean v2, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    if-nez v2, :cond_2

    .line 178
    iput-boolean v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->cacheRequestClosed:Z

    .line 179
    iget-object v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$cacheRequest:Lccsanokhttp3/internal/cache/CacheRequest;

    invoke-interface {v0}, Lccsanokhttp3/internal/cache/CacheRequest;->abort()V

    .line 181
    :cond_2
    throw v1
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 198
    iget-object v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor$1;->val$source:Lccsanokio/BufferedSource;

    invoke-interface {v0}, Lccsanokio/BufferedSource;->timeout()Lccsanokio/Timeout;

    move-result-object v0

    return-object v0
.end method
