.class Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;
.super Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "SizeConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<",
        "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->create()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method protected create()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .locals 1

    .line 167
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;)V

    return-object v0
.end method

.method public get(ILccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    .locals 1
    .param p1, "size"    # I
    .param p2, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 160
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$KeyPool;->get()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;

    .line 161
    .local v0, "result":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;
    invoke-virtual {v0, p1, p2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/SizeConfigStrategy$Key;->init(ILccsanandroid/graphics/Bitmap$Config;)V

    .line 162
    return-object v0
.end method
