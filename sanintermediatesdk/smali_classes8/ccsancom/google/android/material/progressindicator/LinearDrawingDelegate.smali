.class final Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;
.super Lccsancom/google/android/material/progressindicator/DrawingDelegate;
.source "LinearDrawingDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/progressindicator/DrawingDelegate<",
        "Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# instance fields
.field private displayedCornerRadius:F

.field private displayedTrackThickness:F

.field private trackLength:F


# direct methods
.method public constructor <init>(Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;)V
    .locals 1
    .param p1, "spec"    # Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    .line 40
    invoke-direct {p0, p1}, Lccsancom/google/android/material/progressindicator/DrawingDelegate;-><init>(Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V

    .line 34
    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 41
    return-void
.end method

.method private static drawRoundedEnd(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFFZLccsanandroid/graphics/RectF;)V
    .locals 9
    .param p0, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p1, "paint"    # Lccsanandroid/graphics/Paint;
    .param p2, "trackSize"    # F
    .param p3, "cornerRadius"    # F
    .param p4, "x"    # F
    .param p5, "isStartPosition"    # Z
    .param p6, "cornerPatternRectBound"    # Lccsanandroid/graphics/RectF;

    .line 224
    invoke-virtual {p0}, Lccsanandroid/graphics/Canvas;->save()I

    .line 225
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 226
    if-nez p5, :cond_0

    .line 227
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {p0, v1}, Lccsanandroid/graphics/Canvas;->rotate(F)V

    .line 230
    :cond_0
    neg-float v3, p3

    neg-float v1, p2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v1, v8

    add-float v4, v1, p3

    const/4 v5, 0x0

    div-float v1, p2, v8

    sub-float v6, v1, p3

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 233
    invoke-virtual {p0}, Lccsanandroid/graphics/Canvas;->save()I

    .line 234
    neg-float v1, p2

    div-float/2addr v1, v8

    add-float/2addr v1, p3

    invoke-virtual {p0, v0, v1}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 235
    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x42b40000    # 90.0f

    const/4 v6, 0x1

    move-object v3, p6

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 236
    invoke-virtual {p0}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 238
    div-float v1, p2, v8

    sub-float/2addr v1, p3

    invoke-virtual {p0, v0, v1}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 239
    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->drawArc(Lccsanandroid/graphics/RectF;FFZLccsanandroid/graphics/Paint;)V

    .line 240
    invoke-virtual {p0}, Lccsanandroid/graphics/Canvas;->restore()V

    .line 241
    return-void
.end method


# virtual methods
.method public adjustCanvas(Lccsanandroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "trackThicknessFraction"    # F

    .line 65
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->getClipBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    .line 66
    .local v0, "clipBounds":Lccsanandroid/graphics/Rect;
    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    .line 67
    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v1, v1, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float v1, v1

    .line 70
    .local v1, "trackSize":F
    nop

    .line 71
    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 72
    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v6, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v6, v6, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-float/2addr v4, v5

    .line 70
    invoke-virtual {p1, v2, v4}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget-boolean v2, v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->drawHorizontallyInverse:Z

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {p1, v4, v5}, Lccsanandroid/graphics/Canvas;->scale(FF)V

    .line 79
    :cond_0
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->showAnimationBehavior:I

    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    :cond_1
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    .line 80
    invoke-virtual {v2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->hideAnimationBehavior:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    .line 82
    :cond_2
    invoke-virtual {p1, v5, v4}, Lccsanandroid/graphics/Canvas;->scale(FF)V

    .line 85
    :cond_3
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isShowing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v2}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->isHiding()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 86
    :cond_4
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float v2, v2

    sub-float v4, p2, v5

    mul-float v2, v2, v4

    div-float/2addr v2, v3

    invoke-virtual {p1, v6, v2}, Lccsanandroid/graphics/Canvas;->translate(FF)V

    .line 91
    :cond_5
    iget v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v4, v2

    div-float/2addr v4, v3

    neg-float v5, v1

    div-float/2addr v5, v3

    div-float/2addr v2, v3

    div-float v3, v1, v3

    invoke-virtual {p1, v4, v5, v2, v3}, Lccsanandroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 94
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    int-to-float v2, v2

    mul-float v2, v2, p2

    iput v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    .line 95
    iget-object v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v2, v2, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackCornerRadius:I

    int-to-float v2, v2

    mul-float v2, v2, p2

    iput v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    .line 96
    return-void
.end method

.method public fillIndicator(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFI)V
    .locals 18
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "paint"    # Lccsanandroid/graphics/Paint;
    .param p3, "startFraction"    # F
    .param p4, "endFraction"    # F
    .param p5, "color"    # I

    .line 117
    move-object/from16 v0, p0

    move-object/from16 v15, p2

    cmpl-float v1, p3, p4

    if-nez v1, :cond_0

    .line 118
    return-void

    .line 122
    :cond_0
    iget v1, v0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v4, v0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    add-float/2addr v2, v4

    mul-float v5, v4, v3

    sub-float v5, v1, v5

    mul-float v5, v5, p3

    add-float v16, v2, v5

    .line 127
    .local v16, "adjustedStartX":F
    neg-float v2, v1

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    mul-float v4, v4, v3

    sub-float/2addr v1, v4

    mul-float v1, v1, p4

    add-float v17, v2, v1

    .line 133
    .local v17, "adjustedEndX":F
    sget-object v1, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v15, v1}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 134
    const/4 v1, 0x1

    invoke-virtual {v15, v1}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    move/from16 v14, p5

    invoke-virtual {v15, v14}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 138
    iget v1, v0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    neg-float v2, v1

    div-float v4, v2, v3

    div-float v5, v1, v3

    move-object/from16 v1, p1

    move/from16 v2, v16

    move v3, v4

    move/from16 v4, v17

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 144
    new-instance v7, Lccsanandroid/graphics/RectF;

    iget v1, v0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    neg-float v2, v1

    neg-float v3, v1

    invoke-direct {v7, v2, v3, v1, v1}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    .local v7, "cornerPatternRectBound":Lccsanandroid/graphics/RectF;
    iget v3, v0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    iget v4, v0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, v16

    invoke-static/range {v1 .. v7}, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedEnd(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFFZLccsanandroid/graphics/RectF;)V

    .line 158
    iget v10, v0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    iget v11, v0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v12, v17

    move-object v14, v7

    invoke-static/range {v8 .. v14}, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedEnd(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFFZLccsanandroid/graphics/RectF;)V

    .line 166
    return-void
.end method

.method fillTrack(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;)V
    .locals 12
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .param p2, "paint"    # Lccsanandroid/graphics/Paint;

    .line 176
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackColor:I

    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->drawable:Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-virtual {v1}, Lccsancom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->getAlpha()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v0

    .line 177
    .local v0, "trackColor":I
    iget v1, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->trackLength:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    add-float/2addr v1, v3

    .line 178
    .local v1, "adjustedStartX":F
    neg-float v11, v1

    .line 181
    .local v11, "adjustedEndX":F
    sget-object v3, Lccsanandroid/graphics/Paint$Style;->FILL:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 182
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    invoke-virtual {p2, v0}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 185
    iget v3, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    neg-float v4, v3

    div-float v6, v4, v2

    div-float v8, v3, v2

    move-object v4, p1

    move v5, v1

    move v7, v11

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lccsanandroid/graphics/Canvas;->drawRect(FFFFLccsanandroid/graphics/Paint;)V

    .line 191
    new-instance v10, Lccsanandroid/graphics/RectF;

    iget v2, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    neg-float v3, v2

    neg-float v4, v2

    invoke-direct {v10, v3, v4, v2, v2}, Lccsanandroid/graphics/RectF;-><init>(FFFF)V

    .line 197
    .local v10, "cornerPatternRectBound":Lccsanandroid/graphics/RectF;
    iget v6, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    iget v7, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    const/4 v9, 0x1

    move-object v4, p1

    move-object v5, p2

    move v8, v1

    invoke-static/range {v4 .. v10}, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedEnd(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFFZLccsanandroid/graphics/RectF;)V

    .line 205
    iget v5, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedTrackThickness:F

    iget v6, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->displayedCornerRadius:F

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move v7, v11

    move-object v9, v10

    invoke-static/range {v3 .. v9}, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->drawRoundedEnd(Lccsanandroid/graphics/Canvas;Lccsanandroid/graphics/Paint;FFFZLccsanandroid/graphics/RectF;)V

    .line 213
    return-void
.end method

.method public getPreferredHeight()I
    .locals 1

    .line 50
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearDrawingDelegate;->spec:Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;

    iget v0, v0, Lccsancom/google/android/material/progressindicator/LinearProgressIndicatorSpec;->trackThickness:I

    return v0
.end method

.method public getPreferredWidth()I
    .locals 1

    .line 45
    const/4 v0, -0x1

    return v0
.end method
