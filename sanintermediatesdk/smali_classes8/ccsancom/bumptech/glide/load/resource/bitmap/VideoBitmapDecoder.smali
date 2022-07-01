.class public Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;
.super Ljava/lang/Object;
.source "VideoBitmapDecoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDecoder<",
        "Lccsanandroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

.field private static final NO_FRAME:I = -0x1


# instance fields
.field private factory:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

.field private frame:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 25
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "frame"    # I

    .line 29
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->DEFAULT_FACTORY:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    invoke-static {p1}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->checkValidFrame(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V

    .line 30
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;)V
    .locals 1
    .param p1, "factory"    # Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    .line 33
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>(Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V

    .line 34
    return-void
.end method

.method constructor <init>(Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;I)V
    .locals 0
    .param p1, "factory"    # Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;
    .param p2, "frame"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->factory:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    .line 38
    iput p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->frame:I

    .line 39
    return-void
.end method

.method private static checkValidFrame(I)I
    .locals 2
    .param p0, "frame"    # I

    .line 71
    if-ltz p0, :cond_0

    .line 74
    return p0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested frame must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decode(Lccsanandroid/os/ParcelFileDescriptor;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;
    .locals 3
    .param p1, "resource"    # Lccsanandroid/os/ParcelFileDescriptor;
    .param p2, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->factory:Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder$MediaMetadataRetrieverFactory;->build()Lccsanandroid/media/MediaMetadataRetriever;

    move-result-object v0

    .line 46
    .local v0, "mediaMetadataRetriever":Lccsanandroid/media/MediaMetadataRetriever;
    invoke-virtual {p1}, Lccsanandroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 48
    iget v1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->frame:I

    if-ltz v1, :cond_0

    .line 49
    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lccsanandroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "result":Lccsanandroid/graphics/Bitmap;
    goto :goto_0

    .line 51
    .end local v1    # "result":Lccsanandroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/media/MediaMetadataRetriever;->getFrameAtTime()Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 53
    .restart local v1    # "result":Lccsanandroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v0}, Lccsanandroid/media/MediaMetadataRetriever;->release()V

    .line 54
    invoke-virtual {p1}, Lccsanandroid/os/ParcelFileDescriptor;->close()V

    .line 55
    return-object v1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;
    .locals 6
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lccsancom/bumptech/glide/load/DecodeFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    move-object v1, p1

    check-cast v1, Lccsanandroid/os/ParcelFileDescriptor;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsancom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->decode(Lccsanandroid/os/ParcelFileDescriptor;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "VideoBitmapDecoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
