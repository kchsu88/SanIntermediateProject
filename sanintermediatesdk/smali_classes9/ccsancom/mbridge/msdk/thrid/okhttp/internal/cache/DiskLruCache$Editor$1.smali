.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor$1;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->newSink(I)Lccsancom/mbridge/msdk/thrid/okio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;Lccsancom/mbridge/msdk/thrid/okio/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;
    .param p2, "delegate"    # Lccsancom/mbridge/msdk/thrid/okio/Sink;

    .line 932
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor$1;->this$1:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/FaultHidingSink;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .line 935
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor$1;->this$1:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 936
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor$1;->this$1:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Editor;->detach()V

    .line 937
    monitor-exit v0

    .line 938
    return-void

    .line 937
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
