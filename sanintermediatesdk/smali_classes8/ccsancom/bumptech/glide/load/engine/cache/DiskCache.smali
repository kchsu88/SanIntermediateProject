.class public interface abstract Lccsancom/bumptech/glide/load/engine/cache/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;,
        Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Factory;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract delete(Lccsancom/bumptech/glide/load/Key;)V
.end method

.method public abstract get(Lccsancom/bumptech/glide/load/Key;)Ljava/io/File;
.end method

.method public abstract put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
.end method
