.class public Lccsancom/bumptech/glide/load/engine/cache/DiskCacheAdapter;
.super Ljava/lang/Object;
.source "DiskCacheAdapter.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 30
    return-void
.end method

.method public delete(Lccsancom/bumptech/glide/load/Key;)V
    .locals 0
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;

    .line 25
    return-void
.end method

.method public get(Lccsancom/bumptech/glide/load/Key;)Ljava/io/File;
    .locals 1
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Lccsancom/bumptech/glide/load/Key;Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;)V
    .locals 0
    .param p1, "key"    # Lccsancom/bumptech/glide/load/Key;
    .param p2, "writer"    # Lccsancom/bumptech/glide/load/engine/cache/DiskCache$Writer;

    .line 20
    return-void
.end method
