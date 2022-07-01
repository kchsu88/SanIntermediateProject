.class public Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;
.super Lccsancom/bumptech/glide/util/LruCache;
.source "LruResourceCache.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/util/LruCache<",
        "Lccsancom/bumptech/glide/load/Key;",
        "Lccsancom/bumptech/glide/load/engine/Resource<",
        "*>;>;",
        "Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;"
    }
.end annotation


# instance fields
.field private listener:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 21
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/util/LruCache;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected getSize(Lccsancom/bumptech/glide/load/engine/Resource;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;)I"
        }
    .end annotation

    .line 38
    .local p1, "item":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 12
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;->getSize(Lccsancom/bumptech/glide/load/engine/Resource;)I

    move-result v0

    return v0
.end method

.method protected onItemEvicted(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 31
    .local p2, "item":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p2}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 34
    :cond_0
    return-void
.end method

.method protected bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 12
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/Key;

    move-object v1, p2

    check-cast v1, Lccsancom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, v0, v1}, Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;->onItemEvicted(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/Resource;)V

    return-void
.end method

.method public bridge synthetic put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "x1"    # Lccsancom/bumptech/glide/load/engine/Resource;

    .line 12
    invoke-super {p0, p1, p2}, Lccsancom/bumptech/glide/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/engine/Resource;

    return-object v0
.end method

.method public bridge synthetic remove(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p1, "x0"    # Lccsancom/bumptech/glide/load/Key;

    .line 12
    invoke-super {p0, p1}, Lccsancom/bumptech/glide/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/engine/Resource;

    return-object v0
.end method

.method public setResourceRemovedListener(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    .line 26
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;->listener:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    .line 27
    return-void
.end method

.method public trimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .line 44
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;->clearMemory()V

    goto :goto_0

    .line 48
    :cond_0
    const/16 v0, 0x28

    if-lt p1, v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;->getCurrentSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/load/engine/cache/LruResourceCache;->trimToSize(I)V

    .line 53
    :cond_1
    :goto_0
    return-void
.end method
