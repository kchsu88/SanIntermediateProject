.class Lccsancom/bumptech/glide/load/resource/gif/GifResourceEncoder$Factory;
.super Ljava/lang/Object;
.source "GifResourceEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/bumptech/glide/load/resource/gif/GifResourceEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildDecoder(Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)Lccsancom/bumptech/glide/gifdecoder/GifDecoder;
    .locals 1
    .param p1, "bitmapProvider"    # Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;

    .line 133
    new-instance v0, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;

    invoke-direct {v0, p1}, Lccsancom/bumptech/glide/gifdecoder/GifDecoder;-><init>(Lccsancom/bumptech/glide/gifdecoder/GifDecoder$BitmapProvider;)V

    return-object v0
.end method

.method public buildEncoder()Lccsancom/bumptech/glide/gifencoder/AnimatedGifEncoder;
    .locals 1

    .line 141
    new-instance v0, Lccsancom/bumptech/glide/gifencoder/AnimatedGifEncoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/gifencoder/AnimatedGifEncoder;-><init>()V

    return-object v0
.end method

.method public buildFrameResource(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 1
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/graphics/Bitmap;",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;-><init>(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object v0
.end method

.method public buildParser()Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 1

    .line 137
    new-instance v0, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v0}, Lccsancom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    return-object v0
.end method
