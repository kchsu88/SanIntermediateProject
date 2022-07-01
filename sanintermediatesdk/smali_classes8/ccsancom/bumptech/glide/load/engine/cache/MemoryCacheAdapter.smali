.class public Lccsancom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;
.super Ljava/lang/Object;
.source "MemoryCacheAdapter.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;


# instance fields
.field private listener:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearMemory()V
    .locals 0

    .line 47
    return-void
.end method

.method public getCurrentSize()I
    .locals 1

    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    .line 35
    .local p2, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<*>;"
    iget-object v0, p0, Lccsancom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    invoke-interface {v0, p2}, Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;->onResourceRemoved(Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            ")",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public setResourceRemovedListener(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    .line 41
    iput-object p1, p0, Lccsancom/bumptech/glide/load/engine/cache/MemoryCacheAdapter;->listener:Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;

    .line 42
    return-void
.end method

.method public setSizeMultiplier(F)V
    .locals 0
    .param p1, "multiplier"    # F

    .line 26
    return-void
.end method

.method public trimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .line 52
    return-void
.end method
