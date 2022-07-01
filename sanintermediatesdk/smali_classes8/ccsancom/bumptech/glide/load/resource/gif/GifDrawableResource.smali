.class public Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;
.super Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource<",
        "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;)V
    .locals 0
    .param p1, "drawable"    # Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 11
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/resource/drawable/DrawableResource;-><init>(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .line 16
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 21
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->stop()V

    .line 22
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;->drawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->recycle()V

    .line 23
    return-void
.end method
