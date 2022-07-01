.class public Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/Transformation<",
        "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final wrapped:Lccsancom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .line 18
    .local p1, "wrapped":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lccsancom/bumptech/glide/load/Transformation;

    .line 20
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lccsancom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 8
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 25
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 31
    .local v0, "drawable":Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;->getFirstFrame()Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 32
    .local v1, "firstFrame":Lccsanandroid/graphics/Bitmap;
    new-instance v2, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;

    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-direct {v2, v1, v3}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 33
    .local v2, "bitmapResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lccsancom/bumptech/glide/load/Transformation;

    invoke-interface {v3, v2, p2, p3}, Lccsancom/bumptech/glide/load/Transformation;->transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v3

    .line 34
    .local v3, "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    invoke-interface {v3}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/Bitmap;

    .line 35
    .local v4, "transformedFrame":Lccsanandroid/graphics/Bitmap;
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    new-instance v5, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;

    new-instance v6, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;

    iget-object v7, p0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;->wrapped:Lccsancom/bumptech/glide/load/Transformation;

    invoke-direct {v6, v0, v4, v7}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/Transformation;)V

    invoke-direct {v5, v6}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableResource;-><init>(Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;)V

    return-object v5

    .line 38
    :cond_0
    return-object p1
.end method
