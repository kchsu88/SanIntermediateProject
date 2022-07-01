.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->snapshots()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final delegate:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field nextSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

.field removeSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

.field final synthetic this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;)V
    .locals 2
    .param p1, "this$0"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    .line 753
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 5

    .line 765
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->nextSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 767
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    monitor-enter v0

    .line 769
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    iget-boolean v2, v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->closed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    monitor-exit v0

    return v3

    .line 771
    :cond_1
    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 772
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->delegate:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;

    .line 773
    .local v2, "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    iget-boolean v4, v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->readable:Z

    if-nez v4, :cond_2

    goto :goto_0

    .line 774
    :cond_2
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;->snapshot()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    move-result-object v4

    .line 775
    .local v4, "snapshot":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    if-nez v4, :cond_3

    goto :goto_0

    .line 776
    :cond_3
    iput-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->nextSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    .line 777
    monitor-exit v0

    return v1

    .line 779
    .end local v2    # "entry":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Entry;
    .end local v4    # "snapshot":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    :cond_4
    monitor-exit v0

    .line 781
    return v3

    .line 779
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public next()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;
    .locals 2

    .line 786
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->nextSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->removeSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    .line 788
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->nextSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    .line 789
    return-object v0

    .line 786
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 753
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->next()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 794
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->removeSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    if-eqz v0, :cond_0

    .line 796
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->this$0:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;->access$000(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->removeSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    .line 802
    throw v0

    .line 797
    :catch_0
    move-exception v0

    .line 801
    :goto_0
    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$3;->removeSnapshot:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/DiskLruCache$Snapshot;

    .line 802
    nop

    .line 803
    return-void

    .line 794
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
