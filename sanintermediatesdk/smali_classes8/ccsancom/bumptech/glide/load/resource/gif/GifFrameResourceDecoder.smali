.class Lccsancom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;
.super Ljava/lang/Object;
.source "GifFrameResourceDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceDecoder<",
        "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 16
    return-void
.end method


# virtual methods
.method public decode(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 2
    .param p1, "source"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/gifdecoder/GifDecoder;",
            "II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-virtual {p1}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;->getNextFrame()Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 21
    .local v0, "bitmap":Lccsanandroid/graphics/Bitmap;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/gif/GifFrameResourceDecoder;->decode(Lccsancom/bumptech/glide/gifdecoder/GifDecoder;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif"

    return-object v0
.end method
