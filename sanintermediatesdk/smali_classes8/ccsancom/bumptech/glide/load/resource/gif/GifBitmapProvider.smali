.class Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;
.super Ljava/lang/Object;
.source "GifBitmapProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 14
    return-void
.end method


# virtual methods
.method public obtain(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Lccsanandroid/graphics/Bitmap$Config;

    .line 18
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public release(Lccsanandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 23
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gif/GifBitmapProvider;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v0, p1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Lccsanandroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 26
    :cond_0
    return-void
.end method
