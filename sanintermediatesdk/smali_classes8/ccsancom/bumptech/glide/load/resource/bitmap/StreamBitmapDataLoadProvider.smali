.class public Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;
.super Ljava/lang/Object;
.source "StreamBitmapDataLoadProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
        "Ljava/io/InputStream;",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheDecoder:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final decoder:Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

.field private final encoder:Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final sourceEncoder:Lccsancom/bumptech/glide/load/model/StreamEncoder;


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 2
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lccsancom/bumptech/glide/load/model/StreamEncoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/model/StreamEncoder;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/model/StreamEncoder;

    .line 29
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->decoder:Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    .line 30
    new-instance v1, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    iput-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->encoder:Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 31
    new-instance v1, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    invoke-direct {v1, v0}, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    .line 32
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

    .line 36
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;

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

    .line 51
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->encoder:Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    return-object v0
.end method

.method public getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->decoder:Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    return-object v0
.end method

.method public getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDataLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/model/StreamEncoder;

    return-object v0
.end method
