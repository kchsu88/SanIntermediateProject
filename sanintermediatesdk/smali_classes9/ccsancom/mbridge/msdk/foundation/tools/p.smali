.class public final Lccsancom/mbridge/msdk/foundation/tools/p;
.super Ljava/lang/Object;
.source "SameImageTool.java"


# direct methods
.method public static a(Lccsanandroid/graphics/Bitmap;II)Lccsanandroid/graphics/Bitmap;
    .locals 12

    .line 14
    nop

    .line 15
    if-nez p2, :cond_0

    .line 16
    return-object p0

    .line 18
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 19
    sget-object v3, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 20
    new-instance v9, Lccsanandroid/graphics/Canvas;

    invoke-direct {v9, v0}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 21
    new-instance v10, Lccsanandroid/graphics/Paint;

    invoke-direct {v10}, Lccsanandroid/graphics/Paint;-><init>()V

    .line 22
    new-instance v11, Lccsanandroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v11, v3, v3, v1, v2}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 23
    new-instance v4, Lccsanandroid/graphics/RectF;

    invoke-direct {v4, v11}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/Rect;)V

    .line 24
    int-to-float v5, p2

    .line 25
    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 26
    new-instance v6, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v7, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_OVER:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, v6}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 27
    invoke-virtual {v9, v3, v3, v3, v3}, Lccsanandroid/graphics/Canvas;->drawARGB(IIII)V

    .line 28
    const v3, -0xbdbdbe

    invoke-virtual {v10, v3}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 29
    invoke-virtual {v9, v4, v5, v5, v10}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    .line 30
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 33
    :pswitch_0
    const/4 v4, 0x0

    sub-int p1, v2, p2

    int-to-float v5, p1

    int-to-float v6, v1

    int-to-float v7, v2

    move-object v3, v9

    move-object v8, v10

    invoke-virtual/range {v3 .. v8}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 36
    :goto_0
    new-instance p1, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object p2, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v10, p1}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 37
    invoke-virtual {v9, p0, v11, v11, v10}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 39
    :catch_0
    move-exception p0

    goto :goto_2

    .line 38
    :catch_1
    move-exception p0

    .line 40
    :goto_1
    nop

    .line 41
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
