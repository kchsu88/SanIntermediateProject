.class public final Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private current:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

.field private final defaultFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

.field private final handler:Lccsanandroid/os/Handler;

.field private final memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 2
    .param p1, "memoryCache"    # Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "defaultFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Lccsanandroid/os/Handler;

    .line 29
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 30
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 31
    iput-object p3, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 32
    return-void
.end method

.method private static getSizeInBytes(Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;)I
    .locals 3
    .param p0, "size"    # Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 79
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(IILccsanandroid/graphics/Bitmap$Config;)I

    move-result v0

    return v0
.end method


# virtual methods
.method generateAllocationOrder([Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;)Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;
    .locals 12
    .param p1, "preFillSizes"    # [Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 58
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->getMaxSize()I

    move-result v0

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->getCurrentSize()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getMaxSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    .local v0, "maxSize":I
    const/4 v1, 0x0

    .line 61
    .local v1, "totalWeight":I
    move-object v2, p1

    .local v2, "arr$":[Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 62
    .local v5, "size":Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    invoke-virtual {v5}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v6

    add-int/2addr v1, v6

    .line 61
    .end local v5    # "size":Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    .end local v2    # "arr$":[Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    :cond_0
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    .line 67
    .local v2, "bytesPerWeight":F
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v3, "attributeToCount":Ljava/util/Map;, "Ljava/util/Map<Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;Ljava/lang/Integer;>;"
    move-object v4, p1

    .local v4, "arr$":[Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 69
    .local v7, "size":Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    invoke-virtual {v7}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;->getWeight()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 70
    .local v8, "bytesForSize":I
    invoke-static {v7}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->getSizeInBytes(Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;)I

    move-result v9

    .line 71
    .local v9, "bytesPerBitmap":I
    div-int v10, v8, v9

    .line 72
    .local v10, "bitmapsForSize":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v3, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .end local v7    # "size":Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    .end local v8    # "bytesForSize":I
    .end local v9    # "bytesPerBitmap":I
    .end local v10    # "bitmapsForSize":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 75
    .end local v4    # "arr$":[Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_1
    new-instance v4, Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;

    invoke-direct {v4, v3}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;-><init>(Ljava/util/Map;)V

    return-object v4
.end method

.method public varargs preFill([Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;)V
    .locals 5
    .param p1, "bitmapAttributeBuilders"    # [Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .line 36
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;->cancel()V

    .line 40
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;

    .line 41
    .local v0, "bitmapAttributes":[Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 42
    aget-object v2, p1, v1

    .line 43
    .local v2, "builder":Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_3

    .line 44
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    sget-object v4, Lccsancom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lccsancom/bumptech/glide/load/DecodeFormat;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->defaultFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    sget-object v4, Lccsancom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lccsancom/bumptech/glide/load/DecodeFormat;

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v3, Lccsanandroid/graphics/Bitmap$Config;->RGB_565:Lccsanandroid/graphics/Bitmap$Config;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v3, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    :goto_2
    invoke-virtual {v2, v3}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->setConfig(Lccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;

    .line 48
    :cond_3
    invoke-virtual {v2}, Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;->build()Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;

    move-result-object v3

    aput-object v3, v0, v1

    .line 41
    .end local v2    # "builder":Lccsancom/bumptech/glide/load/engine/prefill/PreFillType$Builder;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->generateAllocationOrder([Lccsancom/bumptech/glide/load/engine/prefill/PreFillType;)Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;

    move-result-object v1

    .line 52
    .local v1, "allocationOrder":Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;
    new-instance v2, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v4, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->memoryCache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-direct {v2, v3, v4, v1}, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/prefill/PreFillQueue;)V

    iput-object v2, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->current:Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFillRunner;

    .line 53
    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/prefill/BitmapPreFiller;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v3, v2}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method
