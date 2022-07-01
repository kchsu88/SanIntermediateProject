.class public Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;
.super Ljava/lang/Object;
.source "ImageVideoBitmapDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceDecoder<",
        "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageVideoDecoder"


# instance fields
.field private final fileDescriptorDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final streamDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/bumptech/glide/load/ResourceDecoder;Lccsancom/bumptech/glide/load/ResourceDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Lccsancom/bumptech/glide/load/ResourceDecoder<",
            "Lccsanandroid/os/ParcelFileDescriptor;",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p1, "streamDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Ljava/io/InputStream;Lccsanandroid/graphics/Bitmap;>;"
    .local p2, "fileDescriptorDecoder":Lccsancom/bumptech/glide/load/ResourceDecoder;, "Lccsancom/bumptech/glide/load/ResourceDecoder<Lccsanandroid/os/ParcelFileDescriptor;Lccsanandroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->streamDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 28
    iput-object p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->fileDescriptorDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    .line 29
    return-void
.end method


# virtual methods
.method public decode(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p1, "source"    # Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;",
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

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;->getStream()Ljava/io/InputStream;

    move-result-object v1

    .line 37
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 39
    :try_start_0
    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->streamDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v2, v1, p2, p3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 44
    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x2

    const-string v4, "ImageVideoDecoder"

    invoke-static {v4, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    const-string v3, "Failed to load image from stream, trying FileDescriptor"

    invoke-static {v4, v3, v2}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 48
    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;->getFileDescriptor()Lccsanandroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 49
    .local v2, "fileDescriptor":Lccsanandroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_1

    .line 50
    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->fileDescriptorDecoder:Lccsancom/bumptech/glide/load/ResourceDecoder;

    invoke-interface {v3, v2, p2, p3}, Lccsancom/bumptech/glide/load/ResourceDecoder;->decode(Ljava/lang/Object;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    .line 53
    .end local v2    # "fileDescriptor":Lccsanandroid/os/ParcelFileDescriptor;
    :cond_1
    return-object v0
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

    .line 20
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;

    invoke-virtual {p0, v0, p2, p3}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageVideoBitmapDecoder;->decode(Lccsancom/bumptech/glide/load/model/ImageVideoWrapper;II)Lccsancom/bumptech/glide/load/engine/Resource;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "ImageVideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
