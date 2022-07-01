.class Lccsanokhttp3/internal/cache/DiskLruCache$Editor$1;
.super Lccsanokhttp3/internal/cache/FaultHidingSink;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lccsanokio/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;


# direct methods
.method constructor <init>(Lccsanokhttp3/internal/cache/DiskLruCache$Editor;Lccsanokio/Sink;)V
    .locals 0
    .param p1, "this$1"    # Lccsanokhttp3/internal/cache/DiskLruCache$Editor;
    .param p2, "delegate"    # Lccsanokio/Sink;

    .line 898
    iput-object p1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Lccsanokhttp3/internal/cache/FaultHidingSink;-><init>(Lccsanokio/Sink;)V

    return-void
.end method


# virtual methods
.method protected onException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;

    .line 900
    iget-object v0, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    iget-object v0, v0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->this$0:Lccsanokhttp3/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 901
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/cache/DiskLruCache$Editor$1;->this$1:Lccsanokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v1}, Lccsanokhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    .line 902
    monitor-exit v0

    .line 903
    return-void

    .line 902
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
