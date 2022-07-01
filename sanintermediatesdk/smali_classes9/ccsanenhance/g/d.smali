.class public Lccsanenhance/g/d;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;
    .locals 12

    .line 1
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v9, Lccsanandroid/graphics/Canvas;

    invoke-direct {v9, v0}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 3
    new-instance v10, Lccsanandroid/graphics/Paint;

    invoke-direct {v10}, Lccsanandroid/graphics/Paint;-><init>()V

    .line 4
    new-instance v11, Lccsanandroid/graphics/Rect;

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v11, v3, v3, v1, v2}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 5
    new-instance v1, Lccsanandroid/graphics/RectF;

    invoke-direct {v1, v11}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/Rect;)V

    .line 6
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 7
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 9
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    move-object v1, v9

    move-object v8, v10

    invoke-virtual/range {v1 .. v8}, Lccsanandroid/graphics/Canvas;->drawRoundRect(FFFFFFLccsanandroid/graphics/Paint;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v9, v1, v2, v2, v10}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    .line 13
    :goto_0
    new-instance v1, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v2, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v1}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 14
    invoke-virtual {v9, p0, v11, v11, v10}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    return-object v0
.end method

.method public static a(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;
    .locals 5

    .line 15
    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 16
    new-instance v1, Lccsanandroid/graphics/Canvas;

    invoke-direct {v1, v0}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 17
    invoke-virtual {v1}, Lccsanandroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lccsanandroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    invoke-virtual {p0, v1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    return-object v0
.end method
