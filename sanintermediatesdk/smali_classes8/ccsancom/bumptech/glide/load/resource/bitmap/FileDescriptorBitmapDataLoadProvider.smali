.class public Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDataLoadProvider.java"

# interfaces
.implements Lccsancom/bumptech/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/provider/DataLoadProvider<",
        "Lccsanandroid/os/ParcelFileDescriptor;",
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

.field private final encoder:Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

.field private final sourceDecoder:Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

.field private final sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 2
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;

    new-instance v1, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;

    invoke-direct {v1, p1, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    invoke-direct {v0, v1}, Lccsancom/bumptech/glide/load/resource/file/FileToStreamDecoder;-><init>(Lccsancom/bumptech/glide/load/ResourceDecoder;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 29
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    invoke-direct {v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceDecoder:Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    .line 30
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>()V

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->encoder:Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    .line 31
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/NullEncoder;->get()Lccsancom/bumptech/glide/load/Encoder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

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
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->cacheDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

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
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->encoder:Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;

    return-object v0
.end method

.method public getSourceDecoder()Lccsancom/bumptech/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceDecoder:Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;

    return-object v0
.end method

.method public getSourceEncoder()Lccsancom/bumptech/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/bumptech/glide/load/Encoder<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDataLoadProvider;->sourceEncoder:Lccsancom/bumptech/glide/load/Encoder;

    return-object v0
.end method
