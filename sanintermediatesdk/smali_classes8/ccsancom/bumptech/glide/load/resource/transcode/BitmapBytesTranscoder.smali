.class public Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;
.super Ljava/lang/Object;
.source "BitmapBytesTranscoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Lccsanandroid/graphics/Bitmap;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final compressFormat:Lccsanandroid/graphics/Bitmap$CompressFormat;

.field private final quality:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    sget-object v0, Lccsanandroid/graphics/Bitmap$CompressFormat;->JPEG:Lccsanandroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>(Lccsanandroid/graphics/Bitmap$CompressFormat;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lccsanandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0
    .param p1, "compressFormat"    # Lccsanandroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;->compressFormat:Lccsanandroid/graphics/Bitmap$CompressFormat;

    .line 25
    iput p2, p0, Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;->quality:I

    .line 26
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "BitmapBytesTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method

.method public transcode(Lccsancom/bumptech/glide/load/engine/Resource;)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "[B>;"
        }
    .end annotation

    .line 30
    .local p1, "toTranscode":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/Bitmap;

    iget-object v2, p0, Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;->compressFormat:Lccsanandroid/graphics/Bitmap$CompressFormat;

    iget v3, p0, Lccsancom/bumptech/glide/load/resource/transcode/BitmapBytesTranscoder;->quality:I

    invoke-virtual {v1, v2, v3, v0}, Lccsanandroid/graphics/Bitmap;->compress(Lccsanandroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 32
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->recycle()V

    .line 33
    new-instance v1, Lccsancom/bumptech/glide/load/resource/bytes/BytesResource;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lccsancom/bumptech/glide/load/resource/bytes/BytesResource;-><init>([B)V

    return-object v1
.end method
