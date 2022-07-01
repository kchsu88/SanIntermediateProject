.class final Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;
.super Ljava/lang/Object;
.source "BitmapPreFillRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;,
        Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;
    }
.end annotation


# static fields
.field static final BACKOFF_RATIO:I = 0x4

.field private static final DEFAULT_CLOCK:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field static final INITIAL_BACKOFF_MS:J = 0x28L

.field static final MAX_BACKOFF_MS:J

.field static final MAX_DURATION_MS:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "PreFillRunner"


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final clock:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

.field private currentDelay:J

.field private final handler:Lccsanandroid/os/Handler;

.field private isCancelled:Z

.field private final memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final seenTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;",
            ">;"
        }
    .end annotation
.end field

.field private final toPrefill:Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;)V
    .locals 6
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "memoryCache"    # Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p3, "allocationOrder"    # Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 67
    sget-object v4, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->DEFAULT_CLOCK:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    new-instance v5, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Lccsanandroid/os/Handler;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;Lccsanandroid/os/Handler;)V
    .locals 2
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "memoryCache"    # Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p3, "allocationOrder"    # Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;
    .param p4, "clock"    # Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;
    .param p5, "handler"    # Lccsanandroid/os/Handler;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    .line 63
    const-wide/16 v0, 0x28

    iput-wide v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 73
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 74
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 75
    iput-object p3, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;

    .line 76
    iput-object p4, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    .line 77
    iput-object p5, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Lccsanandroid/os/Handler;

    .line 78
    return-void
.end method

.method private addToBitmapPool(Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;Lccsanandroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "toAllocate"    # Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    .param p2, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 123
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->seenTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, "fromPool":Lccsanandroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v1, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Lccsanandroid/graphics/Bitmap;)Z

    .line 131
    .end local v0    # "fromPool":Lccsanandroid/graphics/Bitmap;
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Lccsanandroid/graphics/Bitmap;)Z

    .line 132
    return-void
.end method

.method private allocate()Z
    .locals 7

    .line 89
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v0

    .line 90
    .local v0, "start":J
    :goto_0
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0, v1}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isGcDetected(J)Z

    move-result v2

    if-nez v2, :cond_2

    .line 91
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;->remove()Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v2

    .line 92
    .local v2, "toAllocate":Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v3

    .line 97
    .local v3, "bitmap":Lccsanandroid/graphics/Bitmap;
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getFreeMemoryCacheBytes()I

    move-result v4

    invoke-static {v3}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 98
    iget-object v4, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    new-instance v5, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$UniqueKey;-><init>(Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$1;)V

    iget-object v6, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v3, v6}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;

    goto :goto_1

    .line 100
    :cond_0
    invoke-direct {p0, v2, v3}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->addToBitmapPool(Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;Lccsanandroid/graphics/Bitmap;)V

    .line 103
    :goto_1
    const/4 v4, 0x3

    const-string v5, "PreFillRunner"

    invoke-static {v5, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allocated ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .end local v2    # "toAllocate":Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    .end local v3    # "bitmap":Lccsanandroid/graphics/Bitmap;
    :cond_1
    goto/16 :goto_0

    .line 109
    :cond_2
    iget-boolean v2, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->toPrefill:Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private getFreeMemoryCacheBytes()I
    .locals 2

    .line 117
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()I

    move-result v0

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getNextDelay()J
    .locals 6

    .line 142
    iget-wide v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 143
    .local v0, "result":J
    iget-wide v2, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    const-wide/16 v4, 0x4

    mul-long v2, v2, v4

    sget-wide v4, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->MAX_BACKOFF_MS:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->currentDelay:J

    .line 144
    return-wide v0
.end method

.method private isGcDetected(J)Z
    .locals 5
    .param p1, "startTimeMs"    # J

    .line 113
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->clock:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner$Clock;->now()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x20

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->isCancelled:Z

    .line 82
    return-void
.end method

.method public run()V
    .locals 3

    .line 136
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->allocate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->handler:Lccsanandroid/os/Handler;

    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->getNextDelay()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 139
    :cond_0
    return-void
.end method
