.class public Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;
.super Ljava/lang/Object;
.source "GifBitmapWrapperTransformation.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/Transformation<",
        "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapTransformation:Lccsancom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final gifDataTransformation:Lccsancom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/Transformation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p1, "bitmapTransformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    .local p2, "gifDataTransformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->bitmapTransformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 26
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->gifDataTransformation:Lccsancom/bumptech/glide/load/Transformation;

    .line 27
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/Transformation;)V
    .locals 1
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lccsancom/bumptech/glide/load/Transformation<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p2, "bitmapTransformation":Lccsancom/bumptech/glide/load/Transformation;, "Lccsancom/bumptech/glide/load/Transformation<Lccsanandroid/graphics/Bitmap;>;"
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;

    invoke-direct {v0, p2, p1}, Lccsancom/bumptech/glide/load/resource/gif/GifDrawableTransformation;-><init>(Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    invoke-direct {p0, p2, v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;-><init>(Lccsancom/bumptech/glide/load/Transformation;Lccsancom/bumptech/glide/load/Transformation;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->bitmapTransformation:Lccsancom/bumptech/glide/load/Transformation;

    invoke-interface {v0}, Lccsancom/bumptech/glide/load/Transformation;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .line 31
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 32
    .local v0, "bitmapResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 33
    .local v1, "gifResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    if-eqz v0, :cond_1

    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->bitmapTransformation:Lccsancom/bumptech/glide/load/Transformation;

    if-eqz v2, :cond_1

    .line 34
    invoke-interface {v2, v0, p2, p3}, Lccsancom/bumptech/glide/load/Transformation;->transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 35
    .local v2, "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 36
    new-instance v3, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v4}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lccsancom/bumptech/glide/load/engine/Resource;Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 37
    .local v3, "gifBitmap":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    new-instance v4, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    invoke-direct {v4, v3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    return-object v4

    .line 35
    .end local v2    # "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    .end local v3    # "gifBitmap":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :cond_0
    goto :goto_0

    .line 39
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperTransformation;->gifDataTransformation:Lccsancom/bumptech/glide/load/Transformation;

    if-eqz v2, :cond_2

    .line 40
    invoke-interface {v2, v1, p2, p3}, Lccsancom/bumptech/glide/load/Transformation;->transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 41
    .local v2, "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 42
    new-instance v3, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    invoke-virtual {v4}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;-><init>(Lccsancom/bumptech/glide/load/engine/Resource;Lccsancom/bumptech/glide/load/engine/Resource;)V

    .line 43
    .restart local v3    # "gifBitmap":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    new-instance v4, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;

    invoke-direct {v4, v3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResource;-><init>(Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;)V

    return-object v4

    .line 39
    .end local v2    # "transformed":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    .end local v3    # "gifBitmap":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    :cond_2
    :goto_0
    nop

    .line 46
    :cond_3
    return-object p1
.end method
