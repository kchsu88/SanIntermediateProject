.class Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;
.super Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool<",
        "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    .locals 1

    .line 70
    new-instance v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    invoke-direct {v0, p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;)V

    return-object v0
.end method

.method protected bridge synthetic create()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->create()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method public get(IILccsanandroid/graphics/Bitmap$Config;)Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 63
    invoke-virtual {p0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$KeyPool;->get()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;

    .line 64
    .local v0, "result":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;
    invoke-virtual {v0, p1, p2, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/AttributeStrategy$Key;->init(IILccsanandroid/graphics/Bitmap$Config;)V

    .line 65
    return-object v0
.end method
