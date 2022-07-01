.class public Lccsancom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;
.super Ljava/lang/Object;
.source "GifBitmapWrapperDrawableTranscoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapDrawableResourceTranscoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "Lccsanandroid/graphics/Bitmap;",
            "Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
            "Lccsanandroid/graphics/Bitmap;",
            "Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .line 19
    .local p1, "bitmapDrawableResourceTranscoder":Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/resource/bitmap/GlideBitmapDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;->bitmapDrawableResourceTranscoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    .line 21
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;",
            ">;"
        }
    .end annotation

    .line 26
    .local p1, "toTranscode":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;>;"
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;

    .line 27
    .local v0, "gifBitmap":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getBitmapResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v1

    .line 30
    .local v1, "bitmapResource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 31
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/transcode/GifBitmapWrapperDrawableTranscoder;->bitmapDrawableResourceTranscoder:Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    invoke-interface {v2, v1}, Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;->transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .local v2, "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<+Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    goto :goto_0

    .line 33
    .end local v2    # "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<+Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    :cond_0
    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;->getGifResource()Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    .line 36
    .restart local v2    # "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<+Lccsancom/bumptech/glide/load/resource/drawable/GlideDrawable;>;"
    :goto_0
    return-object v2
.end method
