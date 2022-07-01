.class public final Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;,
        Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;,
        Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;
    }
.end annotation


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field final cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

.field private hitCount:I

.field final internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

.field private networkCount:I

.field private requestCount:I

.field writeAbortCount:I

.field writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J

    .line 182
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;->SYSTEM:Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;-><init>(Ljava/io/File;JLccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;)V

    .line 183
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;)V
    .locals 7
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "maxSize"    # J
    .param p4, "fileSystem"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$1;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Cache;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    .line 186
    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->create(Lccsancom/mbridge/msdk/thrid/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    .line 187
    return-void
.end method

.method private abortQuietly(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;)V
    .locals 1
    .param p1, "editor"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 283
    if-eqz p1, :cond_0

    .line 284
    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    goto :goto_1

    .line 287
    :cond_0
    :goto_0
    nop

    .line 288
    :goto_1
    return-void
.end method

.method public static key(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 190
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->md5()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->hex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static readInt(Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;)I
    .locals 6
    .param p0, "source"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    :try_start_0
    invoke-interface {p0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readDecimalLong()J

    move-result-wide v0

    .line 727
    .local v0, "result":J
    invoke-interface {p0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 728
    .local v2, "line":Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 731
    long-to-int v3, v0

    return v3

    .line 729
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected an int but was \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    .end local v0    # "result":J
    .end local v2    # "line":Ljava/lang/String;
    .restart local p0    # "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->close()V

    .line 396
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->delete()V

    .line 311
    return-void
.end method

.method public directory()Ljava/io/File;
    .locals 1

    .line 399
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public evictAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->evictAll()V

    .line 319
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->flush()V

    .line 392
    return-void
.end method

.method get(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 6
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 194
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->key(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->get(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    .local v2, "snapshot":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    if-nez v2, :cond_0

    .line 200
    return-object v1

    .line 205
    :cond_0
    nop

    .line 208
    :try_start_1
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;->getSource(I)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Source;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    .local v3, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;
    nop

    .line 214
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->response(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v4

    .line 216
    .local v4, "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    invoke-virtual {v3, p1, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->matches(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 217
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 218
    return-object v1

    .line 221
    :cond_1
    return-object v4

    .line 209
    .end local v3    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;
    .end local v4    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :catch_0
    move-exception v3

    .line 210
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 211
    return-object v1

    .line 202
    .end local v2    # "snapshot":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 204
    .local v2, "e":Ljava/io/IOException;
    return-object v1
.end method

.method public declared-synchronized hitCount()I
    .locals 1

    monitor-enter p0

    .line 427
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 427
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialize()V

    .line 303
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .line 387
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized networkCount()I
    .locals 1

    monitor-enter p0

    .line 423
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 423
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method put(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;
    .locals 6
    .param p1, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 225
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "requestMethod":Ljava/lang/String;
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 229
    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->remove(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 233
    :goto_0
    return-object v2

    .line 235
    :cond_0
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 239
    return-object v2

    .line 242
    :cond_1
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->hasVaryAll(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    return-object v2

    .line 246
    :cond_2
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;

    invoke-direct {v1, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 247
    .local v1, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;
    const/4 v3, 0x0

    .line 249
    .local v3, "editor":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    :try_start_1
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->key(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->edit(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    move-result-object v4

    move-object v3, v4

    .line 250
    if-nez v3, :cond_3

    .line 251
    return-object v2

    .line 253
    :cond_3
    invoke-virtual {v1, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->writeTo(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;)V

    .line 254
    new-instance v4, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;

    invoke-direct {v4, p0, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheRequestImpl;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Cache;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 255
    :catch_1
    move-exception v4

    .line 256
    .local v4, "e":Ljava/io/IOException;
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->abortQuietly(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;)V

    .line 257
    return-object v2
.end method

.method remove(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    .locals 2
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->key(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 263
    return-void
.end method

.method public declared-synchronized requestCount()I
    .locals 1

    monitor-enter p0

    .line 431
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 431
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method declared-synchronized trackConditionalCacheHit()V
    .locals 1

    monitor-enter p0

    .line 419
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    monitor-exit p0

    return-void

    .line 418
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized trackResponse(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;)V
    .locals 1
    .param p1, "cacheStrategy"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    monitor-enter p0

    .line 407
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->requestCount:I

    .line 409
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;->networkRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    if-eqz v0, :cond_0

    .line 411
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->networkCount:I

    goto :goto_0

    .line 412
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    :cond_0
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    if-eqz v0, :cond_1

    .line 414
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 406
    .end local p1    # "cacheStrategy":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method update(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 4
    .param p1, "cached"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .param p2, "network"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 266
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;

    invoke-direct {v0, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 267
    .local v0, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$CacheResponseBody;->snapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    .line 268
    .local v1, "snapshot":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    const/4 v2, 0x0

    .line 270
    .local v2, "editor":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    :try_start_0
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;->edit()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    move-result-object v3

    move-object v2, v3

    .line 271
    if-eqz v2, :cond_0

    .line 272
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$Entry;->writeTo(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;)V

    .line 273
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :cond_0
    goto :goto_0

    .line 275
    :catch_0
    move-exception v3

    .line 276
    .local v3, "e":Ljava/io/IOException;
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->abortQuietly(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;)V

    .line 278
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public urls()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Cache$2;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Cache;)V

    return-object v0
.end method

.method public declared-synchronized writeAbortCount()I
    .locals 1

    monitor-enter p0

    .line 374
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 374
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeSuccessCount()I
    .locals 1

    monitor-enter p0

    .line 378
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Cache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 378
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
