.class public Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;
.super Ljava/lang/Object;
.source "ImageVideoDataLoadProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
        "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final sourceDecoder:Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

.field private final sourceEncoder:Lccsancom/bumptech/glide/load/model/ImageVideoWrapperEncoder;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/provider/DataLoadProvider;Lccsancom/bumptech/glide/provider/DataLoadProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "Ljava/io/InputStream;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "streamBitmapProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<Ljava/io/InputStream;Lccsanandroid/graphics/Bitmap;>;"
    .local p2, "fileDescriptorBitmapProvider":Lccsancom/bumptech/glide/provider/DataLoadProvider;, "Lccsancom/bumptech/glide/provider/DataLoadProvider<Lccsanandroid/os/ParcelFileDescriptor;Lccsanandroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    .line 29
    new-instance v0, Lccsancom/bumptech/glide/load/model/ImageVideoWrapperEncoder;

    invoke-interface {p1}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;

    move-result-object v1

    invoke-interface {p2}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/bumptech/glide/load/model/ImageVideoWrapperEncoder;-><init>(Lccsancom/bumptech/glide/load/Encoder;Lccsancom/bumptech/glide/load/Encoder;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/model/ImageVideoWrapperEncoder;

    .line 31
    invoke-interface {p1}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getCacheDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 32
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    invoke-interface {p1}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v1

    invoke-interface {p2}, Lccsancom/bumptech/glide/provider/DataLoadProvider;->getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->sourceDecoder:Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

    .line 34
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
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public getEncoder()Lccsancom/bumptech/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceEncoder<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->encoder:Lccsancom/bumptech/glide/load/ResourceEncoder;

    return-object v0
.end method

.method public getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->sourceDecoder:Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;

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

    .line 48
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoDataLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/model/ImageVideoWrapperEncoder;

    return-object v0
.end method
