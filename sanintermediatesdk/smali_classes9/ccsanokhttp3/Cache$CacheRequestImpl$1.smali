.class Lccsanokhttp3/Cache$CacheRequestImpl$1;
.super Lccsanokio/ForwardingSink;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/Cache$CacheRequestImpl;-><init>(Lccsanokhttp3/Cache;Lccsanokhttp3/internal/cache/DiskLruCache$Editor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanokhttp3/Cache$CacheRequestImpl;

.field final synthetic val$editor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic val$this$0:Lccsanokhttp3/Cache;


# direct methods
.method constructor <init>(Lccsanokhttp3/Cache$CacheRequestImpl;Lccsanokio/Sink;Lccsanokhttp3/Cache;Lccsanokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 0
    .param p1, "this$1"    # Lccsanokhttp3/Cache$CacheRequestImpl;
    .param p2, "x0"    # Lccsanokio/Sink;

    .line 440
    iput-object p1, p0, Lccsanokhttp3/Cache$CacheRequestImpl$1;->this$1:Lccsanokhttp3/Cache$CacheRequestImpl;

    iput-object p3, p0, Lccsanokhttp3/Cache$CacheRequestImpl$1;->val$this$0:Lccsanokhttp3/Cache;

    iput-object p4, p0, Lccsanokhttp3/Cache$CacheRequestImpl$1;->val$editor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lccsanokio/ForwardingSink;-><init>(Lccsanokio/Sink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Lccsanokhttp3/Cache$CacheRequestImpl$1;->this$1:Lccsanokhttp3/Cache$CacheRequestImpl;

    iget-object v0, v0, Lccsanokhttp3/Cache$CacheRequestImpl;->this$0:Lccsanokhttp3/Cache;

    monitor-enter v0

    .line 443
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/Cache$CacheRequestImpl$1;->this$1:Lccsanokhttp3/Cache$CacheRequestImpl;

    iget-boolean v1, v1, Lccsanokhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v1, :cond_0

    .line 444
    monitor-exit v0

    return-void

    .line 446
    :cond_0
    iget-object v1, p0, Lccsanokhttp3/Cache$CacheRequestImpl$1;->this$1:Lccsanokhttp3/Cache$CacheRequestImpl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lccsanokhttp3/Cache$CacheRequestImpl;->done:Z

    .line 447
    iget-object v1, p0, Lccsanokhttp3/Cache$CacheRequestImpl$1;->this$1:Lccsanokhttp3/Cache$CacheRequestImpl;

    iget-object v1, v1, Lccsanokhttp3/Cache$CacheRequestImpl;->this$0:Lccsanokhttp3/Cache;

    iget v3, v1, Lccsanokhttp3/Cache;->writeSuccessCount:I

    add-int/2addr v3, v2

    iput v3, v1, Lccsanokhttp3/Cache;->writeSuccessCount:I

    .line 448
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-super {p0}, Lccsanokio/ForwardingSink;->close()V

    .line 450
    iget-object v0, p0, Lccsanokhttp3/Cache$CacheRequestImpl$1;->val$editor:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->commit()V

    .line 451
    return-void

    .line 448
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
