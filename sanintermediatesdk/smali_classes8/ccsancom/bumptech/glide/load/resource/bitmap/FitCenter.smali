.class public Lccsancom/bumptech/glide/load/resource/bitmap/FitCenter;
.super Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "FitCenter.java"


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 15
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lccsanandroid/content/Context;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 19
    invoke-direct {p0, p1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 20
    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 29
    const-string v0, "FitCenter.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method

.method protected transform(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;
    .locals 1
    .param p1, "pool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "toTransform"    # Lccsanandroid/graphics/Bitmap;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .line 24
    invoke-static {p2, p1, p3, p4}, Lccsancom/bumptech/glide/load/resource/bitmap/TransformationUtils;->fitCenter(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;II)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
