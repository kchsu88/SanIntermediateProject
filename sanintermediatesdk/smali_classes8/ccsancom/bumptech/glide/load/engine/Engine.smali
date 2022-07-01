.class public Lccsancom/bumptech/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/EngineJobListener;
.implements Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.implements Lccsancom/bumptech/glide/load/engine/EngineResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;,
        Lccsancom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;,
        Lccsancom/bumptech/glide/load/engine/Engine$ResourceWeakReference;,
        Lccsancom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Engine"


# instance fields
.field private final activeResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final cache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

.field private final diskCacheProvider:Lccsancom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

.field private final engineJobFactory:Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;

.field private final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/bumptech/glide/load/Key;",
            "Lccsancom/bumptech/glide/load/engine/EngineJob;",
            ">;"
        }
    .end annotation
.end field

.field private final keyFactory:Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;

.field private final resourceRecycler:Lccsancom/bumptech/glide/load/engine/ResourceRecycler;

.field private resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10
    .param p1, "memoryCache"    # Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p2, "diskCacheFactory"    # Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    .param p3, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "sourceService"    # Ljava/util/concurrent/ExecutorService;

    .line 63
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lccsancom/bumptech/glide/load/engine/Engine;-><init>(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lccsancom/bumptech/glide/load/engine/ResourceRecycler;)V

    .line 64
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;Lccsancom/bumptech/glide/load/engine/ResourceRecycler;)V
    .locals 1
    .param p1, "cache"    # Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;
    .param p2, "diskCacheFactory"    # Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    .param p3, "diskCacheService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "sourceService"    # Ljava/util/concurrent/ExecutorService;
    .param p6, "keyFactory"    # Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;
    .param p8, "engineJobFactory"    # Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;
    .param p9, "resourceRecycler"    # Lccsancom/bumptech/glide/load/engine/ResourceRecycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;",
            "Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map<",
            "Lccsancom/bumptech/glide/load/Key;",
            "Lccsancom/bumptech/glide/load/engine/EngineJob;",
            ">;",
            "Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;",
            "Ljava/util/Map<",
            "Lccsancom/bumptech/glide/load/Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;>;",
            "Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;",
            "Lccsancom/bumptech/glide/load/engine/ResourceRecycler;",
            ")V"
        }
    .end annotation

    .line 70
    .local p5, "jobs":Ljava/util/Map;, "Ljava/util/Map<Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineJob;>;"
    .local p7, "activeResources":Ljava/util/Map;, "Ljava/util/Map<Lccsancom/bumptech/glide/load/Key;Ljava/lang/ref/WeakReference<Lccsancom/bumptech/glide/load/engine/EngineResource<*>;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/Engine;->cache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    .line 72
    new-instance v0, Lccsancom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-direct {v0, p2}, Lccsancom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lccsancom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    .line 74
    if-nez p7, :cond_0

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p7, v0

    .line 77
    :cond_0
    iput-object p7, p0, Lccsancom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    .line 79
    if-nez p6, :cond_1

    .line 80
    new-instance v0, Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;-><init>()V

    move-object p6, v0

    .line 82
    :cond_1
    iput-object p6, p0, Lccsancom/bumptech/glide/load/engine/Engine;->keyFactory:Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;

    .line 84
    if-nez p5, :cond_2

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p5, v0

    .line 87
    :cond_2
    iput-object p5, p0, Lccsancom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    .line 89
    if-nez p8, :cond_3

    .line 90
    new-instance v0, Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {v0, p3, p4, p0}, Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lccsancom/bumptech/glide/load/engine/EngineJobListener;)V

    move-object p8, v0

    .line 92
    :cond_3
    iput-object p8, p0, Lccsancom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    .line 94
    if-nez p9, :cond_4

    .line 95
    new-instance v0, Lccsancom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/engine/ResourceRecycler;-><init>()V

    move-object p9, v0

    .line 97
    :cond_4
    iput-object p9, p0, Lccsancom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lccsancom/bumptech/glide/load/engine/ResourceRecycler;

    .line 99
    invoke-interface {p1, p0}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->setResourceRemovedListener(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V

    .line 100
    return-void
.end method

.method private getEngineResourceFromCache(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/EngineResource;
    .locals 3
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            ")",
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->cache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->remove(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 235
    .local v0, "cached":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    if-nez v0, :cond_0

    .line 236
    const/4 v1, 0x0

    .local v1, "result":Lccsancom/bumptech/glide/load/engine/EngineResource;
    goto :goto_0

    .line 237
    .end local v1    # "result":Lccsancom/bumptech/glide/load/engine/EngineResource;
    :cond_0
    instance-of v1, v0, Lccsancom/bumptech/glide/load/engine/EngineResource;

    if-eqz v1, :cond_1

    .line 239
    move-object v1, v0

    check-cast v1, Lccsancom/bumptech/glide/load/engine/EngineResource;

    .restart local v1    # "result":Lccsancom/bumptech/glide/load/engine/EngineResource;
    goto :goto_0

    .line 241
    .end local v1    # "result":Lccsancom/bumptech/glide/load/engine/EngineResource;
    :cond_1
    new-instance v1, Lccsancom/bumptech/glide/load/engine/EngineResource;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lccsancom/bumptech/glide/load/engine/EngineResource;-><init>(Lccsancom/bumptech/glide/load/engine/Resource;Z)V

    .line 243
    .restart local v1    # "result":Lccsancom/bumptech/glide/load/engine/EngineResource;
    :goto_0
    return-object v1
.end method

.method private getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Lccsanandroid/os/Looper;->myQueue()Lccsanandroid/os/MessageQueue;

    move-result-object v0

    .line 305
    .local v0, "queue":Lccsanandroid/os/MessageQueue;
    new-instance v1, Lccsancom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lccsancom/bumptech/glide/load/engine/Engine$RefQueueIdleHandler;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/MessageQueue;->addIdleHandler(Lccsanandroid/os/MessageQueue$IdleHandler;)V

    .line 307
    .end local v0    # "queue":Lccsanandroid/os/MessageQueue;
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private loadFromActiveResources(Lccsancom/bumptech/glide/load/Key;Z)Lccsancom/bumptech/glide/load/engine/EngineResource;
    .locals 3
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "isMemoryCacheable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            "Z)",
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 199
    if-nez p2, :cond_0

    .line 200
    const/4 v0, 0x0

    return-object v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, "active":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<*>;"
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 205
    .local v1, "activeRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lccsancom/bumptech/glide/load/engine/EngineResource<*>;>;"
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lccsancom/bumptech/glide/load/engine/EngineResource;

    .line 207
    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquire()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v2, p0, Lccsancom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_2
    :goto_0
    return-object v0
.end method

.method private loadFromCache(Lccsancom/bumptech/glide/load/Key;Z)Lccsancom/bumptech/glide/load/engine/EngineResource;
    .locals 4
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "isMemoryCacheable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            "Z)",
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 218
    if-nez p2, :cond_0

    .line 219
    const/4 v0, 0x0

    return-object v0

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/engine/Engine;->getEngineResourceFromCache(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/EngineResource;

    move-result-object v0

    .line 223
    .local v0, "cached":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<*>;"
    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/EngineResource;->acquire()V

    .line 225
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v2, Lccsancom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v3

    invoke-direct {v2, p1, v0, v3}, Lccsancom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1
    return-object v0
.end method

.method private static logWithTimeAndKey(Ljava/lang/String;JLccsancom/bumptech/glide/load/Key;)V
    .locals 3
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "key"    # Lccsancom/bumptech/glide/load/Key;

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lccsancom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "ms, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Engine"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    .line 298
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lccsancom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;->getDiskCache()Lccsancom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/engine/cache/DiskCache;->clear()V

    .line 299
    return-void
.end method

.method public load(Lccsancom/bumptech/glide/load/Key;IILccsancom/bumptech/glide/load/data/DataFetcher;Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/Priority;ZLccsancom/bumptech/glide/load/engine/DiskCacheStrategy;Lccsancom/bumptech/glide/request/ResourceCallback;)Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;
    .locals 28
    .param p1, "signature"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p8, "priority"    # Lccsancom/bumptech/glide/Priority;
    .param p9, "isMemoryCacheable"    # Z
    .param p10, "diskCacheStrategy"    # Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;
    .param p11, "cb"    # Lccsancom/bumptech/glide/request/ResourceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/bumptech/glide/load/Key;",
            "II",
            "Lccsancom/bumptech/glide/load/data/DataFetcher<",
            "TT;>;",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "TT;TZ;>;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "TZ;>;",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;",
            "Lccsancom/bumptech/glide/Priority;",
            "Z",
            "Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lccsancom/bumptech/glide/request/ResourceCallback;",
            ")",
            "Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    .line 145
    .local p4, "fetcher":Lccsancom/bumptech/glide/load/data/DataFetcher;, "Lccsancom/bumptech/glide/load/data/DataFetcher<TT;>;"
    .local p5, "loadProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<TT;TZ;>;"
    .local p6, "transformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<TZ;>;"
    .local p7, "transcoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p11

    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 146
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v3

    .line 148
    .local v3, "startTime":J
    invoke-interface/range {p4 .. p4}, Lccsancom/bumptech/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v16

    .line 149
    .local v16, "id":Ljava/lang/String;
    iget-object v5, v0, Lccsancom/bumptech/glide/load/engine/Engine;->keyFactory:Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;

    invoke-interface/range {p5 .. p5}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v10

    invoke-interface/range {p5 .. p5}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v11

    invoke-interface/range {p5 .. p5}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;

    move-result-object v13

    invoke-interface/range {p5 .. p5}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;

    move-result-object v15

    move-object/from16 v6, v16

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v5 .. v15}, Lccsancom/bumptech/glide/load/engine/EngineKeyFactory;->buildKey(Ljava/lang/String;Lccsancom/bumptech/glide/load/Key;IILccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/ResourceEncoder;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/load/Encoder;)Lccsancom/bumptech/glide/load/engine/EngineKey;

    move-result-object v5

    .line 153
    .local v5, "key":Lccsancom/bumptech/glide/load/engine/EngineKey;
    invoke-direct {v0, v5, v1}, Lccsancom/bumptech/glide/load/engine/Engine;->loadFromCache(Lccsancom/bumptech/glide/load/Key;Z)Lccsancom/bumptech/glide/load/engine/EngineResource;

    move-result-object v6

    .line 154
    .local v6, "cached":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<*>;"
    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "Engine"

    if-eqz v6, :cond_1

    .line 155
    invoke-interface {v2, v6}, Lccsancom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 156
    invoke-static {v9, v8}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 157
    const-string v8, "Loaded resource from cache"

    invoke-static {v8, v3, v4, v5}, Lccsancom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLccsancom/bumptech/glide/load/Key;)V

    .line 159
    :cond_0
    return-object v7

    .line 162
    :cond_1
    invoke-direct {v0, v5, v1}, Lccsancom/bumptech/glide/load/engine/Engine;->loadFromActiveResources(Lccsancom/bumptech/glide/load/Key;Z)Lccsancom/bumptech/glide/load/engine/EngineResource;

    move-result-object v10

    .line 163
    .local v10, "active":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<*>;"
    if-eqz v10, :cond_3

    .line 164
    invoke-interface {v2, v10}, Lccsancom/bumptech/glide/request/ResourceCallback;->onResourceReady(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 165
    invoke-static {v9, v8}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 166
    const-string v8, "Loaded resource from active resources"

    invoke-static {v8, v3, v4, v5}, Lccsancom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLccsancom/bumptech/glide/load/Key;)V

    .line 168
    :cond_2
    return-object v7

    .line 171
    :cond_3
    iget-object v7, v0, Lccsancom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/bumptech/glide/load/engine/EngineJob;

    .line 172
    .local v7, "current":Lccsancom/bumptech/glide/load/engine/EngineJob;
    if-eqz v7, :cond_5

    .line 173
    invoke-virtual {v7, v2}, Lccsancom/bumptech/glide/load/engine/EngineJob;->addCallback(Lccsancom/bumptech/glide/request/ResourceCallback;)V

    .line 174
    invoke-static {v9, v8}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 175
    const-string v8, "Added to existing load"

    invoke-static {v8, v3, v4, v5}, Lccsancom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLccsancom/bumptech/glide/load/Key;)V

    .line 177
    :cond_4
    new-instance v8, Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v8, v2, v7}, Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lccsancom/bumptech/glide/request/ResourceCallback;Lccsancom/bumptech/glide/load/engine/EngineJob;)V

    return-object v8

    .line 180
    :cond_5
    iget-object v11, v0, Lccsancom/bumptech/glide/load/engine/Engine;->engineJobFactory:Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;

    invoke-virtual {v11, v5, v1}, Lccsancom/bumptech/glide/load/engine/Engine$EngineJobFactory;->build(Lccsancom/bumptech/glide/load/Key;Z)Lccsancom/bumptech/glide/load/engine/EngineJob;

    move-result-object v11

    .line 181
    .local v11, "engineJob":Lccsancom/bumptech/glide/load/engine/EngineJob;
    new-instance v12, Lccsancom/bumptech/glide/load/engine/DecodeJob;

    iget-object v13, v0, Lccsancom/bumptech/glide/load/engine/Engine;->diskCacheProvider:Lccsancom/bumptech/glide/load/engine/Engine$LazyDiskCacheProvider;

    move-object/from16 v17, v12

    move-object/from16 v18, v5

    move/from16 v19, p2

    move/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    move-object/from16 v24, p7

    move-object/from16 v25, v13

    move-object/from16 v26, p10

    move-object/from16 v27, p8

    invoke-direct/range {v17 .. v27}, Lccsancom/bumptech/glide/load/engine/DecodeJob;-><init>(Lccsancom/bumptech/glide/load/engine/EngineKey;IILccsancom/bumptech/glide/load/data/DataFetcher;Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lccsancom/bumptech/glide/load/engine/DecodeJob$DiskCacheProvider;Lccsancom/bumptech/glide/load/engine/DiskCacheStrategy;Lccsancom/bumptech/glide/Priority;)V

    .line 183
    .local v12, "decodeJob":Lccsancom/bumptech/glide/load/engine/DecodeJob;, "Lccsancom/bumptech/glide/load/engine/DecodeJob<TT;TZ;TR;>;"
    new-instance v13, Lccsancom/bumptech/glide/load/engine/EngineRunnable;

    move-object/from16 v14, p8

    invoke-direct {v13, v11, v12, v14}, Lccsancom/bumptech/glide/load/engine/EngineRunnable;-><init>(Lccsancom/bumptech/glide/load/engine/EngineRunnable$EngineRunnableManager;Lccsancom/bumptech/glide/load/engine/DecodeJob;Lccsancom/bumptech/glide/Priority;)V

    .line 184
    .local v13, "runnable":Lccsancom/bumptech/glide/load/engine/EngineRunnable;
    iget-object v15, v0, Lccsancom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v15, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v11, v2}, Lccsancom/bumptech/glide/load/engine/EngineJob;->addCallback(Lccsancom/bumptech/glide/request/ResourceCallback;)V

    .line 186
    invoke-virtual {v11, v13}, Lccsancom/bumptech/glide/load/engine/EngineJob;->start(Lccsancom/bumptech/glide/load/engine/EngineRunnable;)V

    .line 188
    invoke-static {v9, v8}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 189
    const-string v8, "Started new load"

    invoke-static {v8, v3, v4, v5}, Lccsancom/bumptech/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLccsancom/bumptech/glide/load/Key;)V

    .line 191
    :cond_6
    new-instance v8, Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v8, v2, v11}, Lccsancom/bumptech/glide/load/engine/Engine$LoadStatus;-><init>(Lccsancom/bumptech/glide/request/ResourceCallback;Lccsancom/bumptech/glide/load/engine/EngineJob;)V

    return-object v8
.end method

.method public onEngineJobCancelled(Lccsancom/bumptech/glide/load/engine/EngineJob;Lccsancom/bumptech/glide/load/Key;)V
    .locals 2
    .param p1, "engineJob"    # Lccsancom/bumptech/glide/load/engine/EngineJob;
    .param p2, "key"    # Lccsancom/bumptech/glide/load/Key;

    .line 273
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 274
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/engine/EngineJob;

    .line 275
    .local v0, "current":Lccsancom/bumptech/glide/load/engine/EngineJob;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lccsancom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_0
    return-void
.end method

.method public onEngineJobComplete(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineResource;)V
    .locals 3
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            "Lccsancom/bumptech/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    .line 258
    .local p2, "resource":Lccsancom/bumptech/glide/load/engine/EngineResource;, "Lccsancom/bumptech/glide/load/engine/EngineResource<*>;"
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 260
    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {p2, p1, p0}, Lccsancom/bumptech/glide/load/engine/EngineResource;->setResourceListener(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineResource$ResourceListener;)V

    .line 263
    invoke-virtual {p2}, Lccsancom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v1, Lccsancom/bumptech/glide/load/engine/Engine$ResourceWeakReference;

    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lccsancom/bumptech/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-void
.end method

.method public onResourceReleased(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/EngineResource;)V
    .locals 1
    .param p1, "cacheKey"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "resource"    # Lccsancom/bumptech/glide/load/engine/EngineResource;

    .line 288
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 289
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lccsancom/bumptech/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->cache:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1, p2}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;->put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lccsancom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {v0, p2}, Lccsancom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 295
    :goto_0
    return-void
.end method

.method public onResourceRemoved(Lccsancom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 282
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 283
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/Engine;->resourceRecycler:Lccsancom/bumptech/glide/load/engine/ResourceRecycler;

    invoke-virtual {v0, p1}, Lccsancom/bumptech/glide/load/engine/ResourceRecycler;->recycle(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 284
    return-void
.end method

.method public release(Lccsancom/bumptech/glide/load/engine/Resource;)V
    .locals 2
    .param p1, "resource"    # Lccsancom/bumptech/glide/load/engine/Resource;

    .line 247
    invoke-static {}, Lccsancom/bumptech/glide/util/Util;->assertMainThread()V

    .line 248
    instance-of v0, p1, Lccsancom/bumptech/glide/load/engine/EngineResource;

    if-eqz v0, :cond_0

    .line 249
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/engine/EngineResource;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/engine/EngineResource;->release()V

    .line 253
    return-void

    .line 251
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot release anything but an EngineResource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
