.class public Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;,
        Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;
    }
.end annotation


# static fields
.field static final BITMAP_POOL_TARGET_SCREENS:I = 0x4

.field static final BYTES_PER_ARGB_8888_PIXEL:I = 0x4

.field static final LOW_MEMORY_MAX_SIZE_MULTIPLIER:F = 0.33f

.field static final MAX_SIZE_MULTIPLIER:F = 0.4f

.field static final MEMORY_CACHE_TARGET_SCREENS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MemorySizeCalculator"


# instance fields
.field private final bitmapPoolSize:I

.field private final context:Lccsanandroid/content/Context;

.field private final memoryCacheSize:I


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 35
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/ActivityManager;

    new-instance v1, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$DisplayMetricsScreenDimensions;-><init>(Lccsanandroid/util/DisplayMetrics;)V

    invoke-direct {p0, p1, v0, v1}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;-><init>(Lccsanandroid/content/Context;Lccsanandroid/app/ActivityManager;Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V

    .line 38
    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/app/ActivityManager;Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;)V
    .locals 7
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "activityManager"    # Lccsanandroid/app/ActivityManager;
    .param p3, "screenDimensions"    # Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Lccsanandroid/content/Context;

    .line 43
    invoke-static {p2}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->getMaxSize(Lccsanandroid/app/ActivityManager;)I

    move-result v0

    .line 45
    .local v0, "maxSize":I
    invoke-interface {p3}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getWidthPixels()I

    move-result v1

    invoke-interface {p3}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator$ScreenDimensions;->getHeightPixels()I

    move-result v2

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x4

    .line 48
    .local v1, "screenSize":I
    mul-int/lit8 v2, v1, 0x4

    .line 49
    .local v2, "targetPoolSize":I
    mul-int/lit8 v3, v1, 0x2

    .line 51
    .local v3, "targetMemoryCacheSize":I
    add-int v4, v3, v2

    if-gt v4, v0, :cond_0

    .line 52
    iput v3, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 53
    iput v2, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    goto :goto_0

    .line 55
    :cond_0
    int-to-float v4, v0

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 56
    .local v4, "part":I
    mul-int/lit8 v5, v4, 0x2

    iput v5, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    .line 57
    mul-int/lit8 v5, v4, 0x4

    iput v5, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    .line 60
    .end local v4    # "part":I
    :goto_0
    const/4 v4, 0x3

    const-string v5, "MemorySizeCalculator"

    invoke-static {v5, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calculated memory cache size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    invoke-direct {p0, v6}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " pool size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    invoke-direct {p0, v6}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " memory class limited? "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, v3, v2

    if-le v6, v0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " max size: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->toMb(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " memoryClass: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsanandroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isLowMemoryDevice: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Lccsanandroid/app/ActivityManager;)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_2
    return-void
.end method

.method private static getMaxSize(Lccsanandroid/app/ActivityManager;)I
    .locals 4
    .param p0, "activityManager"    # Lccsanandroid/app/ActivityManager;

    .line 83
    invoke-virtual {p0}, Lccsanandroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    mul-int/lit16 v0, v0, 0x400

    .line 84
    .local v0, "memoryClassBytes":I
    invoke-static {p0}, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->isLowMemoryDevice(Lccsanandroid/app/ActivityManager;)Z

    move-result v1

    .line 85
    .local v1, "isLowMemoryDevice":Z
    int-to-float v2, v0

    if-eqz v1, :cond_0

    const v3, 0x3ea8f5c3    # 0.33f

    goto :goto_0

    :cond_0
    const v3, 0x3ecccccd    # 0.4f

    :goto_0
    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method private static isLowMemoryDevice(Lccsanandroid/app/ActivityManager;)Z
    .locals 2
    .param p0, "activityManager"    # Lccsanandroid/app/ActivityManager;

    .line 95
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lccsanandroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    return v0

    .line 98
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private toMb(I)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # I

    .line 90
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->context:Lccsanandroid/content/Context;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lccsanandroid/text/format/Formatter;->formatFileSize(Lccsanandroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBitmapPoolSize()I
    .locals 1

    .line 79
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->bitmapPoolSize:I

    return v0
.end method

.method public getMemoryCacheSize()I
    .locals 1

    .line 72
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->memoryCacheSize:I

    return v0
.end method
