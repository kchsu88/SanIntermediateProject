.class public Lccsansan/bw/IncentiveDownloadUtils;
.super Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source ""


# instance fields
.field private final removeDownloadListener:F


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lccsanandroid/content/Context;)V

    int-to-float p1, p2

    .line 2
    iput p1, p0, Lccsansan/bw/IncentiveDownloadUtils;->removeDownloadListener:F

    return-void
.end method

.method private removeDownloadListener(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;
    .locals 5

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p2}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-interface {p1, v0, v1, v2}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance v0, Lccsanandroid/graphics/Canvas;

    invoke-direct {v0, p1}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 3
    new-instance v1, Lccsanandroid/graphics/Paint;

    invoke-direct {v1}, Lccsanandroid/graphics/Paint;-><init>()V

    .line 4
    new-instance v2, Lccsanandroid/graphics/BitmapShader;

    sget-object v3, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    invoke-direct {v2, p2, v3, v3}, Lccsanandroid/graphics/BitmapShader;-><init>(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Shader$TileMode;Lccsanandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-virtual {p2}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, p2}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    iget p2, p0, Lccsansan/bw/IncentiveDownloadUtils;->removeDownloadListener:F

    invoke-virtual {v0, v2, p2, p2, v1}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    return-object p1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lccsansan/bw/IncentiveDownloadUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/bw/IncentiveDownloadUtils;->removeDownloadListener:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected transform(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/bw/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
