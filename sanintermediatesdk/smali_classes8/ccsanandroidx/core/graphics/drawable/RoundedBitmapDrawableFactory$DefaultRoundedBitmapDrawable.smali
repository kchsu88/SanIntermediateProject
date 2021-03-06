.class Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;
.super Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;
.source "RoundedBitmapDrawableFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultRoundedBitmapDrawable"
.end annotation


# direct methods
.method constructor <init>(Lccsanandroid/content/res/Resources;Lccsanandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .param p2, "bitmap"    # Lccsanandroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "res",
            "bitmap"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawable;-><init>(Lccsanandroid/content/res/Resources;Lccsanandroid/graphics/Bitmap;)V

    .line 44
    return-void
.end method


# virtual methods
.method gravityCompatApply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V
    .locals 6
    .param p1, "gravity"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I
    .param p4, "bounds"    # Lccsanandroid/graphics/Rect;
    .param p5, "outRect"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gravity",
            "bitmapWidth",
            "bitmapHeight",
            "bounds",
            "outRect"
        }
    .end annotation

    .line 62
    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lccsanandroidx/core/view/GravityCompat;->apply(IIILccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;I)V

    .line 64
    return-void
.end method

.method public hasMipMap()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    invoke-static {v0}, Lccsanandroidx/core/graphics/BitmapCompat;->hasMipMap(Lccsanandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setMipMap(Z)V
    .locals 1
    .param p1, "mipMap"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mipMap"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->mBitmap:Lccsanandroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/BitmapCompat;->setHasMipMap(Lccsanandroid/graphics/Bitmap;Z)V

    .line 50
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/RoundedBitmapDrawableFactory$DefaultRoundedBitmapDrawable;->invalidateSelf()V

    .line 52
    :cond_0
    return-void
.end method
