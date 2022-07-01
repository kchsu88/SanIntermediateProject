.class public final Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;
.super Ljava/lang/Object;
.source "TransformationUtils.java"


# static fields
.field public static final PAINT_FLAGS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "TransformationUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static centerCrop(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;
    .locals 8
    .param p0, "recycled"    # Lccsanandroid/graphics/Bitmap;
    .param p1, "toCrop"    # Lccsanandroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 42
    return-object p1

    .line 46
    :cond_1
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 47
    .local v1, "dy":F
    new-instance v2, Lccsanandroid/graphics/Matrix;

    invoke-direct {v2}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 48
    .local v2, "m":Lccsanandroid/graphics/Matrix;
    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int v3, v3, p3

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v4, v4, p2

    const/high16 v5, 0x3f000000    # 0.5f

    if-le v3, v4, :cond_2

    .line 49
    int-to-float v3, p3

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 50
    .local v3, "scale":F
    int-to-float v4, p2

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    sub-float/2addr v4, v6

    mul-float v0, v4, v5

    goto :goto_0

    .line 52
    .end local v3    # "scale":F
    :cond_2
    int-to-float v3, p2

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 53
    .restart local v3    # "scale":F
    int-to-float v4, p3

    invoke-virtual {p1}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v3

    sub-float/2addr v4, v6

    mul-float v1, v4, v5

    .line 56
    :goto_0
    invoke-virtual {v2, v3, v3}, Lccsanandroid/graphics/Matrix;->setScale(FF)V

    .line 57
    add-float v4, v0, v5

    float-to-int v4, v4

    int-to-float v4, v4

    add-float/2addr v5, v1

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Lccsanandroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    if-eqz p0, :cond_3

    .line 60
    move-object v4, p0

    .local v4, "result":Lccsanandroid/graphics/Bitmap;
    goto :goto_1

    .line 62
    .end local v4    # "result":Lccsanandroid/graphics/Bitmap;
    :cond_3
    invoke-static {p1}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {p2, p3, v4}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v4

    .line 66
    .restart local v4    # "result":Lccsanandroid/graphics/Bitmap;
    :goto_1
    invoke-static {p1, v4}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Bitmap;)V

    .line 68
    new-instance v5, Lccsanandroid/graphics/Canvas;

    invoke-direct {v5, v4}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 69
    .local v5, "canvas":Lccsanandroid/graphics/Canvas;
    new-instance v6, Lccsanandroid/graphics/Paint;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Lccsanandroid/graphics/Paint;-><init>(I)V

    .line 70
    .local v6, "paint":Lccsanandroid/graphics/Paint;
    invoke-virtual {v5, p1, v2, v6}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Paint;)V

    .line 71
    return-object v4
.end method

.method public static fitCenter(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Lccsanandroid/graphics/Bitmap;
    .locals 11
    .param p0, "toFit"    # Lccsanandroid/graphics/Bitmap;
    .param p1, "pool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 86
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    const-string v2, "TransformationUtils"

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 87
    invoke-static {v2, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "requested target size matches input, returning input"

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-object p0

    .line 92
    :cond_1
    int-to-float v0, p2

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 93
    .local v0, "widthPercentage":F
    int-to-float v3, p3

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 94
    .local v3, "heightPercentage":F
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 99
    .local v4, "minPercentage":F
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v4

    float-to-int v5, v5

    .line 100
    .local v5, "targetWidth":I
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    float-to-int v6, v6

    .line 102
    .local v6, "targetHeight":I
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, v5, :cond_3

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 103
    invoke-static {v2, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    const-string v1, "adjusted target size matches input, returning input"

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    return-object p0

    .line 109
    :cond_3
    invoke-static {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v7

    .line 110
    .local v7, "config":Lccsanandroid/graphics/Bitmap$Config;
    invoke-interface {p1, v5, v6, v7}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v8

    .line 111
    .local v8, "toReuse":Lccsanandroid/graphics/Bitmap;
    if-nez v8, :cond_4

    .line 112
    invoke-static {v5, v6, v7}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v8

    .line 115
    :cond_4
    invoke-static {p0, v8}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->setAlpha(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Bitmap;)V

    .line 117
    invoke-static {v2, v1}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "request: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "x"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "toFit:   "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "toReuse: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "minPct:   "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsanandroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_5
    new-instance v1, Lccsanandroid/graphics/Canvas;

    invoke-direct {v1, v8}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 125
    .local v1, "canvas":Lccsanandroid/graphics/Canvas;
    new-instance v2, Lccsanandroid/graphics/Matrix;

    invoke-direct {v2}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 126
    .local v2, "matrix":Lccsanandroid/graphics/Matrix;
    invoke-virtual {v2, v4, v4}, Lccsanandroid/graphics/Matrix;->setScale(FF)V

    .line 127
    new-instance v9, Lccsanandroid/graphics/Paint;

    const/4 v10, 0x6

    invoke-direct {v9, v10}, Lccsanandroid/graphics/Paint;-><init>(I)V

    .line 128
    .local v9, "paint":Lccsanandroid/graphics/Paint;
    invoke-virtual {v1, p0, v2, v9}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Paint;)V

    .line 130
    return-object v8
.end method

.method public static getExifOrientationDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .line 227
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 241
    .local v0, "degreesToRotate":I
    const/4 v0, 0x0

    goto :goto_0

    .line 238
    :pswitch_0
    const/16 v0, 0x10e

    .line 239
    goto :goto_0

    .line 230
    .end local v0    # "degreesToRotate":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 231
    .restart local v0    # "degreesToRotate":I
    goto :goto_0

    .line 234
    :pswitch_2
    const/16 v0, 0xb4

    .line 235
    nop

    .line 244
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 5
    .param p0, "pathToOriginal"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    const/4 v0, 0x0

    .line 161
    .local v0, "degreesToRotate":I
    :try_start_0
    new-instance v1, Lccsanandroid/media/ExifInterface;

    invoke-direct {v1, p0}, Lccsanandroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "exif":Lccsanandroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 163
    .local v2, "orientation":I
    invoke-static {v2}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getExifOrientationDegrees(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 164
    .end local v1    # "exif":Lccsanandroid/media/ExifInterface;
    .end local v2    # "orientation":I
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x6

    const-string v3, "TransformationUtils"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to get orientation for image with path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return v0
.end method

.method private static getSafeConfig(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap$Config;
    .locals 1
    .param p0, "bitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 285
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    :goto_0
    return-object v0
.end method

.method static initializeMatrixForRotation(ILccsanandroid/graphics/Matrix;)V
    .locals 5
    .param p0, "exifOrientation"    # I
    .param p1, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 290
    const/high16 v0, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 313
    :pswitch_0
    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Matrix;->setRotate(F)V

    .line 314
    goto :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Matrix;->setRotate(F)V

    .line 310
    invoke-virtual {p1, v4, v3}, Lccsanandroid/graphics/Matrix;->postScale(FF)Z

    .line 311
    goto :goto_0

    .line 306
    :pswitch_2
    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Matrix;->setRotate(F)V

    .line 307
    goto :goto_0

    .line 302
    :pswitch_3
    invoke-virtual {p1, v1}, Lccsanandroid/graphics/Matrix;->setRotate(F)V

    .line 303
    invoke-virtual {p1, v4, v3}, Lccsanandroid/graphics/Matrix;->postScale(FF)Z

    .line 304
    goto :goto_0

    .line 298
    :pswitch_4
    invoke-virtual {p1, v2}, Lccsanandroid/graphics/Matrix;->setRotate(F)V

    .line 299
    invoke-virtual {p1, v4, v3}, Lccsanandroid/graphics/Matrix;->postScale(FF)Z

    .line 300
    goto :goto_0

    .line 295
    :pswitch_5
    invoke-virtual {p1, v2}, Lccsanandroid/graphics/Matrix;->setRotate(F)V

    .line 296
    goto :goto_0

    .line 292
    :pswitch_6
    invoke-virtual {p1, v4, v3}, Lccsanandroid/graphics/Matrix;->setScale(FF)V

    .line 293
    nop

    .line 318
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static orientImage(Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;
    .locals 2
    .param p0, "pathToOriginal"    # Ljava/lang/String;
    .param p1, "imageToOrient"    # Lccsanandroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    invoke-static {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getOrientation(Ljava/lang/String;)I

    move-result v0

    .line 184
    .local v0, "degreesToRotate":I
    invoke-static {p1, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImage(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static rotateImage(Lccsanandroid/graphics/Bitmap;I)Lccsanandroid/graphics/Bitmap;
    .locals 9
    .param p0, "imageToOrient"    # Lccsanandroid/graphics/Bitmap;
    .param p1, "degreesToRotate"    # I

    .line 197
    move-object v0, p0

    .line 199
    .local v0, "result":Lccsanandroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 200
    :try_start_0
    new-instance v1, Lccsanandroid/graphics/Matrix;

    invoke-direct {v1}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 201
    .local v1, "matrix":Lccsanandroid/graphics/Matrix;
    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Matrix;->setRotate(F)V

    .line 202
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    move-object v2, p0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Lccsanandroid/graphics/Bitmap;->createBitmap(Lccsanandroid/graphics/Bitmap;IIIILccsanandroid/graphics/Matrix;Z)Lccsanandroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    .line 211
    .end local v1    # "matrix":Lccsanandroid/graphics/Matrix;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x6

    const-string v3, "TransformationUtils"

    invoke-static {v3, v2}, Lccsanandroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    const-string v2, "Exception when trying to orient image"

    invoke-static {v3, v2, v1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 215
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 216
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static rotateImageExif(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;I)Lccsanandroid/graphics/Bitmap;
    .locals 9
    .param p0, "toOrient"    # Lccsanandroid/graphics/Bitmap;
    .param p1, "pool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "exifOrientation"    # I

    .line 256
    new-instance v0, Lccsanandroid/graphics/Matrix;

    invoke-direct {v0}, Lccsanandroid/graphics/Matrix;-><init>()V

    .line 257
    .local v0, "matrix":Lccsanandroid/graphics/Matrix;
    invoke-static {p2, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->initializeMatrixForRotation(ILccsanandroid/graphics/Matrix;)V

    .line 258
    invoke-virtual {v0}, Lccsanandroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    return-object p0

    .line 263
    :cond_0
    new-instance v1, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    .local v1, "newRect":Lccsanandroid/graphics/RectF;
    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Matrix;->mapRect(Lccsanandroid/graphics/RectF;)Z

    .line 266
    invoke-virtual {v1}, Lccsanandroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 267
    .local v2, "newWidth":I
    invoke-virtual {v1}, Lccsanandroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 269
    .local v3, "newHeight":I
    invoke-static {p0}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->getSafeConfig(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 270
    .local v4, "config":Lccsanandroid/graphics/Bitmap$Config;
    invoke-interface {p1, v2, v3, v4}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v5

    .line 271
    .local v5, "result":Lccsanandroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 272
    invoke-static {v2, v3, v4}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v5

    .line 275
    :cond_1
    iget v6, v1, Lccsanandroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget v7, v1, Lccsanandroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v0, v6, v7}, Lccsanandroid/graphics/Matrix;->postTranslate(FF)Z

    .line 277
    new-instance v6, Lccsanandroid/graphics/Canvas;

    invoke-direct {v6, v5}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 278
    .local v6, "canvas":Lccsanandroid/graphics/Canvas;
    new-instance v7, Lccsanandroid/graphics/Paint;

    const/4 v8, 0x6

    invoke-direct {v7, v8}, Lccsanandroid/graphics/Paint;-><init>(I)V

    .line 279
    .local v7, "paint":Lccsanandroid/graphics/Paint;
    invoke-virtual {v6, p0, v0, v7}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Matrix;Lccsanandroid/graphics/Paint;)V

    .line 281
    return-object v5
.end method

.method public static setAlpha(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "toTransform"    # Lccsanandroid/graphics/Bitmap;
    .param p1, "outBitmap"    # Lccsanandroid/graphics/Bitmap;

    .line 143
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 146
    :cond_0
    return-void
.end method
