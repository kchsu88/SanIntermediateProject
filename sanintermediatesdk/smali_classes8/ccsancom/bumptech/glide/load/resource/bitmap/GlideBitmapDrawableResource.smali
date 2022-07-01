.class public Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;
.super Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "GlideBitmapDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource<",
        "Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p1, "drawable"    # Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 14
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 15
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 16
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 20
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 25
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v1, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;->getBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Lccsanandroid/graphics/Bitmap;)Z

    .line 26
    return-void
.end method
