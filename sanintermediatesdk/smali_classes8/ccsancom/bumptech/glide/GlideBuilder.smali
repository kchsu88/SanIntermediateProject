.class public Lccsancom/bumptech/glide/GlideBuilder;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final context:Lccsanandroid/content/Context;

.field private decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

.field private diskCacheFactory:Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field private diskCacheService:Ljava/util/concurrent/ExecutorService;

.field private engine:Lccsancom/bumptech/glide/load/engine/Engine;

.field private memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

.field private sourceService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/GlideBuilder;->context:Lccsanandroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method createGlide()Lccsancom/bumptech/glide/Glide;
    .locals 8

    .line 169
    iget-object v0, p0, Lccsancom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 171
    .local v0, "cores":I
    new-instance v2, Lccsancom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v2, v0}, Lccsancom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v2, p0, Lccsancom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 173
    .end local v0    # "cores":I
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lccsancom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/engine/executor/FifoPriorityThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lccsancom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 177
    :cond_1
    new-instance v0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    iget-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->context:Lccsanandroid/content/Context;

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Lccsanandroid/content/Context;)V

    .line 178
    .local v0, "calculator":Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
    iget-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez v1, :cond_3

    .line 179
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 180
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getBitmapPoolSize()I

    move-result v1

    .line 181
    .local v1, "size":I
    new-instance v2, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    invoke-direct {v2, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(I)V

    iput-object v2, p0, Lccsancom/bumptech/glide/GlideBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 182
    .end local v1    # "size":I
    goto :goto_0

    .line 183
    :cond_2
    new-instance v1, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;

    invoke-direct {v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPoolAdapter;-><init>()V

    iput-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 187
    :cond_3
    :goto_0
    iget-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    if-nez v1, :cond_4

    .line 188
    new-instance v1, Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMemoryCacheSize()I

    move-result v2

    invoke-direct {v1, v2}, Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;-><init>(I)V

    iput-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 191
    :cond_4
    iget-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    if-nez v1, :cond_5

    .line 192
    new-instance v1, Lccsancom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;

    iget-object v2, p0, Lccsancom/bumptech/glide/GlideBuilder;->context:Lccsanandroid/content/Context;

    invoke-direct {v1, v2}, Lccsancom/bumptech/glide/load/engine/cache/InternalCacheDiskCacheFactory;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 195
    :cond_5
    iget-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->engine:Lccsancom/bumptech/glide/load/engine/Engine;

    if-nez v1, :cond_6

    .line 196
    new-instance v1, Lccsancom/bumptech/glide/load/engine/Engine;

    iget-object v2, p0, Lccsancom/bumptech/glide/GlideBuilder;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v3, p0, Lccsancom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    iget-object v4, p0, Lccsancom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lccsancom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2, v3, v4, v5}, Lccsancom/bumptech/glide/load/engine/Engine;-><init>(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->engine:Lccsancom/bumptech/glide/load/engine/Engine;

    .line 199
    :cond_6
    iget-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    if-nez v1, :cond_7

    .line 200
    sget-object v1, Lccsancom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lccsancom/bumptech/glide/load/DecodeFormat;

    iput-object v1, p0, Lccsancom/bumptech/glide/GlideBuilder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 203
    :cond_7
    new-instance v1, Lccsancom/bumptech/glide/Glide;

    iget-object v3, p0, Lccsancom/bumptech/glide/GlideBuilder;->engine:Lccsancom/bumptech/glide/load/engine/Engine;

    iget-object v4, p0, Lccsancom/bumptech/glide/GlideBuilder;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    iget-object v5, p0, Lccsancom/bumptech/glide/GlideBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v6, p0, Lccsancom/bumptech/glide/GlideBuilder;->context:Lccsanandroid/content/Context;

    iget-object v7, p0, Lccsancom/bumptech/glide/GlideBuilder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lccsancom/bumptech/glide/Glide;-><init>(Lccsancom/bumptech/glide/load/engine/Engine;Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    return-object v1
.end method

.method public setBitmapPool(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lccsancom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 46
    iput-object p1, p0, Lccsancom/bumptech/glide/GlideBuilder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 47
    return-object p0
.end method

.method public setDecodeFormat(Lccsancom/bumptech/glide/load/DecodeFormat;)Lccsancom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 158
    iput-object p1, p0, Lccsancom/bumptech/glide/GlideBuilder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 159
    return-object p0
.end method

.method public setDiskCache(Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lccsancom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "diskCacheFactory"    # Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 91
    iput-object p1, p0, Lccsancom/bumptech/glide/GlideBuilder;->diskCacheFactory:Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    .line 92
    return-object p0
.end method

.method public setDiskCache(Lccsancom/bumptech/glide/load/engine/cache/DiskCache;)Lccsancom/bumptech/glide/GlideBuilder;
    .locals 1
    .param p1, "diskCache"    # Lccsancom/bumptech/glide/load/engine/cache/DiskCache;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    new-instance v0, Lccsancom/bumptech/glide/GlideBuilder$1;

    invoke-direct {v0, p0, p1}, Lccsancom/bumptech/glide/GlideBuilder$1;-><init>(Lccsancom/bumptech/glide/GlideBuilder;Lccsancom/bumptech/glide/load/engine/cache/DiskCache;)V

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/GlideBuilder;->setDiskCache(Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lccsancom/bumptech/glide/GlideBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setDiskCacheService(Ljava/util/concurrent/ExecutorService;)Lccsancom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;

    .line 131
    iput-object p1, p0, Lccsancom/bumptech/glide/GlideBuilder;->diskCacheService:Ljava/util/concurrent/ExecutorService;

    .line 132
    return-object p0
.end method

.method setEngine(Lccsancom/bumptech/glide/load/engine/Engine;)Lccsancom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "engine"    # Lccsancom/bumptech/glide/load/engine/Engine;

    .line 164
    iput-object p1, p0, Lccsancom/bumptech/glide/GlideBuilder;->engine:Lccsancom/bumptech/glide/load/engine/Engine;

    .line 165
    return-object p0
.end method

.method public setMemoryCache(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;)Lccsancom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "memoryCache"    # Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 58
    iput-object p1, p0, Lccsancom/bumptech/glide/GlideBuilder;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 59
    return-object p0
.end method

.method public setResizeService(Ljava/util/concurrent/ExecutorService;)Lccsancom/bumptech/glide/GlideBuilder;
    .locals 0
    .param p1, "service"    # Ljava/util/concurrent/ExecutorService;

    .line 111
    iput-object p1, p0, Lccsancom/bumptech/glide/GlideBuilder;->sourceService:Ljava/util/concurrent/ExecutorService;

    .line 112
    return-object p0
.end method
