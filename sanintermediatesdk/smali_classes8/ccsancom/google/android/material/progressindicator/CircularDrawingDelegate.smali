.class final Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;
.super Lccsancom/google/android/material/progressindicator/DrawingDelegate;
.source "CircularDrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/progressindicator/DrawingDelegate<",
        "Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private adjustedRadius:F

.field private arcDirectionFactor:I

.field private displayedCornerRadius:F

.field private displayedTrackThickness:F


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1
    .param p1, "spec"    # Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    .line 40
    invoke-direct {p0, p1}, Lccsancom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    .line 41
    return-void
.end method

.method private drawRoundedEnd(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFFZLccsanandroid/graphics/RectF;)V
    .locals 13
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "paint"    # Lccsanandroid/graphics/Paint;
    .param p3, "trackSize"    # F
    .param p4, "cornerRadius"    # F
    .param p5, "positionInDeg"    # F
    .param p6, "isStartPosition"    # Z
    .param p7, "cornerPatternRectBound"    # Lccsanandroid/graphics/RectF;

    .line 203
    move-object v0, p0

    move-object v7, p1

    if-eqz p6, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    move v8, v1

    .line 204
    .local v8, "startOrEndFactor":F
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->save()I

    .line 205
    move/from16 v9, p5

    invoke-virtual {p1, v9}, Lccsanandroid/graphics/Canvas;->rotate(F)V

    .line 206
    iget v1, v0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float v2, p3, v10

    sub-float/2addr v1, v2

    add-float v2, v1, p4

    mul-float v1, v8, p4

    iget v3, v0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    .line 208
    const/4 v11, 0x0

    invoke-static {v11, v1}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v1, v0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    div-float v4, p3, v10

    add-float/2addr v1, v4

    sub-float v4, v1, p4

    mul-float v1, v8, p4

    iget v5, v0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    int-to-float v5, v5

    mul-float v1, v1, v5

    .line 210
    invoke-static {v11, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 206
    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 212
    iget v1, v0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    div-float v2, p3, v10

    sub-float/2addr v1, v2

    add-float v1, v1, p4

    invoke-virtual {p1, v1, v11}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 213
    const/high16 v3, 0x43340000    # 180.0f

    neg-float v1, v8

    const/high16 v12, 0x42b40000    # 90.0f

    mul-float v1, v1, v12

    iget v2, v0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    int-to-float v2, v2

    mul-float v4, v1, v2

    const/4 v5, 0x1

    move-object v1, p1

    move-object/from16 v2, p7

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 215
    mul-float v1, p4, v10

    sub-float v1, p3, v1

    invoke-virtual {p1, v1, v11}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 216
    const/4 v3, 0x0

    mul-float v12, v12, v8

    iget v1, v0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    int-to-float v1, v1

    mul-float v4, v12, v1

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 218
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 219
    return-void
.end method

.method private getSize()I
    .locals 2

    .line 192
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v1, v1, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public adjustCanvas(Lccsanandroid/graphics/Canvas;F)V
    .locals 6
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "trackThicknessFraction"    # F

    .line 66
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 67
    .local v0, "outerRadiusWithInset":F
    invoke-virtual {p1, v0, v0}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 69
    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v2}, Lccsanandroid/graphics/Canvas;->rotate(F)V

    .line 73
    neg-float v2, v0

    neg-float v3, v0

    invoke-virtual {p1, v2, v3, v0, v0}, Lccsanandroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 77
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    .line 79
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    int-to-float v2, v2

    mul-float v2, v2, p2

    iput v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    .line 80
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackCornerRadius:I

    int-to-float v2, v2

    mul-float v2, v2, p2

    iput v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    .line 81
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    iget-object v4, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v4, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v4, v4, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v1

    iput v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 82
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq v2, v5, :cond_2

    :cond_1
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 84
    invoke-virtual {v2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne v2, v3, :cond_3

    .line 89
    :cond_2
    iget v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    sub-float/2addr v4, p2

    iget-object v3, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v3, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v3, v3, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    int-to-float v3, v3

    mul-float v4, v4, v3

    div-float/2addr v4, v1

    add-float/2addr v2, v4

    iput v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    goto :goto_1

    .line 90
    :cond_3
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->showAnimationBehavior:I

    if-eq v2, v3, :cond_5

    :cond_4
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 92
    invoke-virtual {v2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->hideAnimationBehavior:I

    if-ne v2, v5, :cond_6

    .line 97
    :cond_5
    iget v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    sub-float/2addr v4, p2

    iget-object v3, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v3, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v3, v3, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackThickness:I

    int-to-float v3, v3

    mul-float v4, v4, v3

    div-float/2addr v4, v1

    sub-float/2addr v2, v4

    iput v2, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    .line 99
    :cond_6
    :goto_1
    return-void
.end method

.method fillIndicator(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFI)V
    .locals 24
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "paint"    # Lccsanandroid/graphics/Paint;
    .param p3, "startFraction"    # F
    .param p4, "endFraction"    # F
    .param p5, "color"    # I

    .line 120
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    cmpl-float v0, p3, p4

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 125
    :cond_0
    sget-object v0, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v14, v0}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 126
    sget-object v0, Lccsanandroid/graphics/Paint$Cap;->BUTT:Lccsanandroid/graphics/Paint$Cap;

    invoke-virtual {v14, v0}, Lccsanandroid/graphics/Paint;->setStrokeCap(Lccsanandroid/graphics/Paint$Cap;)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {v14, v0}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 128
    move/from16 v13, p5

    invoke-virtual {v14, v13}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 129
    iget v0, v15, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    invoke-virtual {v14, v0}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v1, p3, v0

    iget v2, v15, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->arcDirectionFactor:I

    int-to-float v3, v2

    mul-float v22, v1, v3

    .line 133
    .local v22, "startDegree":F
    cmpl-float v1, p4, p3

    if-ltz v1, :cond_1

    sub-float v1, p4, p3

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    add-float v1, p4, v1

    sub-float v1, v1, p3

    :goto_0
    mul-float v1, v1, v0

    int-to-float v2, v2

    mul-float v1, v1, v2

    move/from16 v23, v1

    .line 139
    .local v23, "arcDegree":F
    new-instance v1, Lccsanandroid/graphics/RectF;

    iget v2, v15, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    neg-float v3, v2

    neg-float v4, v2

    invoke-direct {v1, v3, v4, v2, v2}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v17, v1

    .line 140
    .local v17, "arcBound":Lccsanandroid/graphics/RectF;
    const/16 v20, 0x0

    move-object/from16 v16, p1

    move/from16 v18, v22

    move/from16 v19, v23

    move-object/from16 v21, p2

    invoke-virtual/range {v16 .. v21}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 143
    iget v1, v15, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    .line 144
    sget-object v0, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v14, v0}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 145
    new-instance v7, Lccsanandroid/graphics/RectF;

    iget v0, v15, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    neg-float v1, v0

    neg-float v2, v0

    invoke-direct {v7, v1, v2, v0, v0}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 151
    .local v7, "cornerPatternRectBound":Lccsanandroid/graphics/RectF;
    iget v3, v15, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    iget v4, v15, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, v22

    invoke-direct/range {v0 .. v7}, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedEnd(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFFZLccsanandroid/graphics/RectF;)V

    .line 159
    iget v11, v15, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    iget v12, v15, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedCornerRadius:F

    add-float v0, v22, v23

    const/4 v1, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move v13, v0

    move v14, v1

    move-object v15, v7

    invoke-direct/range {v8 .. v15}, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->drawRoundedEnd(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFFZLccsanandroid/graphics/RectF;)V

    .line 168
    .end local v7    # "cornerPatternRectBound":Lccsanandroid/graphics/RectF;
    :cond_2
    return-void
.end method

.method fillTrack(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "paint"    # Lccsanandroid/graphics/Paint;

    .line 178
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->trackColor:I

    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v1}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    .line 181
    .local v0, "trackColor":I
    sget-object v1, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 182
    sget-object v1, Lccsanandroid/graphics/Paint$Cap;->BUTT:Lccsanandroid/graphics/Paint$Cap;

    invoke-virtual {p2, v1}, Lccsanandroid/graphics/Paint;->setStrokeCap(Lccsanandroid/graphics/Paint$Cap;)V

    .line 183
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    invoke-virtual {p2, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 185
    iget v1, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->displayedTrackThickness:F

    invoke-virtual {p2, v1}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    new-instance v3, Lccsanandroid/graphics/RectF;

    iget v1, p0, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->adjustedRadius:F

    neg-float v2, v1

    neg-float v4, v1

    invoke-direct {v3, v2, v4, v1, v1}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 188
    .local v3, "arcBound":Lccsanandroid/graphics/RectF;
    const/4 v4, 0x0

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object v2, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 189
    return-void
.end method

.method public getPreferredHeight()I
    .locals 1

    .line 50
    invoke-direct {p0}, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result v0

    return v0
.end method

.method public getPreferredWidth()I
    .locals 1

    .line 45
    invoke-direct {p0}, Lccsancom/google/android/material/progressindicator/CircularDrawingDelegate;->getSize()I

    move-result v0

    return v0
.end method
