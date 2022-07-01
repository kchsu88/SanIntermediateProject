.class public abstract Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.super Ljava/lang/Object;
.source "BitmapTransformation.java"

# interfaces
.implements Lccsancom/bumptech/glide/load/Transformation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/bumptech/glide/load/Transformation<",
        "Lccsanandroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 38
    invoke-static {p1}, Lccsancom/bumptech/glide/Glide;->get(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/Glide;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/bumptech/glide/Glide;->getBitmapPool()Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V
    .locals 0
    .param p1, "bitmapPool"    # Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 43
    return-void
.end method


# virtual methods
.method protected abstract transform(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;
.end method

.method public final transform(Lccsancom/bumptech/glide/load/engine/Resource;II)Lccsancom/bumptech/glide/load/engine/Resource;
    .locals 5
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;II)",
            "Lccsancom/bumptech/glide/load/engine/Resource<",
            "Lccsanandroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 47
    .local p1, "resource":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    invoke-static {p2, p3}, Lccsancom/bumptech/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    invoke-interface {p1}, Lccsancom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/Bitmap;

    .line 52
    .local v0, "toTransform":Lccsanandroid/graphics/Bitmap;
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p2

    .line 53
    .local v2, "targetWidth":I
    :goto_0
    if-ne p3, v1, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, p3

    .line 54
    .local v1, "targetHeight":I
    :goto_1
    iget-object v3, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-virtual {p0, v3, v0, v2, v1}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;->transform(Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;

    move-result-object v3

    .line 57
    .local v3, "transformed":Lccsanandroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 58
    move-object v4, p1

    .local v4, "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    goto :goto_2

    .line 60
    .end local v4    # "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    :cond_2
    iget-object v4, p0, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;->bitmapPool:Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-static {v3, v4}, Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;->obtain(Lccsanandroid/graphics/Bitmap;Lccsancom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lccsancom/bumptech/glide/load/resource/bitmap/BitmapResource;

    move-result-object v4

    .line 63
    .restart local v4    # "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    :goto_2
    return-object v4

    .line 48
    .end local v0    # "toTransform":Lccsanandroid/graphics/Bitmap;
    .end local v1    # "targetHeight":I
    .end local v2    # "targetWidth":I
    .end local v3    # "transformed":Lccsanandroid/graphics/Bitmap;
    .end local v4    # "result":Lccsancom/bumptech/glide/load/engine/Resource;, "Lccsancom/bumptech/glide/load/engine/Resource<Lccsanandroid/graphics/Bitmap;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot apply transformation on width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " or height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " less than or equal to zero and not Target.SIZE_ORIGINAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
