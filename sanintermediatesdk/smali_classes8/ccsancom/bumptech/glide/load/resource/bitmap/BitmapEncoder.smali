.class public Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;
.super Ljava/lang/Object;
.source "BitmapEncoder.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/ResourceEncoder<",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESSION_QUALITY:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "BitmapEncoder"


# instance fields
.field private compressFormat:Lccsanandroid/graphics/Bitmap$CompressFormat;

.field private quality:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    const/4 v0, 0x0

    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;-><init>(Lccsanandroid/graphics/Bitmap$CompressFormat;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lccsanandroid/graphics/Bitmap$CompressFormat;I)V
    .locals 0
    .param p1, "compressFormat"    # Lccsanandroid/graphics/Bitmap$CompressFormat;
    .param p2, "quality"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Lccsanandroid/graphics/Bitmap$CompressFormat;

    .line 37
    iput p2, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    .line 38
    return-void
.end method

.method private getFormat(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap$CompressFormat;
    .locals 1
    .param p1, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 60
    iget-object v0, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->compressFormat:Lccsanandroid/graphics/Bitmap$CompressFormat;

    if-eqz v0, :cond_0

    .line 61
    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lccsanandroid/graphics/Bitmap$CompressFormat;->PNG:Lccsanandroid/graphics/Bitmap$CompressFormat;

    return-object v0

    .line 65
    :cond_1
    sget-object v0, Lccsanandroid/graphics/Bitmap$CompressFormat;->JPEG:Lccsanandroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method


# virtual methods
.method public encode(Lccsancom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z
    .locals 8
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .line 42
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    .line 44
    .local v0, "bitmap":Lccsanandroid/graphics/Bitmap;
    invoke-static {}, Lccsancom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v1

    .line 45
    .local v1, "start":J
    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->getFormat(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap$CompressFormat;

    move-result-object v3

    .line 46
    .local v3, "format":Lccsanandroid/graphics/Bitmap$CompressFormat;
    iget v4, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->quality:I

    invoke-virtual {v0, v3, v4, p2}, Lccsanandroid/graphics/Bitmap;->compress(Lccsanandroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 47
    const-string v4, "BitmapEncoder"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 48
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Compressed with type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " of size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->getBitmapByteSize(Lccsanandroid/graphics/Bitmap;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lccsancom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    const/4 v4, 0x1

    return v4
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/io/OutputStream;

    .line 25
    move-object v0, p1

    check-cast v0, Lccsancom/bumptech/glide/load/engine/Resource;

    invoke-virtual {p0, v0, p2}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapEncoder;->encode(Lccsancom/bumptech/glide/load/engine/Resource;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 56
    const-string v0, "BitmapEncoder.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
