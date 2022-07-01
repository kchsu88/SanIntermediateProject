.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    .line 173
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 175
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    iget-boolean v1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->initialized:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    iget-boolean v4, v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->closed:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_1

    .line 177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 181
    :cond_1
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    goto :goto_1

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ignored":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    iput-boolean v3, v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .end local v1    # "ignored":Ljava/io/IOException;
    :goto_1
    :try_start_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 189
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    iput v2, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    :cond_2
    goto :goto_2

    .line 191
    :catch_1
    move-exception v1

    .line 192
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    iput-boolean v3, v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    .line 193
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$1;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->blackhole()Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v3

    iput-object v3, v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->journalWriter:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 195
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v0

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
