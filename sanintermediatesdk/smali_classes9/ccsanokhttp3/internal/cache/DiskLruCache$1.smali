.class Lccsanokhttp3/internal/cache/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/cache/DiskLruCache;)V
    .locals 0
    .param p1, "this$0"    # Lccsanokhttp3/internal/cache/DiskLruCache;

    .line 169
    iput-object p1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 171
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget-boolean v1, v1, Lccsanokhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iget-boolean v4, v4, Lccsanokhttp3/internal/cache/DiskLruCache;->closed:Z

    or-int/2addr v1, v4

    if-eqz v1, :cond_1

    .line 173
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 177
    :cond_1
    :try_start_1
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lccsanokhttp3/internal/cache/DiskLruCache;->trimToSize()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    goto :goto_1

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "ignored":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iput-boolean v3, v4, Lccsanokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    .end local v1    # "ignored":Ljava/io/IOException;
    :goto_1
    :try_start_3
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lccsanokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1}, Lccsanokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 185
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iput v2, v1, Lccsanokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    :cond_2
    goto :goto_2

    .line 187
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    iput-boolean v3, v2, Lccsanokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    .line 189
    iget-object v2, p0, Lccsanokhttp3/internal/cache/DiskLruCache$1;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    invoke-static {}, Lccsanokio/Okio;->blackhole()Lccsanokio/Sink;

    move-result-object v3

    invoke-static {v3}, Lccsanokio/Okio;->buffer(Lccsanokio/Sink;)Lccsanokio/BufferedSink;

    move-result-object v3

    iput-object v3, v2, Lccsanokhttp3/internal/cache/DiskLruCache;->journalWriter:Lccsanokio/BufferedSink;

    .line 191
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
