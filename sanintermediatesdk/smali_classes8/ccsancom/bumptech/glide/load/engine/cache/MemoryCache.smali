.class public interface abstract Lccsancom/bumptech/glide/load/engine/cache/MemoryCache;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
    }
.end annotation


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract getCurrentSize()I
.end method

.method public abstract getMaxSize()I
.end method

.method public abstract put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
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
.end method

.method public abstract remove(Lccsancom/bumptech/glide/load/Key;)Lccsancom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Key;",
            ")",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract setResourceRemovedListener(Lccsancom/bumptech/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V
.end method

.method public abstract setSizeMultiplier(F)V
.end method

.method public abstract trimMemory(I)V
.end method
