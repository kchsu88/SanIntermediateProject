.class Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;
.super Ljava/lang/Object;
.source "DiskCacheWriteLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteLockPool"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;

    .line 68
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;-><init>()V

    return-void
.end method


# virtual methods
.method obtain()Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    .locals 4

    .line 74
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    monitor-enter v0

    .line 75
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .local v2, "result":Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    if-nez v2, :cond_0

    .line 78
    new-instance v0, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;-><init>(Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$1;)V

    move-object v2, v0

    .line 80
    :cond_0
    return-object v2

    .line 76
    .end local v2    # "result":Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    .restart local v2    # "result":Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :catchall_1
    move-exception v1

    goto :goto_0
.end method

.method offer(Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;)V
    .locals 3
    .param p1, "writeLock"    # Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLock;

    .line 84
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/cache/DiskCacheWriteLocker$WriteLockPool;->pool:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
