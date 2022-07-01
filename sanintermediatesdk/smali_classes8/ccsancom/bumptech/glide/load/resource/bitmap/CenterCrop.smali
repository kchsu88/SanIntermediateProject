.class public Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;
.super Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "CenterCrop.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 17
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lccsanandroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 21
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 22
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "CenterCrop.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.method protected transform(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;
    .locals 3
    .param p1, "pool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "toTransform"    # Lccsanandroid/graphics/Bitmap;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .line 28
    invoke-virtual {p2}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lccsanandroid/graphics/Bitmap;->getConfig()Lccsanandroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    :goto_0
    invoke-interface {p1, p3, p4, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->get(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, "toReuse":Lccsanandroid/graphics/Bitmap;
    invoke-static {v0, p2, p3, p4}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->centerCrop(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    .local v1, "transformed":Lccsanandroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    invoke-interface {p1, v0}, Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;->put(Lccsanandroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 32
    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->recycle()V

    .line 34
    :cond_1
    return-object v1
.end method
