.class public Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;,
        Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$ThrowingBitmapTracker;,
        Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Lccsanandroid/graphics/Bitmap$Config;

.field private static final TAG:Ljava/lang/String; = "LruBitmapPool"


# instance fields
.field private final allowedConfigs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsanandroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private currentSize:I

.field private evictions:I

.field private hits:I

.field private final initialMaxSize:I

.field private maxSize:I

.field private misses:I

.field private puts:I

.field private final strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

.field private final tracker:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    sput-object v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Lccsanandroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxSize"    # I

    .line 52
    invoke-static {}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-result-object v0

    invoke-static {}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultAllowedConfigs()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(ILccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    .line 53
    return-void
.end method

.method constructor <init>(ILccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V
    .locals 2
    .param p1, "maxSize"    # I
    .param p2, "strategy"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;",
            "Ljava/util/Set<",
            "Lccsanandroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p3, "allowedConfigs":Ljava/util/Set;, "Ljava/util/Set<Lccsanandroid/graphics/Bitmap$Config;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->initialMaxSize:I

    .line 40
    iput p1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    .line 41
    iput-object p2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    .line 42
    iput-object p3, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    .line 43
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$NullBitmapTracker;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$1;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    .line 44
    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 1
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lccsanandroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "allowedConfigs":Ljava/util/Set;, "Ljava/util/Set<Lccsanandroid/graphics/Bitmap$Config;>;"
    invoke-static {}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDefaultStrategy()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(ILccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;Ljava/util/Set;)V

    .line 64
    return-void
.end method

.method private dump()V
    .locals 2

    .line 198
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    .line 201
    :cond_0
    return-void
.end method

.method private dumpUnchecked()V
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LruBitmapPool"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method private evict()V
    .locals 1

    .line 109
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    .line 110
    return-void
.end method

.method private static getDefaultAllowedConfigs()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lccsanandroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 225
    .local v0, "configs":Ljava/util/Set;, "Ljava/util/Set<Lccsanandroid/graphics/Bitmap$Config;>;"
    invoke-static {}, Lccsanandroid/graphics/Bitmap$Config;->values()[Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 227
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private static getDefaultStrategy()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    .locals 2

    .line 215
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 216
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;-><init>()V

    .local v0, "strategy":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    goto :goto_0

    .line 218
    .end local v0    # "strategy":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    :cond_0
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;-><init>()V

    .line 220
    .restart local v0    # "strategy":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;
    :goto_0
    return-object v0
.end method

.method private declared-synchronized trimToSize(I)V
    .locals 4
    .param p1, "size"    # I

    monitor-enter p0

    .line 174
    :goto_0
    :try_start_0
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    if-le v0, p1, :cond_3

    .line 175
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->removeLast()Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, "removed":Lccsanandroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 178
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "LruBitmapPool"

    const-string v2, "Size mismatch, resetting"

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dumpUnchecked()V

    .line 182
    .end local p0    # "this":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 186
    :cond_1
    :try_start_1
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v1, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Lccsanandroid/graphics/Bitmap;)V

    .line 187
    iget v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    .line 188
    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 189
    iget v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evictions:I

    .line 190
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_2
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v0    # "removed":Lccsanandroid/graphics/Bitmap;
    goto :goto_0

    .line 195
    :cond_3
    monitor-exit p0

    return-void

    .line 173
    .end local p1    # "size":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public clearMemory()V
    .locals 2

    .line 154
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const-string v1, "clearMemory"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    .line 158
    return-void
.end method

.method public declared-synchronized get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->getDirty(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "result":Lccsanandroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 119
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local p0    # "this":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 113
    .end local v0    # "result":Lccsanandroid/graphics/Bitmap;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "config":Lccsanandroid/graphics/Bitmap$Config;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDirty(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    if-eqz p3, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    sget-object v1, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->DEFAULT_CONFIG:Lccsanandroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {v0, p1, p2, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "result":Lccsanandroid/graphics/Bitmap;
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 132
    const-string v2, "LruBitmapPool"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const-string v2, "LruBitmapPool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Missing bitmap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v4, p1, p2, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local p0    # "this":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    :cond_1
    iget v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    add-int/2addr v2, v1

    iput v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->misses:I

    goto :goto_1

    .line 137
    :cond_2
    iget v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    add-int/2addr v2, v1

    iput v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->hits:I

    .line 138
    iget v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    .line 139
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v2, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->remove(Lccsanandroid/graphics/Bitmap;)V

    .line 140
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_3

    .line 141
    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 144
    :cond_3
    :goto_1
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v3, p1, p2, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(IILccsanandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_4
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-object v0

    .line 129
    .end local v0    # "result":Lccsanandroid/graphics/Bitmap;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "config":Lccsanandroid/graphics/Bitmap$Config;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMaxSize()I
    .locals 1

    .line 68
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    return v0
.end method

.method public declared-synchronized put(Lccsanandroid/graphics/Bitmap;)Z
    .locals 5
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    monitor-enter p0

    .line 79
    if-eqz p1, :cond_4

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    iget v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    if-gt v0, v2, :cond_2

    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->getSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    .line 93
    .local v0, "size":I
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->put(Lccsanandroid/graphics/Bitmap;)V

    .line 94
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->tracker:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;

    invoke-interface {v2, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool$BitmapTracker;->add(Lccsanandroid/graphics/Bitmap;)V

    .line 96
    iget v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->puts:I

    .line 97
    iget v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    add-int/2addr v2, v0

    iput v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->currentSize:I

    .line 99
    const-string v2, "LruBitmapPool"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Put bitmap in pool="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v4, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local p0    # "this":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    :cond_1
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->dump()V

    .line 104
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return v3

    .line 83
    .end local v0    # "size":I
    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "LruBitmapPool"

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    const-string v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject bitmap from pool, bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->strategy:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;

    invoke-interface {v2, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruPoolStrategy;->logBitmap(Lccsanandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", is mutable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", is allowed config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->allowedConfigs:Ljava/util/Set;

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :cond_3
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 78
    .end local p1    # "bitmap":Lccsanandroid/graphics/Bitmap;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 80
    .restart local p1    # "bitmap":Lccsanandroid/graphics/Bitmap;
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Bitmap must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .end local p1    # "bitmap":Lccsanandroid/graphics/Bitmap;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSizeMultiplier(F)V
    .locals 1
    .param p1, "sizeMultiplier"    # F

    monitor-enter p0

    .line 73
    :try_start_0
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->initialMaxSize:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    .line 74
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->evict()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 72
    .end local p0    # "this":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;
    .end local p1    # "sizeMultiplier":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public trimMemory(I)V
    .locals 3
    .param p1, "level"    # I

    .line 163
    const-string v0, "LruBitmapPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trimMemory, level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->clearMemory()V

    goto :goto_0

    .line 168
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    .line 169
    iget v0, p0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->maxSize:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;->trimToSize(I)V

    .line 171
    :cond_2
    :goto_0
    return-void
.end method
