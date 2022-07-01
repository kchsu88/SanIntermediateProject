.class public abstract Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;
.super Ljava/lang/Object;
.source "Downsampler.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDecoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/resource/bitmap/BitmapDecoder<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final AT_LEAST:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

.field public static final AT_MOST:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final MARK_POSITION:I = 0x500000

.field public static final NONE:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

.field private static final OPTIONS_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lccsanandroid/graphics/BitmapFactory$Options;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Downsampler"

.field private static final TYPES_THAT_USE_POOL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v1, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v2, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lccsancom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    .line 38
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler$1;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler$1;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_LEAST:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 54
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler$2;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler$2;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->AT_MOST:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    .line 72
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler$3;

    invoke-direct {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler$3;-><init>()V

    sput-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->NONE:Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeStream(Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lccsanandroid/graphics/BitmapFactory$Options;)Lccsanandroid/graphics/Bitmap;
    .locals 5
    .param p0, "is"    # Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .param p1, "bufferedStream"    # Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .param p2, "options"    # Lccsanandroid/graphics/BitmapFactory$Options;

    .line 315
    iget-boolean v0, p2, Lccsanandroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v0, :cond_0

    .line 321
    const/high16 v0, 0x500000

    invoke-virtual {p0, v0}, Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;->mark(I)V

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p1}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;->fixMarkLimit()V

    .line 329
    :goto_0
    const/4 v0, 0x0

    invoke-static {p0, v0, p2}, Lccsanandroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/BitmapFactory$Options;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 332
    .local v0, "result":Lccsanandroid/graphics/Bitmap;
    :try_start_0
    iget-boolean v1, p2, Lccsanandroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {p0}, Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_1
    goto :goto_1

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x6

    const-string v3, "Downsampler"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception loading inDecodeBounds="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p2, Lccsanandroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " sample="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p2, Lccsanandroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 342
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-object v0
.end method

.method private downsampleWithSize(Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lccsanandroid/graphics/BitmapFactory$Options;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;
    .locals 6
    .param p1, "is"    # Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .param p2, "bufferedStream"    # Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .param p3, "options"    # Lccsanandroid/graphics/BitmapFactory$Options;
    .param p4, "pool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p5, "inWidth"    # I
    .param p6, "inHeight"    # I
    .param p7, "sampleSize"    # I
    .param p8, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 211
    invoke-static {p1, p8}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->getConfig(Ljava/io/InputStream;Lccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 212
    .local v0, "config":Lccsanandroid/graphics/Bitmap$Config;
    iput p7, p3, Lccsanandroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 213
    iput-object v0, p3, Lccsanandroid/graphics/BitmapFactory$Options;->inPreferredConfig:Lccsanandroid/graphics/Bitmap$Config;

    .line 214
    iget v1, p3, Lccsanandroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/16 v1, 0x13

    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_1

    :cond_0
    invoke-static {p1}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->shouldUsePool(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    int-to-double v1, p5

    int-to-double v3, p7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 216
    .local v1, "targetWidth":I
    int-to-double v2, p6

    int-to-double v4, p7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 218
    .local v2, "targetHeight":I
    invoke-interface {p4, v1, v2, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->getDirty(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {p3, v3}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->setInBitmap(Lccsanandroid/graphics/BitmapFactory$Options;Lccsanandroid/graphics/Bitmap;)V

    .line 220
    .end local v1    # "targetWidth":I
    .end local v2    # "targetHeight":I
    :cond_1
    invoke-static {p1, p2, p3}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lccsanandroid/graphics/BitmapFactory$Options;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private static getConfig(Ljava/io/InputStream;Lccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap$Config;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "format"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 254
    const-string v0, "Cannot reset the input stream"

    const-string v1, "Downsampler"

    sget-object v2, Lccsancom/bumptech/glide/load/DecodeFormat;->ALWAYS_ARGB_8888:Lccsancom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v2, :cond_5

    sget-object v2, Lccsancom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lccsancom/bumptech/glide/load/DecodeFormat;

    if-eq p1, v2, :cond_5

    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    goto :goto_6

    .line 259
    :cond_0
    const/4 v2, 0x0

    .line 261
    .local v2, "hasAlpha":Z
    const/16 v3, 0x400

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->mark(I)V

    .line 263
    const/4 v3, 0x5

    :try_start_0
    new-instance v4, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v4, p0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->hasAlpha()Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .line 270
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :goto_0
    goto :goto_2

    .line 271
    :catch_0
    move-exception v4

    .line 272
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    :goto_1
    invoke-static {v1, v0, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    goto :goto_2

    .line 269
    :catchall_0
    move-exception v4

    goto :goto_4

    .line 264
    :catch_1
    move-exception v4

    .line 265
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v1, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot determine whether the image has alpha or not from header for format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 270
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 271
    :catch_2
    move-exception v4

    .line 272
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-static {v1, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    goto :goto_1

    .line 278
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    if-eqz v2, :cond_3

    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    goto :goto_3

    :cond_3
    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->RGB_565:Lccsanandroid/graphics/Bitmap$Config;

    :goto_3
    return-object v0

    .line 270
    :goto_4
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 275
    goto :goto_5

    .line 271
    :catch_3
    move-exception v5

    .line 272
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v3}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 273
    invoke-static {v1, v0, v5}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v5    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    throw v4

    .line 256
    .end local v2    # "hasAlpha":Z
    :cond_5
    :goto_6
    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private static declared-synchronized getDefaultOptions()Lccsanandroid/graphics/BitmapFactory$Options;
    .locals 4

    const-class v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;

    monitor-enter v0

    .line 355
    :try_start_0
    sget-object v1, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 356
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/graphics/BitmapFactory$Options;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 357
    .local v2, "decodeBitmapOptions":Lccsanandroid/graphics/BitmapFactory$Options;
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    if-nez v2, :cond_0

    .line 359
    :try_start_3
    new-instance v1, Lccsanandroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Lccsanandroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v1

    .line 360
    invoke-static {v2}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Lccsanandroid/graphics/BitmapFactory$Options;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 363
    :cond_0
    monitor-exit v0

    return-object v2

    .line 357
    .end local v2    # "decodeBitmapOptions":Lccsanandroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v3

    .restart local v2    # "decodeBitmapOptions":Lccsanandroid/graphics/BitmapFactory$Options;
    :goto_0
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_1
    move-exception v3

    goto :goto_0

    .line 354
    .end local v2    # "decodeBitmapOptions":Lccsanandroid/graphics/BitmapFactory$Options;
    :catchall_2
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private getRoundedSampleSize(IIIII)I
    .locals 5
    .param p1, "degreesToRotate"    # I
    .param p2, "inWidth"    # I
    .param p3, "inHeight"    # I
    .param p4, "outWidth"    # I
    .param p5, "outHeight"    # I

    .line 184
    const/high16 v0, -0x80000000

    if-ne p5, v0, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    move v1, p5

    .line 185
    .local v1, "targetHeight":I
    :goto_0
    if-ne p4, v0, :cond_1

    move v0, p2

    goto :goto_1

    :cond_1
    move v0, p4

    .line 188
    .local v0, "targetWidth":I
    :goto_1
    const/16 v2, 0x5a

    if-eq p1, v2, :cond_3

    const/16 v2, 0x10e

    if-ne p1, v2, :cond_2

    goto :goto_2

    .line 194
    :cond_2
    invoke-virtual {p0, p2, p3, v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v2

    .local v2, "exactSampleSize":I
    goto :goto_3

    .line 192
    .end local v2    # "exactSampleSize":I
    :cond_3
    :goto_2
    invoke-virtual {p0, p3, p2, v0, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->getSampleSize(IIII)I

    move-result v2

    .line 201
    .restart local v2    # "exactSampleSize":I
    :goto_3
    if-nez v2, :cond_4

    const/4 v3, 0x0

    goto :goto_4

    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v3

    .line 204
    .local v3, "powerOfTwoSampleSize":I
    :goto_4
    const/4 v4, 0x1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    return v4
.end method

.method private static releaseOptions(Lccsanandroid/graphics/BitmapFactory$Options;)V
    .locals 2
    .param p0, "decodeBitmapOptions"    # Lccsanandroid/graphics/BitmapFactory$Options;

    .line 367
    invoke-static {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->resetOptions(Lccsanandroid/graphics/BitmapFactory$Options;)V

    .line 368
    sget-object v0, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->OPTIONS_QUEUE:Ljava/util/Queue;

    monitor-enter v0

    .line 369
    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 370
    monitor-exit v0

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static resetOptions(Lccsanandroid/graphics/BitmapFactory$Options;)V
    .locals 4
    .param p0, "decodeBitmapOptions"    # Lccsanandroid/graphics/BitmapFactory$Options;

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 376
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 377
    iput-boolean v1, p0, Lccsanandroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 378
    const/4 v2, 0x1

    iput v2, p0, Lccsanandroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 379
    iput-object v0, p0, Lccsanandroid/graphics/BitmapFactory$Options;->inPreferredConfig:Lccsanandroid/graphics/Bitmap$Config;

    .line 380
    iput-boolean v1, p0, Lccsanandroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 381
    iput v1, p0, Lccsanandroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 382
    iput v1, p0, Lccsanandroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 383
    iput-object v0, p0, Lccsanandroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 385
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-gt v3, v1, :cond_0

    .line 386
    iput-object v0, p0, Lccsanandroid/graphics/BitmapFactory$Options;->inBitmap:Lccsanandroid/graphics/Bitmap;

    .line 387
    iput-boolean v2, p0, Lccsanandroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 389
    :cond_0
    return-void
.end method

.method private static setInBitmap(Lccsanandroid/graphics/BitmapFactory$Options;Lccsanandroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "options"    # Lccsanandroid/graphics/BitmapFactory$Options;
    .param p1, "recycled"    # Lccsanandroid/graphics/Bitmap;

    .line 347
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-gt v1, v0, :cond_0

    .line 348
    iput-object p1, p0, Lccsanandroid/graphics/BitmapFactory$Options;->inBitmap:Lccsanandroid/graphics/Bitmap;

    .line 350
    :cond_0
    return-void
.end method

.method private static shouldUsePool(Ljava/io/InputStream;)Z
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;

    .line 225
    const-string v0, "Cannot reset the input stream"

    const-string v1, "Downsampler"

    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v3, v2, :cond_0

    .line 226
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_0
    const/16 v2, 0x400

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 231
    const/4 v2, 0x5

    :try_start_0
    new-instance v3, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v3, p0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getType()Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    move-result-object v3

    .line 234
    .local v3, "type":Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    sget-object v4, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->TYPES_THAT_USE_POOL:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    goto :goto_0

    .line 242
    :catch_0
    move-exception v5

    .line 243
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-static {v1, v0, v5}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return v4

    .line 240
    .end local v3    # "type":Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 235
    :catch_1
    move-exception v3

    .line 236
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v1, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    const-string v4, "Cannot determine the image type from header"

    invoke-static {v1, v4, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    goto :goto_1

    .line 242
    :catch_2
    move-exception v3

    .line 243
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v1, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    invoke-static {v1, v0, v3}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    nop

    .line 248
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 241
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 246
    goto :goto_3

    .line 242
    :catch_3
    move-exception v4

    .line 243
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    invoke-static {v1, v0, v4}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    :goto_3
    throw v3
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;
    .locals 23
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "pool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "decodeFormat"    # Lccsancom/bumptech/glide/load/DecodeFormat;

    .line 108
    move-object/from16 v10, p2

    const-string v1, "Cannot reset the input stream"

    const-string v2, "Downsampler"

    invoke-static {}, Lccsancom/bumptech/glide/util/ByteArrayPool;->get()Lccsancom/bumptech/glide/util/ByteArrayPool;

    move-result-object v11

    .line 109
    .local v11, "byteArrayPool":Lccsancom/bumptech/glide/util/ByteArrayPool;
    invoke-virtual {v11}, Lccsancom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v12

    .line 110
    .local v12, "bytesForOptions":[B
    invoke-virtual {v11}, Lccsancom/bumptech/glide/util/ByteArrayPool;->getBytes()[B

    move-result-object v13

    .line 111
    .local v13, "bytesForStream":[B
    invoke-static {}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->getDefaultOptions()Lccsanandroid/graphics/BitmapFactory$Options;

    move-result-object v14

    .line 114
    .local v14, "options":Lccsanandroid/graphics/BitmapFactory$Options;
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    move-object/from16 v15, p1

    invoke-direct {v0, v15, v13}, Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;[B)V

    move-object v9, v0

    .line 119
    .local v9, "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    invoke-static {v9}, Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;->obtain(Ljava/io/InputStream;)Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;

    move-result-object v7

    .line 124
    .local v7, "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    new-instance v0, Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;

    invoke-direct {v0, v7}, Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v0

    .line 126
    .local v6, "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    const/high16 v0, 0x500000

    :try_start_0
    invoke-virtual {v7, v0}, Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 127
    const/4 v3, 0x0

    .line 129
    .local v3, "orientation":I
    const/4 v4, 0x5

    :try_start_1
    new-instance v0, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;

    invoke-direct {v0, v7}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;->getOrientation()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v3, v0

    .line 136
    :try_start_2
    invoke-virtual {v7}, Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    :goto_0
    goto :goto_2

    .line 176
    .end local v3    # "orientation":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    goto/16 :goto_6

    .line 137
    .restart local v3    # "orientation":I
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 138
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v2, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    nop

    .line 144
    :goto_2
    move v0, v3

    goto :goto_3

    .line 135
    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object/from16 v16, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    goto/16 :goto_4

    .line 130
    :catch_1
    move-exception v0

    .line 131
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {v2, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_1

    .line 132
    :try_start_5
    const-string v5, "Cannot determine the image orientation from header"

    invoke-static {v2, v5, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_6
    invoke-virtual {v7}, Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 137
    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 138
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-static {v2, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v4, :cond_0

    .line 139
    :try_start_8
    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 144
    .end local v3    # "orientation":I
    .local v0, "orientation":I
    :goto_3
    :try_start_9
    iput-object v12, v14, Lccsanandroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 146
    move-object/from16 v5, p0

    invoke-virtual {v5, v6, v9, v14}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->getDimensions(Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lccsanandroid/graphics/BitmapFactory$Options;)[I

    move-result-object v1

    move-object/from16 v22, v1

    .line 147
    .local v22, "inDimens":[I
    const/4 v1, 0x0

    aget v18, v22, v1

    .line 148
    .local v18, "inWidth":I
    const/4 v1, 0x1

    aget v19, v22, v1

    .line 150
    .local v19, "inHeight":I
    invoke-static {v0}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v17

    .line 151
    .local v17, "degreesToRotate":I
    move-object/from16 v16, p0

    move/from16 v20, p3

    move/from16 v21, p4

    invoke-direct/range {v16 .. v21}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->getRoundedSampleSize(IIIII)I

    move-result v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 153
    .local v8, "sampleSize":I
    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    move-object v4, v14

    move-object/from16 v5, p2

    move-object/from16 v16, v6

    .end local v6    # "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .local v16, "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    move/from16 v6, v18

    move-object/from16 v20, v7

    .end local v7    # "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    .local v20, "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    move/from16 v7, v19

    move-object/from16 v21, v9

    .end local v9    # "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .local v21, "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    move-object/from16 v9, p5

    :try_start_a
    invoke-direct/range {v1 .. v9}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->downsampleWithSize(Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lccsanandroid/graphics/BitmapFactory$Options;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IIILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 160
    .local v1, "downsampled":Lccsanandroid/graphics/Bitmap;
    invoke-virtual/range {v20 .. v20}, Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;->getException()Ljava/io/IOException;

    move-result-object v2

    .line 161
    .local v2, "streamException":Ljava/lang/Exception;
    if-nez v2, :cond_3

    .line 165
    const/4 v3, 0x0

    .line 166
    .local v3, "rotated":Lccsanandroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 167
    invoke-static {v1, v10, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImageExif(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Lccsanandroid/graphics/Bitmap;

    move-result-object v4

    move-object v3, v4

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v10, v1}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Lccsanandroid/graphics/Bitmap;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    invoke-virtual {v1}, Lccsanandroid/graphics/Bitmap;->recycle()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 174
    :cond_2
    nop

    .line 176
    invoke-virtual {v11, v12}, Lccsancom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 177
    invoke-virtual {v11, v13}, Lccsancom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 178
    invoke-virtual/range {v20 .. v20}, Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 179
    invoke-static {v14}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Lccsanandroid/graphics/BitmapFactory$Options;)V

    return-object v3

    .line 162
    .end local v3    # "rotated":Lccsanandroid/graphics/Bitmap;
    :cond_3
    :try_start_b
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v11    # "byteArrayPool":Lccsancom/bumptech/glide/util/ByteArrayPool;
    .end local v12    # "bytesForOptions":[B
    .end local v13    # "bytesForStream":[B
    .end local v14    # "options":Lccsanandroid/graphics/BitmapFactory$Options;
    .end local v16    # "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .end local v20    # "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    .end local v21    # "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "pool":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local p3    # "outWidth":I
    .end local p4    # "outHeight":I
    .end local p5    # "decodeFormat":Lccsancom/bumptech/glide/load/DecodeFormat;
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 135
    .end local v0    # "orientation":I
    .end local v1    # "downsampled":Lccsanandroid/graphics/Bitmap;
    .end local v2    # "streamException":Ljava/lang/Exception;
    .end local v8    # "sampleSize":I
    .end local v17    # "degreesToRotate":I
    .end local v18    # "inWidth":I
    .end local v19    # "inHeight":I
    .end local v22    # "inDimens":[I
    .local v3, "orientation":I
    .restart local v6    # "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .restart local v7    # "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    .restart local v9    # "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v11    # "byteArrayPool":Lccsancom/bumptech/glide/util/ByteArrayPool;
    .restart local v12    # "bytesForOptions":[B
    .restart local v13    # "bytesForStream":[B
    .restart local v14    # "options":Lccsanandroid/graphics/BitmapFactory$Options;
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "pool":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local p3    # "outWidth":I
    .restart local p4    # "outHeight":I
    .restart local p5    # "decodeFormat":Lccsancom/bumptech/glide/load/DecodeFormat;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move-object v5, v0

    .line 136
    .end local v6    # "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .end local v7    # "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    .end local v9    # "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v16    # "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .restart local v20    # "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    .restart local v21    # "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :goto_4
    :try_start_c
    invoke-virtual/range {v20 .. v20}, Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;->reset()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 141
    goto :goto_5

    .line 176
    .end local v3    # "orientation":I
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 137
    .restart local v3    # "orientation":I
    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 138
    .local v0, "e":Ljava/io/IOException;
    :try_start_d
    invoke-static {v2, v4}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 139
    invoke-static {v2, v1, v0}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :goto_5
    nop

    .end local v11    # "byteArrayPool":Lccsancom/bumptech/glide/util/ByteArrayPool;
    .end local v12    # "bytesForOptions":[B
    .end local v13    # "bytesForStream":[B
    .end local v14    # "options":Lccsanandroid/graphics/BitmapFactory$Options;
    .end local v16    # "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .end local v20    # "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    .end local v21    # "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .end local p1    # "is":Ljava/io/InputStream;
    .end local p2    # "pool":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .end local p3    # "outWidth":I
    .end local p4    # "outHeight":I
    .end local p5    # "decodeFormat":Lccsancom/bumptech/glide/load/DecodeFormat;
    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 176
    .end local v3    # "orientation":I
    .restart local v6    # "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .restart local v7    # "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    .restart local v9    # "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v11    # "byteArrayPool":Lccsancom/bumptech/glide/util/ByteArrayPool;
    .restart local v12    # "bytesForOptions":[B
    .restart local v13    # "bytesForStream":[B
    .restart local v14    # "options":Lccsanandroid/graphics/BitmapFactory$Options;
    .restart local p1    # "is":Ljava/io/InputStream;
    .restart local p2    # "pool":Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .restart local p3    # "outWidth":I
    .restart local p4    # "outHeight":I
    .restart local p5    # "decodeFormat":Lccsancom/bumptech/glide/load/DecodeFormat;
    :catchall_4
    move-exception v0

    move-object/from16 v16, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    .end local v6    # "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .end local v7    # "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    .end local v9    # "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .restart local v16    # "invalidatingStream":Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .restart local v20    # "exceptionStream":Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;
    .restart local v21    # "bufferedStream":Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    :goto_6
    invoke-virtual {v11, v12}, Lccsancom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 177
    invoke-virtual {v11, v13}, Lccsancom/bumptech/glide/util/ByteArrayPool;->releaseBytes([B)Z

    .line 178
    invoke-virtual/range {v20 .. v20}, Lccsancom/bumptech/glide/util/ExceptionCatchingInputStream;->release()V

    .line 179
    invoke-static {v14}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->releaseOptions(Lccsanandroid/graphics/BitmapFactory$Options;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
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

    .line 26
    move-object v1, p1

    check-cast v1, Ljava/io/InputStream;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->decode(Ljava/io/InputStream;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;IILccsancom/bumptech/glide/load/DecodeFormat;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDimensions(Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lccsanandroid/graphics/BitmapFactory$Options;)[I
    .locals 4
    .param p1, "is"    # Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;
    .param p2, "bufferedStream"    # Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;
    .param p3, "options"    # Lccsanandroid/graphics/BitmapFactory$Options;

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p3, Lccsanandroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    invoke-static {p1, p2, p3}, Lccsancom/bumptech/glide/load/resource/bitmap/Downsampler;->decodeStream(Lccsancom/bumptech/glide/util/MarkEnforcingInputStream;Lccsancom/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream;Lccsanandroid/graphics/BitmapFactory$Options;)Lccsanandroid/graphics/Bitmap;

    .line 309
    const/4 v1, 0x0

    iput-boolean v1, p3, Lccsanandroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget v3, p3, Lccsanandroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v3, v2, v1

    iget v1, p3, Lccsanandroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v1, v2, v0

    return-object v2
.end method

.method protected abstract getSampleSize(IIII)I
.end method
