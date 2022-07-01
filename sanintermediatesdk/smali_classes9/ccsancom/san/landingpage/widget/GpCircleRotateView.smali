.class public Lccsancom/san/landingpage/widget/GpCircleRotateView;
.super Lccsanandroid/view/View;
.source ""


# static fields
.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# instance fields
.field private center:F

.field private circlePaint:Lccsanandroid/graphics/Paint;

.field private endSpeed:I

.field private isAnimate:Z

.field private volatile isCircled:Z

.field private isInstallAnimate:Z

.field private lineBgPaint:Lccsanandroid/graphics/Paint;

.field private linePaint:Lccsanandroid/graphics/Paint;

.field private lineWidth:I

.field private margin:I

.field private radius:F

.field private rect:Lccsanandroid/graphics/RectF;

.field private startAngle:F

.field private startSpeed:I

.field private sweepAngle:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isCircled:Z

    .line 3
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    .line 4
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isInstallAnimate:Z

    .line 5
    const/high16 p1, -0x3d4c0000    # -90.0f

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    .line 6
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    .line 21
    const/4 p1, 0x3

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->margin:I

    .line 22
    const/4 p1, 0x6

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineWidth:I

    .line 23
    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startSpeed:I

    .line 24
    const/16 p1, 0x8

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->endSpeed:I

    .line 29
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->linePaint:Lccsanandroid/graphics/Paint;

    .line 30
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->circlePaint:Lccsanandroid/graphics/Paint;

    .line 31
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/View;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 33
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isCircled:Z

    .line 34
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    .line 35
    iput-boolean p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isInstallAnimate:Z

    .line 36
    const/high16 p1, -0x3d4c0000    # -90.0f

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    .line 37
    const/4 p1, 0x0

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    .line 52
    const/4 p1, 0x3

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->margin:I

    .line 53
    const/4 p1, 0x6

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineWidth:I

    .line 54
    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startSpeed:I

    .line 55
    const/16 p1, 0x8

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->endSpeed:I

    .line 68
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->linePaint:Lccsanandroid/graphics/Paint;

    .line 69
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->circlePaint:Lccsanandroid/graphics/Paint;

    .line 70
    new-instance p1, Lccsanandroid/graphics/Paint;

    invoke-direct {p1}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    return-void
.end method

.method private initData()V
    .locals 5

    .line 10
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->linePaint:Lccsanandroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x4

    const/16 v3, 0x86

    const/16 v4, 0x60

    invoke-static {v1, v2, v3, v4}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->linePaint:Lccsanandroid/graphics/Paint;

    sget-object v1, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->linePaint:Lccsanandroid/graphics/Paint;

    iget v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v1}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    sget-object v2, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    iget v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->circlePaint:Lccsanandroid/graphics/Paint;

    invoke-static {v1, v1, v1, v1}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 10
    new-instance v0, Lccsanandroid/graphics/RectF;

    iget v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->center:F

    iget v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->radius:F

    sub-float v3, v1, v2

    iget v4, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->margin:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-direct {v0, v3, v3, v1, v1}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->rect:Lccsanandroid/graphics/RectF;

    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x1a

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private resetCircle()V
    .locals 4

    .line 4
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x6d

    and-int/lit8 v0, v0, 0x6d

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v0, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/high16 v3, -0x3d4c0000    # -90.0f

    packed-switch v1, :pswitch_data_0

    .line 1
    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isCircled:Z

    .line 2
    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    .line 3
    iput v3, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    const/4 v0, 0x0

    goto :goto_1

    .line 1
    :pswitch_0
    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isCircled:Z

    .line 2
    iput-boolean v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    .line 3
    iput v3, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    :goto_1
    iput v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 27
    .end local p1    # "canvas":Lccsanandroid/graphics/Canvas;
    nop

    .line 8
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x27

    and-int/lit8 v2, v0, 0x27

    or-int/2addr v1, v2

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v0, v0, 0x27

    and-int/2addr v0, v2

    neg-int v0, v0

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/view/View;->onDraw(Lccsanandroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->radius:F

    iget-object v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->circlePaint:Lccsanandroid/graphics/Paint;

    .restart local p1    # "canvas":Lccsanandroid/graphics/Canvas;
    invoke-virtual {p1, v0, v0, v0, v1}, Lccsanandroid/graphics/Canvas;->drawCircle(FFFLccsanandroid/graphics/Paint;)V

    .line 3
    iget-object v5, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->rect:Lccsanandroid/graphics/RectF;

    iget v6, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    iget-object v9, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    const/high16 v7, 0x43b40000    # 360.0f

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 4
    iget-object v5, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->rect:Lccsanandroid/graphics/RectF;

    iget v6, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    iget v7, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    iget-object v9, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->linePaint:Lccsanandroid/graphics/Paint;

    .end local p1    # "canvas":Lccsanandroid/graphics/Canvas;
    invoke-virtual/range {v4 .. v9}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 6
    iget-boolean v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isCircled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 22
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    xor-int/lit8 v2, v0, 0x2b

    and-int/lit8 v4, v0, 0x2b

    or-int/2addr v2, v4

    shl-int/2addr v2, v3

    xor-int/lit8 v4, v4, -0x1

    or-int/lit8 v0, v0, 0x2b

    and-int/2addr v0, v4

    neg-int v0, v0

    and-int v4, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    goto :goto_5

    .line 19
    :pswitch_0
    iget v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    iget v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startSpeed:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    .line 20
    iget v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    const/high16 v2, 0x41000000    # 8.0f

    add-float/2addr v0, v2

    iput v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    const/high16 v2, 0x43af0000    # 350.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 8
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 10
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    xor-int/lit8 v2, v0, 0x7

    and-int/lit8 v0, v0, 0x7

    or-int/2addr v0, v2

    shl-int/2addr v0, v3

    neg-int v2, v2

    xor-int/lit8 v2, v2, -0x1

    sub-int/2addr v0, v2

    sub-int/2addr v0, v3

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 8
    const/16 v0, 0x42

    goto :goto_2

    :cond_3
    const/16 v0, 0x3b

    :goto_2
    packed-switch v0, :pswitch_data_2

    .line 10
    goto :goto_3

    .line 20
    :pswitch_1
    nop

    .line 22
    :goto_3
    iput-boolean v3, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isCircled:Z

    .line 27
    :cond_4
    :goto_4
    goto/16 :goto_e

    .line 8
    :goto_5
    const/16 v0, 0x56

    goto :goto_6

    :cond_5
    const/16 v0, 0x44

    :goto_6
    const/high16 v2, 0x41200000    # 10.0f

    packed-switch v0, :pswitch_data_3

    iget v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    cmpl-float v4, v0, v2

    if-lez v4, :cond_7

    goto :goto_8

    :pswitch_2
    iget v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    cmpl-float v4, v0, v2

    const/4 v5, 0x0

    :try_start_0
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v4, :cond_6

    const/4 v4, 0x0

    goto :goto_7

    :cond_6
    const/4 v4, 0x1

    :goto_7
    packed-switch v4, :pswitch_data_4

    goto :goto_a

    .line 22
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 8
    :goto_8
    const/4 v4, 0x1

    goto :goto_9

    :cond_7
    const/4 v4, 0x0

    :goto_9
    packed-switch v4, :pswitch_data_5

    :pswitch_3
    goto :goto_d

    .line 27
    :goto_a
    :pswitch_4
    sget v2, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    xor-int/lit8 v4, v2, 0x5c

    and-int/lit8 v2, v2, 0x5c

    shl-int/2addr v2, v3

    add-int/2addr v4, v2

    and-int/lit8 v2, v4, -0x1

    or-int/lit8 v4, v4, -0x1

    add-int/2addr v2, v4

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_8

    .line 8
    const/16 v2, 0x19

    goto :goto_b

    :cond_8
    const/16 v2, 0x34

    :goto_b
    packed-switch v2, :pswitch_data_6

    .line 9
    iget v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    iget v4, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->endSpeed:I

    int-to-float v5, v4

    mul-float v2, v2, v5

    iput v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    ushr-int/lit8 v2, v4, 0x5

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 10
    :goto_c
    iput v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    goto :goto_4

    .line 9
    :pswitch_5
    iget v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    iget v4, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->endSpeed:I

    int-to-float v5, v4

    add-float/2addr v2, v5

    iput v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    or-int/lit8 v2, v4, -0x2

    shl-int/2addr v2, v3

    xor-int/lit8 v4, v4, -0x2

    sub-int/2addr v2, v4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_c

    .line 10
    :goto_d
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 13
    iput v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    .line 14
    iput v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    .line 15
    iput-boolean v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isCircled:Z

    .line 10
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x13

    sub-int/2addr v0, v3

    or-int/lit8 v2, v0, -0x1

    shl-int/2addr v2, v3

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    goto/16 :goto_4

    .line 26
    :goto_e
    :pswitch_6
    iget-boolean v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    if-eqz v0, :cond_9

    .line 8
    goto :goto_f

    :cond_9
    const/4 v1, 0x1

    :goto_f
    packed-switch v1, :pswitch_data_7

    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    or-int/lit8 v1, v0, 0x41

    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v0, v0, 0x41

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v3

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_a

    .line 27
    :cond_a
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    and-int/lit8 v1, v0, -0x50

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x4f

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x4f

    shl-int/2addr v0, v3

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b

    :cond_b
    :pswitch_7
    nop

    .line 8
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x5d

    xor-int/lit8 v0, v0, 0x5d

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v3

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    .line 27
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x56
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x34
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 5
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x63

    and-int/lit8 v0, v0, 0x63

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/view/View;->onMeasure(II)V

    .line 3
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->center:F

    .line 4
    invoke-virtual {p0}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->radius:F

    .line 5
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->initData()V

    sget p1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    xor-int/lit8 p2, p1, 0x25

    and-int/lit8 p1, p1, 0x25

    shl-int/lit8 p1, p1, 0x1

    xor-int v0, p2, p1

    and-int/2addr p1, p2

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 p1, 0x59

    goto :goto_0

    :cond_1
    const/16 p1, 0x19

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_0
    .end packed-switch
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 4
    .end local p1    # "progress":F
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x21

    or-int/lit8 v0, v0, 0x21

    xor-int v2, v1, v0

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x58

    :goto_0
    const/high16 v1, 0x43b40000    # 360.0f

    const/high16 v2, -0x3d4c0000    # -90.0f

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-virtual {p0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->stopAnimate()V

    .line 2
    iput v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    mul-float p1, p1, v1

    .line 3
    :goto_1
    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    .line 4
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->stopAnimate()V

    .line 2
    iput v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    div-float/2addr p1, v1

    goto :goto_1

    .line 4
    :goto_2
    sget p1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    xor-int/lit8 v0, p1, 0x9

    and-int/lit8 p1, p1, 0x9

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_0
    .end packed-switch
.end method

.method public setProgress(FF)V
    .locals 3
    .param p1, "currentPos"    # F
    .param p2, "totalLength"    # F

    .line 9
    .end local p1    # "currentPos":F
    .end local p2    # "totalLength":F
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    and-int/lit8 v1, v0, -0x5c

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x5b

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x5b

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v1, -0x3d4c0000    # -90.0f

    packed-switch v2, :pswitch_data_0

    .line 5
    invoke-virtual {p0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->stopAnimate()V

    .line 6
    iput v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    rem-float/2addr p1, v0

    mul-float p1, p1, p2

    .line 7
    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    .line 8
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    const/16 p2, 0x78

    const/16 v0, 0x38d0

    const/16 v1, 0x1ad8

    const/16 v2, 0x2c76

    invoke-static {p2, v0, v1, v2}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 9
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    goto :goto_1

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->stopAnimate()V

    .line 6
    iput v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    .line 7
    iput p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    .line 8
    iget-object p1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    const/16 p2, 0x64

    const/16 v0, 0x97

    invoke-static {p2, v0, v0, v0}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result p2

    goto :goto_0

    .line 9
    :goto_1
    sget p1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public startAnimate()V
    .locals 4

    .line 3
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x55

    xor-int/lit8 v2, v0, 0x55

    or-int/2addr v2, v1

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    :cond_0
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 3
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    goto :goto_4

    :pswitch_0
    add-int/lit8 v0, v0, 0x18

    sub-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x51

    goto :goto_2

    :cond_3
    const/16 v0, 0x22

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 2
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    .line 3
    iput-boolean v3, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    goto :goto_3

    .line 2
    :pswitch_1
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    .line 3
    iput-boolean v2, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    :goto_3
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0xe

    sub-int/2addr v0, v3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :goto_4
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0x4f

    shl-int/2addr v1, v3

    xor-int/lit8 v0, v0, 0x4f

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x51
        :pswitch_1
    .end packed-switch
.end method

.method public startInstallAnimate()V
    .locals 7

    .line 8
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x51

    xor-int/lit8 v0, v0, 0x51

    or-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    invoke-static {v0, v0, v0, v0}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->linePaint:Lccsanandroid/graphics/Paint;

    const/16 v3, 0x3c

    const/16 v4, 0x4557

    const/16 v5, 0x17df

    const/16 v6, 0x4172

    invoke-static {v3, v4, v5, v6}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->stopAnimate()V

    .line 4
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isInstallAnimate:Z

    if-nez v1, :cond_2

    goto :goto_3

    .line 1
    :pswitch_0
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->lineBgPaint:Lccsanandroid/graphics/Paint;

    invoke-static {v2, v2, v2, v2}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->linePaint:Lccsanandroid/graphics/Paint;

    const/16 v3, 0x64

    const/16 v4, 0x97

    invoke-static {v3, v4, v4, v4}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 3
    invoke-virtual {p0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->stopAnimate()V

    .line 4
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isInstallAnimate:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_6

    :goto_3
    const/4 v1, 0x1

    goto :goto_4

    :cond_2
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 8
    :pswitch_1
    sget v1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    and-int/lit8 v3, v1, 0x6c

    or-int/lit8 v1, v1, 0x6c

    add-int/2addr v3, v1

    xor-int/lit8 v1, v3, -0x1

    and-int/lit8 v3, v3, -0x1

    shl-int/2addr v3, v0

    add-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 4
    const/4 v1, 0x0

    goto :goto_5

    :cond_3
    const/4 v1, 0x1

    :goto_5
    packed-switch v1, :pswitch_data_3

    .line 5
    :pswitch_2
    invoke-direct {p0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->resetCircle()V

    .line 6
    invoke-virtual {p0}, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAnimate()V

    .line 7
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    .line 8
    iput-boolean v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isInstallAnimate:Z

    :goto_6
    sget v1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    xor-int/lit8 v3, v1, 0x1b

    and-int/lit8 v1, v1, 0x1b

    shl-int/2addr v1, v0

    or-int v4, v3, v1

    shl-int/lit8 v0, v4, 0x1

    xor-int/2addr v1, v3

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 4
    const/16 v0, 0x22

    goto :goto_7

    :cond_4
    const/16 v0, 0x9

    :goto_7
    packed-switch v0, :pswitch_data_4

    .line 8
    return-void

    :pswitch_3
    const/16 v0, 0x20

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x22
        :pswitch_3
    .end packed-switch
.end method

.method public stopAnimate()V
    .locals 5

    .line 7
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x57

    and-int/lit8 v2, v0, 0x57

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v3, v0, 0x57

    and-int/2addr v2, v3

    sub-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-boolean v1, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    const/16 v2, 0x48

    if-eqz v1, :cond_1

    .line 7
    const/16 v1, 0x19

    goto :goto_0

    :cond_1
    const/16 v1, 0x48

    :goto_0
    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    and-int/lit8 v1, v0, -0x42

    xor-int/lit8 v4, v0, -0x1

    and-int/lit8 v4, v4, 0x41

    or-int/2addr v1, v4

    and-int/lit8 v0, v0, 0x41

    shl-int/lit8 v0, v0, 0x1

    or-int v4, v1, v0

    shl-int/lit8 v4, v4, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr v4, v0

    rem-int/lit16 v0, v4, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 1
    :cond_2
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 2
    iput v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->startAngle:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->sweepAngle:F

    .line 4
    invoke-virtual {p0}, Lccsanandroid/view/View;->invalidate()V

    .line 5
    iput-boolean v3, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isAnimate:Z

    .line 7
    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    and-int/lit8 v1, v0, 0x41

    xor-int/lit8 v0, v0, 0x41

    or-int/2addr v0, v1

    neg-int v0, v0

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/16 v0, 0x53

    goto :goto_1

    :cond_3
    const/16 v0, 0x63

    .line 5
    :goto_1
    :pswitch_0
    nop

    .line 7
    iput-boolean v3, p0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->isInstallAnimate:Z

    sget v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->removeDownloadListener:I

    xor-int/lit8 v1, v0, 0x7

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/landingpage/widget/GpCircleRotateView;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v2, 0x1a

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/16 v0, 0x10

    :try_start_0
    div-int/2addr v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_1
    .end packed-switch
.end method
