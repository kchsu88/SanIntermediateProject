.class public Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;
.super Ljava/lang/Object;
.source "ImageVideoGifDrawableLoadProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
        "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 4
    .param p3, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "Ljava/io/InputStream;",
            "Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;",
            ")V"
        }
    .end annotation

    .line 29
    .local p1, "bitmapProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;Lccsanandroid/graphics/Bitmap;>;"
    .local p2, "gifProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<Ljava/io/InputStream;Lccsancom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;

    invoke-interface {p1}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v1

    invoke-interface {p2}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 36
    .local v0, "decoder":Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceDecoder;
    new-instance v1, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    new-instance v2, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;

    invoke-direct {v2, v0}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperStreamResourceDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    invoke-direct {v1, v2}, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 37
    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 38
    new-instance v1, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;

    invoke-interface {p1}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;

    move-result-object v2

    invoke-interface {p2}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapperResourceEncoder;-><init>(Lccsancom/bumptech/glide/load/ResourceEncoder;Lccsancom/bumptech/glide/load/ResourceEncoder;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    .line 41
    invoke-interface {p1}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;

    move-result-object v1

    iput-object v1, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    .line 42
    return-void
.end method


# virtual methods
.method public getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    return-object v0
.end method

.method public getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsancom/bumptech/glide/load/resource/gifbitmap/GifBitmapWrapper;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/gifbitmap/ImageVideoGifDrawableLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    return-object v0
.end method
