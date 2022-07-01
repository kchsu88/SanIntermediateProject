.class public Lccsancom/vungle/warren/downloader/CleverCache;
.super Ljava/lang/Object;
.source "CleverCache.java"

# interfaces
.implements Lccsancom/vungle/warren/downloader/DownloaderCache;


# static fields
.field static final ASSETS_DIR:Ljava/lang/String; = "assets"

.field static final CACHE_META:Ljava/lang/String; = "meta"

.field public static final CACHE_TOUCH_JOURNAL:Ljava/lang/String; = "cache_touch_timestamp"

.field public static final CC_DIR:Ljava/lang/String; = "clever_cache"

.field private static final META_POSTFIX_EXT:Ljava/lang/String; = ".vng_meta"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

.field private final cacheTouchTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final expirationAge:J

.field private final policy:Lccsancom/vungle/warren/downloader/CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/vungle/warren/downloader/CachePolicy<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeProvider:Lccsancom/vungle/warren/SizeProvider;

.field private trackedFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lccsancom/vungle/warren/downloader/CleverCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsancom/vungle/warren/persistence/CacheManager;Lccsancom/vungle/warren/downloader/CachePolicy;Lccsancom/vungle/warren/SizeProvider;J)V
    .locals 2
    .param p1, "cacheManager"    # Lccsancom/vungle/warren/persistence/CacheManager;
    .param p3, "sizeProvider"    # Lccsancom/vungle/warren/SizeProvider;
    .param p4, "expirationAge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/vungle/warren/persistence/CacheManager;",
            "Lccsancom/vungle/warren/downloader/CachePolicy<",
            "Ljava/io/File;",
            ">;",
            "Lccsancom/vungle/warren/SizeProvider;",
            "J)V"
        }
    .end annotation

    .line 50
    .local p2, "cachePolicy":Lccsancom/vungle/warren/downloader/CachePolicy;, "Lccsancom/vungle/warren/downloader/CachePolicy<Ljava/io/File;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    .line 45
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->trackedFiles:Ljava/util/Map;

    .line 51
    iput-object p1, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    .line 52
    iput-object p2, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    .line 53
    iput-object p3, p0, Lccsancom/vungle/warren/downloader/CleverCache;->sizeProvider:Lccsancom/vungle/warren/SizeProvider;

    .line 54
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->expirationAge:J

    .line 55
    return-void
.end method

.method private declared-synchronized expirationCleanup()V
    .locals 12

    monitor-enter p0

    .line 233
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsancom/vungle/warren/downloader/CleverCache;->expirationAge:J

    sub-long/2addr v0, v2

    .line 234
    .local v0, "before":J
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 236
    .local v2, "files":[Ljava/io/File;
    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 238
    .local v3, "current":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    if-eqz v2, :cond_5

    array-length v4, v2

    if-lez v4, :cond_5

    .line 239
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 241
    .local v6, "file":Ljava/io/File;
    invoke-virtual {p0, v6}, Lccsancom/vungle/warren/downloader/CleverCache;->getCacheUpdateTimestamp(Ljava/io/File;)J

    move-result-wide v7

    .line 243
    .local v7, "savedTime":J
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 245
    invoke-direct {p0, v6}, Lccsancom/vungle/warren/downloader/CleverCache;->isProtected(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 246
    goto :goto_1

    .line 248
    :cond_0
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    cmp-long v9, v7, v0

    if-lez v9, :cond_1

    .line 249
    goto :goto_1

    .line 251
    :cond_1
    invoke-virtual {p0, v6}, Lccsancom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 252
    iget-object v9, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-object v9, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v9, v6}, Lccsancom/vungle/warren/downloader/CachePolicy;->remove(Ljava/lang/Object;)V

    .line 256
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :cond_2
    sget-object v9, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Deleted expired file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "savedTime":J
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 260
    .local v5, "file":Ljava/io/File;
    iget-object v6, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    nop

    .end local v5    # "file":Ljava/io/File;
    goto :goto_2

    .line 263
    :cond_4
    iget-object v4, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v4}, Lccsancom/vungle/warren/downloader/CachePolicy;->save()V

    .line 264
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->saveTouchTimestamps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_5
    monitor-exit p0

    return-void

    .line 232
    .end local v0    # "before":J
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "current":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method private getCacheDir()Ljava/io/File;
    .locals 3

    .line 397
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheManager:Lccsancom/vungle/warren/persistence/CacheManager;

    invoke-virtual {v1}, Lccsancom/vungle/warren/persistence/CacheManager;->getCache()Ljava/io/File;

    move-result-object v1

    const-string v2, "clever_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 398
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 399
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 401
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 404
    :cond_1
    return-object v0
.end method

.method private getTouchTimestampsFile()Ljava/io/File;
    .locals 3

    .line 393
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cache_touch_timestamp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private integrityCleanup(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p1, "existingFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getMetaDir()Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "metaDir":Ljava/io/File;
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 218
    .local v1, "dirFiles":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    .local v2, "nonTrackedByPolicy":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 222
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 225
    .local v4, "file":Ljava/io/File;
    invoke-virtual {p0, v4}, Lccsancom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    .line 226
    sget-object v5, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted non tracked file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v4    # "file":Ljava/io/File;
    goto :goto_0

    .line 229
    .end local v2    # "nonTrackedByPolicy":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :cond_0
    return-void
.end method

.method private isProtected(Ljava/io/File;)Z
    .locals 4
    .param p1, "candidate"    # Ljava/io/File;

    .line 203
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->trackedFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    .local v0, "trackedCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 206
    sget-object v1, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File is tracked and protected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const/4 v1, 0x1

    return v1

    .line 210
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private loadTouchTimestamps()V
    .locals 4

    .line 372
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getTouchTimestampsFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->readSerializable(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 373
    .local v0, "ser":Ljava/io/Serializable;
    instance-of v1, v0, Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 374
    return-void

    .line 377
    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    .line 378
    .local v1, "oldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/io/File;Ljava/lang/Long;>;"
    iget-object v2, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .end local v1    # "oldMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/io/File;Ljava/lang/Long;>;"
    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "ex":Ljava/lang/ClassCastException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 381
    const-string v3, "Error %1$s occured; old map is not File -> Long"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 380
    const-string v3, "CleverCache#loadTouchTimestamps; loadAd sequence"

    invoke-static {v3, v2}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getTouchTimestampsFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 385
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :goto_0
    return-void
.end method

.method private saveTouchTimestamps()V
    .locals 2

    .line 388
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 389
    .local v0, "copy":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/io/File;Ljava/lang/Long;>;"
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getTouchTimestampsFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/vungle/warren/utility/FileUtility;->writeSerializable(Ljava/io/File;Ljava/io/Serializable;)V

    .line 390
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 5

    monitor-enter p0

    .line 347
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/CachePolicy;->getOrderedCacheItems()Ljava/util/List;

    move-result-object v0

    .line 348
    .local v0, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/4 v1, 0x0

    .line 350
    .local v1, "deleteCount":I
    invoke-direct {p0, v0}, Lccsancom/vungle/warren/downloader/CleverCache;->integrityCleanup(Ljava/util/List;)V

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 353
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-direct {p0, v3}, Lccsancom/vungle/warren/downloader/CleverCache;->isProtected(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    goto :goto_0

    .line 356
    :cond_1
    invoke-virtual {p0, v3}, Lccsancom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    add-int/lit8 v1, v1, 0x1

    .line 358
    iget-object v4, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v4, v3}, Lccsancom/vungle/warren/downloader/CachePolicy;->remove(Ljava/lang/Object;)V

    .line 359
    iget-object v4, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .end local v3    # "file":Ljava/io/File;
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :cond_2
    goto :goto_0

    .line 364
    :cond_3
    if-lez v1, :cond_4

    .line 365
    iget-object v2, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v2}, Lccsancom/vungle/warren/downloader/CachePolicy;->save()V

    .line 366
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->saveTouchTimestamps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :cond_4
    monitor-exit p0

    return-void

    .line 346
    .end local v0    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v1    # "deleteCount":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized deleteAndRemove(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    monitor-enter p0

    .line 282
    :try_start_0
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0, p1}, Lccsancom/vungle/warren/downloader/CachePolicy;->remove(Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/CachePolicy;->save()V

    .line 287
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->saveTouchTimestamps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 291
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 281
    .end local p1    # "file":Ljava/io/File;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteContents(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    monitor-enter p0

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, "fileDeleted":Z
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V

    .line 299
    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/downloader/CleverCache;->getMetaFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 301
    .local v2, "meta":Ljava/io/File;
    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return v1

    .line 295
    .end local v0    # "fileDeleted":Z
    .end local v2    # "meta":Ljava/io/File;
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    .end local p1    # "file":Ljava/io/File;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 303
    .restart local v0    # "fileDeleted":Z
    .restart local p1    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 304
    .local v2, "ex":Ljava/io/IOException;
    :try_start_1
    const-string v3, "CleverCache#deleteContents; loadAd sequence"

    const-string v4, "Cannot delete %1$s for file %2$s; Error %3$s occured"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 306
    if-eqz v0, :cond_0

    const-string v6, "meta"

    goto :goto_0

    :cond_0
    const-string v6, "file"

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object v2, v5, v1

    .line 305
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-static {v3, v1}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    monitor-exit p0

    return v7

    .line 295
    .end local v0    # "fileDeleted":Z
    .end local v2    # "ex":Ljava/io/IOException;
    .end local p1    # "file":Ljava/io/File;
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAssetsDir()Ljava/io/File;
    .locals 3

    monitor-enter p0

    .line 111
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "assets"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .local v0, "assetsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 117
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    monitor-exit p0

    return-object v0

    .line 110
    .end local v0    # "assetsDir":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCacheUpdateTimestamp(Ljava/io/File;)J
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 271
    .local v0, "lastKnown":Ljava/lang/Long;
    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    goto :goto_0

    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v1

    .line 269
    .end local v0    # "lastKnown":Ljava/lang/Long;
    .end local p1    # "file":Ljava/io/File;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 315
    :try_start_0
    const-string v0, "SHA-256"

    .line 316
    .local v0, "algorithm":Ljava/lang/String;
    const-string v1, "UTF-8"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .local v1, "charset":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 319
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 320
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 322
    .local v3, "digest":[B
    const/16 v4, 0xa

    invoke-static {v3, v4}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 325
    .local v4, "name":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 326
    .local v5, "file":Ljava/io/File;
    iget-object v6, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    const-wide/16 v7, 0x0

    invoke-interface {v6, v5, v7, v8}, Lccsancom/vungle/warren/downloader/CachePolicy;->put(Ljava/lang/Object;J)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    monitor-exit p0

    return-object v5

    .line 332
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v3    # "digest":[B
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "file":Ljava/io/File;
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :catch_0
    move-exception v2

    .line 333
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_2
    const-string v3, "CleverCache#getFile; loadAd sequence"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot get instance of MessageDigest with algorithm "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 328
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 329
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v3, "CleverCache#getFile; loadAd sequence"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot encode url with charset = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsancom/vungle/warren/VungleLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v1    # "charset":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    .end local p1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMetaDir()Ljava/io/File;
    .locals 3

    monitor-enter p0

    .line 125
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "meta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    invoke-static {v0}, Lccsancom/vungle/warren/utility/FileUtility;->deleteAndLogIfFailed(Ljava/io/File;)V

    .line 131
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    monitor-exit p0

    return-object v0

    .line 124
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMetaFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p1, "cacheFile"    # Ljava/io/File;

    monitor-enter p0

    .line 342
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getMetaDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".vng_meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 342
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    .end local p1    # "cacheFile":Ljava/io/File;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/CachePolicy;->load()V

    .line 60
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->loadTouchTimestamps()V

    .line 61
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->expirationCleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 58
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCacheHit(Ljava/io/File;J)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "score"    # J

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/vungle/warren/downloader/CachePolicy;->put(Ljava/lang/Object;J)V

    .line 101
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v0}, Lccsancom/vungle/warren/downloader/CachePolicy;->save()V

    .line 103
    sget-object v0, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache hit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cache touch updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->purge()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 99
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "score":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized purge()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->sizeProvider:Lccsancom/vungle/warren/SizeProvider;

    invoke-interface {v0}, Lccsancom/vungle/warren/SizeProvider;->getTargetSize()J

    move-result-wide v0

    .line 141
    .local v0, "target":J
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lccsancom/vungle/warren/utility/FileUtility;->size(Ljava/io/File;)J

    move-result-wide v2

    .line 143
    .local v2, "totalSize":J
    sget-object v4, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Purge check current cache total: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " target: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    cmp-long v5, v2, v0

    if-gez v5, :cond_0

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 148
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :cond_0
    :try_start_1
    const-string v5, "Purge start"

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v5, "deleted":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v6, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v6}, Lccsancom/vungle/warren/downloader/CachePolicy;->getOrderedCacheItems()Ljava/util/List;

    move-result-object v6

    .line 153
    .local v6, "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, v6}, Lccsancom/vungle/warren/downloader/CleverCache;->integrityCleanup(Ljava/util/List;)V

    .line 155
    invoke-virtual {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->getAssetsDir()Ljava/io/File;

    move-result-object v7

    invoke-static {v7}, Lccsancom/vungle/warren/utility/FileUtility;->size(Ljava/io/File;)J

    move-result-wide v7

    move-wide v2, v7

    .line 157
    cmp-long v7, v2, v0

    if-gez v7, :cond_1

    .line 158
    const-string v7, "Cleaned up not tracked files, size is ok"

    invoke-static {v4, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v4

    .line 163
    :cond_1
    :try_start_2
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 165
    .local v7, "candidate":Ljava/io/File;
    if-nez v7, :cond_2

    .line 166
    goto :goto_0

    .line 168
    :cond_2
    invoke-direct {p0, v7}, Lccsancom/vungle/warren/downloader/CleverCache;->isProtected(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 172
    .local v8, "fileSize":J
    invoke-virtual {p0, v7}, Lccsancom/vungle/warren/downloader/CleverCache;->deleteContents(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 173
    sub-long/2addr v2, v8

    .line 174
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v10, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleted file: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " total: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " target: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v11, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v11, v7}, Lccsancom/vungle/warren/downloader/CachePolicy;->remove(Ljava/lang/Object;)V

    .line 180
    iget-object v11, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    cmp-long v11, v2, v0

    if-gez v11, :cond_4

    .line 183
    iget-object v11, p0, Lccsancom/vungle/warren/downloader/CleverCache;->sizeProvider:Lccsancom/vungle/warren/SizeProvider;

    invoke-interface {v11}, Lccsancom/vungle/warren/SizeProvider;->getTargetSize()J

    move-result-wide v11

    move-wide v0, v11

    .line 184
    cmp-long v11, v2, v0

    if-gez v11, :cond_4

    .line 185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cleaned enough total: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " target: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    goto :goto_1

    .line 191
    .end local v7    # "candidate":Ljava/io/File;
    :cond_4
    goto/16 :goto_0

    .line 193
    .end local v8    # "fileSize":J
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 194
    iget-object v4, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v4}, Lccsancom/vungle/warren/downloader/CachePolicy;->save()V

    .line 195
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->saveTouchTimestamps()V

    .line 198
    :cond_6
    sget-object v4, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    const-string v7, "Purge complete"

    invoke-static {v4, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    monitor-exit p0

    return-object v5

    .line 139
    .end local v0    # "target":J
    .end local v2    # "totalSize":J
    .end local v5    # "deleted":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v6    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized setCacheLastUpdateTimestamp(Ljava/io/File;J)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "timestamp"    # J

    monitor-enter p0

    .line 276
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->cacheTouchTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-direct {p0}, Lccsancom/vungle/warren/downloader/CleverCache;->saveTouchTimestamps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 275
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "timestamp":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startTracking(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->trackedFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    .local v0, "count":Ljava/lang/Integer;
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    const-wide/16 v2, 0x0

    invoke-interface {v1, p1, v2, v3}, Lccsancom/vungle/warren/downloader/CachePolicy;->put(Ljava/lang/Object;J)V

    .line 70
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/CleverCache;->policy:Lccsancom/vungle/warren/downloader/CachePolicy;

    invoke-interface {v1}, Lccsancom/vungle/warren/downloader/CachePolicy;->save()V

    .line 72
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 73
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 77
    :goto_1
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/CleverCache;->trackedFiles:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v1, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start tracking file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ref count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 65
    .end local v0    # "count":Ljava/lang/Integer;
    .end local p1    # "file":Ljava/io/File;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopTracking(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lccsancom/vungle/warren/downloader/CleverCache;->trackedFiles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    .local v0, "count":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 86
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/CleverCache;->trackedFiles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 90
    .end local p0    # "this":Lccsancom/vungle/warren/downloader/CleverCache;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_1

    .line 93
    iget-object v1, p0, Lccsancom/vungle/warren/downloader/CleverCache;->trackedFiles:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_1
    sget-object v1, Lccsancom/vungle/warren/downloader/CleverCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop tracking file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ref count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 83
    .end local v0    # "count":Ljava/lang/Integer;
    .end local p1    # "file":Ljava/io/File;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
