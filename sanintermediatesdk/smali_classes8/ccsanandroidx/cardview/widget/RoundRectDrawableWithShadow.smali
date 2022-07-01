.class Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field private static final COS_45:D

.field private static final SHADOW_MULTIPLIER:F = 1.5f

.field static sRoundRectHelper:Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field private mAddPaddingForCorners:Z

.field private mBackground:Lccsanandroid/content/res/ColorStateList;

.field private final mCardBounds:Lccsanandroid/graphics/RectF;

.field private mCornerRadius:F

.field private mCornerShadowPaint:Lccsanandroid/graphics/Paint;

.field private mCornerShadowPath:Lccsanandroid/graphics/Path;

.field private mDirty:Z

.field private mEdgeShadowPaint:Lccsanandroid/graphics/Paint;

.field private final mInsetShadow:I

.field private mPaint:Lccsanandroid/graphics/Paint;

.field private mPrintedShadowClipWarning:Z

.field private mRawMaxShadowSize:F

.field private mRawShadowSize:F

.field private final mShadowEndColor:I

.field private mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/res/Resources;Lccsanandroid/content/res/ColorStateList;FFF)V
    .locals 3
    .param p1, "resources"    # Lccsanandroid/content/res/Resources;
    .param p2, "backgroundColor"    # Lccsanandroid/content/res/ColorStateList;
    .param p3, "radius"    # F
    .param p4, "shadowSize"    # F
    .param p5, "maxShadowSize"    # F

    .line 92
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 84
    iput-boolean v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 93
    sget v1, Lccsanandroidx/cardview/R$color;->cardview_shadow_start_color:I

    invoke-virtual {p1, v1}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    .line 94
    sget v1, Lccsanandroidx/cardview/R$color;->cardview_shadow_end_color:I

    invoke-virtual {p1, v1}, Lccsanandroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    .line 95
    sget v1, Lccsanandroidx/cardview/R$dimen;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    .line 96
    new-instance v1, Lccsanandroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Lccsanandroid/graphics/Paint;

    .line 97
    invoke-direct {p0, p2}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setBackground(Lccsanandroid/content/res/ColorStateList;)V

    .line 98
    new-instance v1, Lccsanandroid/graphics/Paint;

    invoke-direct {v1, v2}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Lccsanandroid/graphics/Paint;

    .line 99
    sget-object v2, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 100
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, p3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 101
    new-instance v1, Lccsanandroid/graphics/RectF;

    invoke-direct {v1}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    .line 102
    new-instance v1, Lccsanandroid/graphics/Paint;

    iget-object v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-direct {v1, v2}, Lccsanandroid/graphics/Paint;-><init>(Lccsanandroid/graphics/Paint;)V

    iput-object v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Lccsanandroid/graphics/Paint;

    .line 103
    invoke-virtual {v1, v0}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    invoke-direct {p0, p4, p5}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 105
    return-void
.end method

.method private buildComponents(Lccsanandroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 334
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    .line 335
    .local v0, "verticalOffset":F
    iget-object v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v2, p1, Lccsanandroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Lccsanandroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Lccsanandroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Lccsanandroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 337
    invoke-direct {p0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->buildShadowCorners()V

    .line 338
    return-void
.end method

.method private buildShadowCorners()V
    .locals 26

    .line 297
    move-object/from16 v0, p0

    new-instance v1, Lccsanandroid/graphics/RectF;

    iget v2, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v3, v2

    neg-float v4, v2

    invoke-direct {v1, v3, v4, v2, v2}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 298
    .local v1, "innerBounds":Lccsanandroid/graphics/RectF;
    new-instance v2, Lccsanandroid/graphics/RectF;

    invoke-direct {v2, v1}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/RectF;)V

    .line 299
    .local v2, "outerBounds":Lccsanandroid/graphics/RectF;
    iget v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v4, v3

    neg-float v3, v3

    invoke-virtual {v2, v4, v3}, Lccsanandroid/graphics/RectF;->inset(FF)V

    .line 301
    iget-object v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    if-nez v3, :cond_0

    .line 302
    new-instance v3, Lccsanandroid/graphics/Path;

    invoke-direct {v3}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {v3}, Lccsanandroid/graphics/Path;->reset()V

    .line 306
    :goto_0
    iget-object v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    sget-object v4, Lccsanandroid/graphics/Path$FillType;->EVEN_ODD:Lccsanandroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/Path;->setFillType(Lccsanandroid/graphics/Path$FillType;)V

    .line 307
    iget-object v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    iget v4, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lccsanandroid/graphics/Path;->moveTo(FF)V

    .line 308
    iget-object v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    iget v4, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v5}, Lccsanandroid/graphics/Path;->rLineTo(FF)V

    .line 310
    iget-object v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v4, v6, v7}, Lccsanandroid/graphics/Path;->arcTo(Lccsanandroid/graphics/RectF;FFZ)V

    .line 312
    iget-object v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v1, v4, v6, v7}, Lccsanandroid/graphics/Path;->arcTo(Lccsanandroid/graphics/RectF;FFZ)V

    .line 313
    iget-object v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    invoke-virtual {v3}, Lccsanandroid/graphics/Path;->close()V

    .line 314
    iget v3, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v4, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v4, v3

    div-float/2addr v3, v4

    .line 315
    .local v3, "startRatio":F
    iget-object v4, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Lccsanandroid/graphics/Paint;

    new-instance v6, Lccsanandroid/graphics/RadialGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v8, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v11, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v11, v8

    const/4 v15, 0x3

    new-array v12, v15, [I

    iget v8, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v8, v12, v7

    const/16 v16, 0x1

    aput v8, v12, v16

    iget v8, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    const/16 v17, 0x2

    aput v8, v12, v17

    new-array v13, v15, [F

    aput v5, v13, v7

    aput v3, v13, v16

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v13, v17

    sget-object v14, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lccsanandroid/graphics/RadialGradient;-><init>(FFF[I[FLccsanandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v6}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 323
    iget-object v4, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Lccsanandroid/graphics/Paint;

    new-instance v5, Lccsanandroid/graphics/LinearGradient;

    const/16 v19, 0x0

    iget v6, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v8, v6

    iget v9, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v20, v8, v9

    const/16 v21, 0x0

    neg-float v6, v6

    sub-float v22, v6, v9

    new-array v6, v15, [I

    iget v8, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v8, v6, v7

    aput v8, v6, v16

    iget v8, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowEndColor:I

    aput v8, v6, v17

    new-array v8, v15, [F

    fill-array-data v8, :array_0

    sget-object v25, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    move-object/from16 v18, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    invoke-direct/range {v18 .. v25}, Lccsanandroid/graphics/LinearGradient;-><init>(FFFF[I[FLccsanandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 327
    iget-object v4, v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v4, v7}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 328
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .line 189
    if-eqz p2, :cond_0

    .line 190
    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 192
    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6
    .param p0, "maxShadowSize"    # F
    .param p1, "cornerRadius"    # F
    .param p2, "addPaddingForCorners"    # Z

    .line 180
    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    .line 181
    mul-float v0, v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    .line 183
    :cond_0
    mul-float v0, v0, p0

    return v0
.end method

.method private drawShadow(Lccsanandroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 249
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v1, v0

    iget v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float/2addr v1, v2

    .line 250
    .local v1, "edgeShadowTop":F
    iget v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v2, v9

    add-float/2addr v0, v2

    .line 251
    .local v0, "inset":F
    iget-object v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v2}, Lccsanandroid/graphics/RectF;->width()F

    move-result v2

    mul-float v3, v0, v9

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 252
    .local v2, "drawHorizontalEdges":Z
    :goto_0
    iget-object v6, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v6}, Lccsanandroid/graphics/RectF;->height()F

    move-result v6

    mul-float v7, v0, v9

    sub-float/2addr v6, v7

    cmpl-float v5, v6, v5

    if-lez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    move v10, v3

    .line 254
    .local v10, "drawVerticalEdges":Z
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v11

    .line 255
    .local v11, "saved":I
    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v3, v3, Lccsanandroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget-object v4, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v4, v4, Lccsanandroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 256
    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    iget-object v4, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 257
    if-eqz v2, :cond_2

    .line 258
    const/4 v4, 0x0

    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    .line 259
    invoke-virtual {v3}, Lccsanandroid/graphics/RectF;->width()F

    move-result v3

    mul-float v5, v0, v9

    sub-float v6, v3, v5

    iget v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v7, v3

    iget-object v8, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Lccsanandroid/graphics/Paint;

    .line 258
    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 262
    :cond_2
    invoke-virtual {p1, v11}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 264
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v11

    .line 265
    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v3, v3, Lccsanandroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget-object v4, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v4, v4, Lccsanandroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 266
    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p1, v3}, Lccsanandroid/graphics/Canvas;->rotate(F)V

    .line 267
    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    iget-object v4, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 268
    if-eqz v2, :cond_3

    .line 269
    const/4 v4, 0x0

    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    .line 270
    invoke-virtual {v3}, Lccsanandroid/graphics/RectF;->width()F

    move-result v3

    mul-float v5, v0, v9

    sub-float v6, v3, v5

    iget v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v3, v3

    iget v5, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v7, v3, v5

    iget-object v8, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Lccsanandroid/graphics/Paint;

    .line 269
    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 273
    :cond_3
    invoke-virtual {p1, v11}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 275
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v11

    .line 276
    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v3, v3, Lccsanandroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget-object v4, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v4, v4, Lccsanandroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 277
    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Lccsanandroid/graphics/Canvas;->rotate(F)V

    .line 278
    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    iget-object v4, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 279
    if-eqz v10, :cond_4

    .line 280
    const/4 v4, 0x0

    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    .line 281
    invoke-virtual {v3}, Lccsanandroid/graphics/RectF;->height()F

    move-result v3

    mul-float v5, v0, v9

    sub-float v6, v3, v5

    iget v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v7, v3

    iget-object v8, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Lccsanandroid/graphics/Paint;

    .line 280
    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 283
    :cond_4
    invoke-virtual {p1, v11}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 285
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    move-result v11

    .line 286
    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v3, v3, Lccsanandroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget-object v4, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v4, v4, Lccsanandroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 287
    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3}, Lccsanandroid/graphics/Canvas;->rotate(F)V

    .line 288
    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPath:Lccsanandroid/graphics/Path;

    iget-object v4, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Lccsanandroid/graphics/Canvas;->drawPath(Lccsanandroid/graphics/Path;Lccsanandroid/graphics/Paint;)V

    .line 289
    if-eqz v10, :cond_5

    .line 290
    const/4 v4, 0x0

    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    .line 291
    invoke-virtual {v3}, Lccsanandroid/graphics/RectF;->height()F

    move-result v3

    mul-float v9, v9, v0

    sub-float v6, v3, v9

    iget v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v7, v3

    iget-object v8, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Lccsanandroid/graphics/Paint;

    .line 290
    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 293
    :cond_5
    invoke-virtual {p1, v11}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 294
    return-void
.end method

.method private setBackground(Lccsanandroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Lccsanandroid/content/res/ColorStateList;

    .line 108
    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Lccsanandroid/content/res/ColorStateList;

    .line 109
    iget-object v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getState()[I

    move-result-object v2

    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v3}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {v1, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 110
    return-void
.end method

.method private setShadowSize(FF)V
    .locals 4
    .param p1, "shadowSize"    # F
    .param p2, "maxShadowSize"    # F

    .line 142
    const-string v0, ". Must be >= 0"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_3

    .line 146
    cmpg-float v1, p2, v1

    if-ltz v1, :cond_2

    .line 150
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->toEven(F)I

    move-result v0

    int-to-float p1, v0

    .line 151
    invoke-direct {p0, p2}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->toEven(F)I

    move-result v0

    int-to-float p2, v0

    .line 152
    const/4 v0, 0x1

    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    .line 153
    move p1, p2

    .line 154
    iget-boolean v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    if-nez v1, :cond_0

    .line 155
    iput-boolean v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPrintedShadowClipWarning:Z

    .line 158
    :cond_0
    iget v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_1

    iget v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    cmpl-float v1, v1, p2

    if-nez v1, :cond_1

    .line 159
    return-void

    .line 161
    :cond_1
    iput p1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    .line 162
    iput p2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    .line 163
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v1, v1, p1

    iget v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mShadowSize:F

    .line 164
    iput-boolean v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 165
    invoke-virtual {p0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 166
    return-void

    .line 147
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid max shadow size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid shadow size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toEven(F)I
    .locals 3
    .param p1, "value"    # F

    .line 116
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    .line 117
    .local v0, "i":I
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 118
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 120
    :cond_0
    return v0
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 238
    iget-boolean v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->buildComponents(Lccsanandroid/graphics/Rect;)V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 242
    :cond_0
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 243
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->drawShadow(Lccsanandroid/graphics/Canvas;)V

    .line 244
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 245
    sget-object v0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->sRoundRectHelper:Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;

    iget-object v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCardBounds:Lccsanandroid/graphics/RectF;

    iget v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-object v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/RectF;FLccsanandroid/graphics/Paint;)V

    .line 246
    return-void
.end method

.method getColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 382
    iget-object v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCornerRadius()F
    .locals 1

    .line 341
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    return v0
.end method

.method getMaxShadowAndCornerPadding(Lccsanandroid/graphics/Rect;)V
    .locals 0
    .param p1, "into"    # Lccsanandroid/graphics/Rect;

    .line 345
    invoke-virtual {p0, p1}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 346
    return-void
.end method

.method getMaxShadowSize()F
    .locals 1

    .line 361
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    return v0
.end method

.method getMinHeight()F
    .locals 5

    .line 371
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v4

    .line 373
    .local v0, "content":F
    iget v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    mul-float v1, v1, v2

    iget v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float v1, v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method getMinWidth()F
    .locals 4

    .line 365
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    add-float/2addr v1, v3

    .line 366
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v0, v0, v2

    .line 367
    .local v0, "content":F
    iget v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public getOpacity()I
    .locals 1

    .line 220
    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;

    .line 170
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v0, v1, v2}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 172
    .local v0, "vOffset":I
    iget v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v2, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v3, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v1, v2, v3}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 174
    .local v1, "hOffset":I
    invoke-virtual {p1, v1, v0, v1, v0}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 175
    const/4 v2, 0x1

    return v2
.end method

.method getShadowSize()F
    .locals 1

    .line 357
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 137
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->onBoundsChange(Lccsanandroid/graphics/Rect;)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 139
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    .line 198
    iget-object v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mBackground:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 199
    .local v0, "newColor":I
    iget-object v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1}, Lccsanandroid/graphics/Paint;->getColor()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 200
    const/4 v1, 0x0

    return v1

    .line 202
    :cond_0
    iget-object v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v1, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 204
    invoke-virtual {p0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 205
    return v1
.end method

.method setAddPaddingForCorners(Z)V
    .locals 0
    .param p1, "addPaddingForCorners"    # Z

    .line 124
    iput-boolean p1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    .line 125
    invoke-virtual {p0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 126
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 130
    iget-object v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 131
    iget-object v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 133
    return-void
.end method

.method setColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "color"    # Lccsanandroid/content/res/ColorStateList;

    .line 377
    invoke-direct {p0, p1}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setBackground(Lccsanandroid/content/res/ColorStateList;)V

    .line 378
    invoke-virtual {p0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 379
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Lccsanandroid/graphics/ColorFilter;

    .line 215
    iget-object v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/ColorFilter;

    .line 216
    return-void
.end method

.method setCornerRadius(F)V
    .locals 3
    .param p1, "radius"    # F

    .line 224
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 227
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float p1, v0

    .line 228
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    iput p1, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mCornerRadius:F

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mDirty:Z

    .line 233
    invoke-virtual {p0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->invalidateSelf()V

    .line 234
    return-void

    .line 225
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ". Must be >= 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setMaxShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 353
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawShadowSize:F

    invoke-direct {p0, v0, p1}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 354
    return-void
.end method

.method setShadowSize(F)V
    .locals 1
    .param p1, "size"    # F

    .line 349
    iget v0, p0, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    invoke-direct {p0, p1, v0}, Lccsanandroidx/cardview/widget/RoundRectDrawableWithShadow;->setShadowSize(FF)V

    .line 350
    return-void
.end method
