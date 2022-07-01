.class public Lccsancom/san/landingpage/widget/RoundCornerCoverView;
.super Lccsanandroid/view/View;
.source ""


# static fields
.field private static getDownloadingList:I

.field private static unifiedDownload:I


# instance fields
.field private coverColor:I

.field private leftBottomRadians:I

.field private leftTopRadians:I

.field private rightBottomRadians:I

.field private rightTopRadians:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->getDownloadingList:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lccsancom/san/landingpage/widget/RoundCornerCoverView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/landingpage/widget/RoundCornerCoverView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 4
    const/16 p3, 0x1e

    iput p3, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftTopRadians:I

    .line 5
    iput p3, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftBottomRadians:I

    .line 6
    iput p3, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightTopRadians:I

    .line 7
    iput p3, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightBottomRadians:I

    .line 9
    const p3, -0x151516

    iput p3, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->coverColor:I

    .line 22
    const-string p3, "san_CircularCoverView"

    invoke-static {p3}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedList(Ljava/lang/String;)[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object p1

    .line 23
    const-string p2, "left_top_radius"

    invoke-static {p3, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget v0, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftTopRadians:I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftTopRadians:I

    .line 24
    const-string p2, "left_bottom_radius"

    invoke-static {p3, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget v0, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftBottomRadians:I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftBottomRadians:I

    .line 25
    const-string p2, "right_top_radius"

    invoke-static {p3, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget v0, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightTopRadians:I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightTopRadians:I

    .line 26
    const-string p2, "right_bottom_radius"

    invoke-static {p3, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget v0, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightBottomRadians:I

    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightBottomRadians:I

    .line 27
    const-string p2, "cover_color"

    invoke-static {p3, p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget p3, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->coverColor:I

    invoke-virtual {p1, p2, p3}, Lccsanandroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->coverColor:I

    return-void
.end method

.method private drawRect(II)Lccsanandroid/graphics/Bitmap;
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 9
    .end local p1    # "w":I
    .end local p2    # "h":I
    nop

    .line 1
    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance p2, Lccsanandroid/graphics/Canvas;

    invoke-direct {p2, p1}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 3
    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    .line 4
    iget v2, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->coverColor:I

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 6
    new-instance v2, Lccsanandroid/graphics/RectF;

    iget v3, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftTopRadians:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, v3}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v2, v0}, Lccsanandroid/graphics/Canvas;->drawRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Paint;)V

    .line 7
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v3

    iget v5, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftBottomRadians:I

    neg-int v6, v5

    and-int v7, v3, v6

    xor-int/2addr v3, v6

    or-int/2addr v3, v7

    or-int v6, v7, v3

    shl-int/2addr v6, v1

    xor-int/2addr v3, v7

    sub-int/2addr v6, v3

    int-to-float v3, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v2, v4, v3, v5, v6}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v2, v0}, Lccsanandroid/graphics/Canvas;->drawRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Paint;)V

    .line 8
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    iget v5, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightTopRadians:I

    neg-int v5, v5

    xor-int v6, v3, v5

    and-int/2addr v3, v5

    shl-int/2addr v3, v1

    add-int/2addr v6, v3

    int-to-float v3, v6

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightTopRadians:I

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v2, v0}, Lccsanandroid/graphics/Canvas;->drawRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Paint;)V

    .line 9
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightBottomRadians:I

    neg-int v4, v4

    and-int/lit8 v5, v4, 0x0

    xor-int/lit8 v4, v4, -0x1

    and-int/lit8 v4, v4, -0x1

    or-int/2addr v4, v5

    neg-int v4, v4

    and-int v5, v3, v4

    or-int/2addr v3, v4

    add-int/2addr v5, v3

    xor-int/lit8 v3, v5, -0x1

    and-int/lit8 v4, v5, -0x1

    shl-int/2addr v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    iget v5, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightBottomRadians:I

    neg-int v5, v5

    or-int v6, v4, v5

    shl-int/2addr v6, v1

    xor-int/2addr v4, v5

    sub-int/2addr v6, v4

    int-to-float v4, v6

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2, v2, v0}, Lccsanandroid/graphics/Canvas;->drawRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Paint;)V

    sget p2, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->unifiedDownload:I

    and-int/lit8 v0, p2, 0x77

    xor-int/lit8 v2, v0, -0x1

    or-int/lit8 p2, p2, 0x77

    and-int/2addr p2, v2

    shl-int/2addr v0, v1

    add-int/2addr p2, v0

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    return-object p1
.end method

.method private drawSector(II)Lccsanandroid/graphics/Bitmap;
    .locals 9
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 9
    .end local p1    # "w":I
    .end local p2    # "h":I
    nop

    .line 1
    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance p2, Lccsanandroid/graphics/Canvas;

    invoke-direct {p2, p1}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 3
    new-instance v6, Lccsanandroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lccsanandroid/graphics/Paint;-><init>(I)V

    const/16 v0, -0x33bc

    .line 4
    invoke-virtual {v6, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 6
    new-instance v1, Lccsanandroid/graphics/RectF;

    iget v0, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftTopRadians:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v8, 0x0

    invoke-direct {v1, v8, v8, v0, v0}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43340000    # 180.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 7
    new-instance v1, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v0

    iget v2, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->leftBottomRadians:I

    mul-int/lit8 v2, v2, 0x2

    neg-int v3, v2

    and-int v4, v0, v3

    xor-int/lit8 v5, v4, -0x1

    or-int/2addr v0, v3

    and-int/2addr v0, v5

    shl-int/lit8 v3, v4, 0x1

    neg-int v3, v3

    neg-int v3, v3

    and-int v4, v0, v3

    or-int/2addr v0, v3

    add-int/2addr v4, v0

    int-to-float v0, v4

    int-to-float v2, v2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v8, v0, v2, v3}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 8
    new-instance v1, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightTopRadians:I

    mul-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    and-int/lit8 v3, v2, 0x0

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, -0x1

    or-int/2addr v2, v3

    neg-int v2, v2

    or-int v3, v0, v2

    shl-int/2addr v3, v7

    xor-int/2addr v0, v2

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x0

    sub-int/2addr v3, v7

    int-to-float v0, v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightTopRadians:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {v1, v0, v8, v2, v3}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43870000    # 270.0f

    const/high16 v3, 0x42b40000    # 90.0f

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 9
    new-instance v1, Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightBottomRadians:I

    mul-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    xor-int/lit8 v3, v2, -0x1

    and-int/2addr v3, v0

    xor-int/lit8 v4, v0, -0x1

    and-int/2addr v4, v2

    or-int/2addr v3, v4

    and-int/2addr v0, v2

    shl-int/2addr v0, v7

    xor-int v2, v3, v0

    and-int/2addr v0, v3

    shl-int/2addr v0, v7

    add-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->rightBottomRadians:I

    mul-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    xor-int v4, v2, v3

    and-int v5, v2, v3

    or-int/2addr v4, v5

    shl-int/2addr v4, v7

    xor-int/lit8 v5, v5, -0x1

    or-int/2addr v2, v3

    and-int/2addr v2, v5

    sub-int/2addr v4, v2

    int-to-float v2, v4

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    const/4 v2, 0x0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x1

    move-object v0, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    sget p2, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->getDownloadingList:I

    and-int/lit8 v0, p2, 0x57

    or-int/lit8 p2, p2, 0x57

    add-int/2addr v0, p2

    rem-int/lit16 p2, v0, 0x80

    sput p2, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 p2, 0x2b

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    :goto_0
    packed-switch p2, :pswitch_data_0

    return-object p1

    :pswitch_0
    const/16 p2, 0x30

    :try_start_0
    div-int/lit8 p2, p2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 22
    .end local p1    # "canvas":Lccsanandroid/graphics/Canvas;
    nop

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/view/View;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 2
    new-instance v0, Lccsanandroid/graphics/Paint;

    invoke-direct {v0}, Lccsanandroid/graphics/Paint;-><init>()V

    .line 3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4
    sget-object v2, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 10
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    .line 11
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_3

    .line 22
    :pswitch_0
    sget v2, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x39

    sub-int/2addr v2, v4

    or-int/lit8 v3, v2, -0x1

    shl-int/2addr v3, v4

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v3, v2

    rem-int/lit16 v2, v3, 0x80

    sput v2, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 11
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v2

    int-to-float v6, v2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v2

    int-to-float v7, v2

    packed-switch v4, :pswitch_data_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0xff

    const/16 v9, 0x1f

    goto :goto_2

    :pswitch_1
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/16 v8, 0xc58

    const/16 v9, 0x32

    :goto_2
    move-object v3, p1

    invoke-virtual/range {v3 .. v9}, Lccsanandroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v2

    .line 22
    nop

    .line 15
    :goto_3
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->drawSector(II)Lccsanandroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v4, v0}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;FFLccsanandroid/graphics/Paint;)V

    .line 17
    new-instance v3, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v5, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_OUT:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 19
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {p0, v3, v5}, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->drawRect(II)Lccsanandroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1, v3, v4, v4, v0}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;FFLccsanandroid/graphics/Paint;)V

    const/4 v3, 0x0

    .line 20
    invoke-virtual {v0, v3}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 22
    invoke-virtual {p1, v2}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    sget p1, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->getDownloadingList:I

    and-int/lit8 v0, p1, 0x39

    xor-int/lit8 p1, p1, 0x39

    or-int/2addr p1, v0

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/RoundCornerCoverView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 11
    const/16 p1, 0x34

    goto :goto_4

    :cond_2
    const/16 p1, 0x38

    :goto_4
    packed-switch p1, :pswitch_data_2

    .line 22
    goto :goto_5

    :pswitch_2
    return-void

    :goto_5
    const/16 p1, 0x27

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_2
    .end packed-switch
.end method
