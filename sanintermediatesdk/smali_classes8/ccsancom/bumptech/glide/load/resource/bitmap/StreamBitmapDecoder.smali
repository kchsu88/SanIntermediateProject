.class public Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;
.super Ljava/lang/Object;
.source "StreamBitmapDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"


# instance fields
.field private bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

.field private final downsampler:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 27
    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 35
    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 1
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 31
    sget-object v0, Lccsancom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lccsancom/bumptech/glide/load/DecodeFormat;

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 1
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 39
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-direct {p0, v0, p1, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsancom/bumptech/glide/load/DecodeFormat;)V
    .locals 0
    .param p1, "downsampler"    # Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->downsampler:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 44
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 45
    iput-object p3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 46
    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 6
    .param p1, "source"    # Ljava/io/InputStream;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->downsampler:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    iget-object v5, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    .local v0, "bitmap":Lccsanandroid/graphics/Bitmap;
    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

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

    check-cast v0, Ljava/io/InputStream;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->decode(Ljava/io/InputStream;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 56
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->downsampler:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->decodeFormat:Lccsancom/bumptech/glide/load/DecodeFormat;

    invoke-virtual {v1}, Lccsancom/bumptech/glide/load/DecodeFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->id:Ljava/lang/String;

    .line 63
    :cond_0
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/StreamBitmapDecoder;->id:Ljava/lang/String;

    return-object v0
.end method
