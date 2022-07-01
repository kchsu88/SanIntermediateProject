.class public Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;
.super Ljava/lang/Object;
.source "FileDescriptorBitmapDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceDecoder<",
        "Lccsanandroid/os/ParcelFileDescriptor;",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapDecoder:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

.field private final bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 25
    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    sget-object v1, Lccsancom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lccsancom/bumptech/glide/load/DecodeFormat;

    invoke-direct {p0, v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 29
    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 1
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 33
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 0
    .param p1, "bitmapDecoder"    # Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;->bitmapDecoder:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    .line 39
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 40
    iput-object p3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 41
    return-void
.end method


# virtual methods
.method public decode(Lccsanandroid/os/ParcelFileDescriptor;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "source"    # Lccsanandroid/os/ParcelFileDescriptor;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            "II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;->bitmapDecoder:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v5, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->decode(Lccsanandroid/os/ParcelFileDescriptor;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 46
    .local v0, "bitmap":Lccsanandroid/graphics/Bitmap;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

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

    .line 19
    move-object v0, p1

    check-cast v0, Lccsanandroid/os/ParcelFileDescriptor;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/bitmap/FileDescriptorBitmapDecoder;->decode(Lccsanandroid/os/ParcelFileDescriptor;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
