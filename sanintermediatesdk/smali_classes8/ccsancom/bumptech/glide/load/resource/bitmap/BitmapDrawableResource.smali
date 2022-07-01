.class public Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;
.super Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "BitmapDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource<",
        "Lccsanandroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lccsanandroid/graphics/drawable/BitmapDrawable;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/BitmapDrawable;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 22
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 23
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 24
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 28
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsanandroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/BitmapDrawable;->getBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 2

    .line 33
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v1, Lccsanandroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/BitmapDrawable;->getBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Lccsanandroid/graphics/Bitmap;)Z

    .line 34
    return-void
.end method
