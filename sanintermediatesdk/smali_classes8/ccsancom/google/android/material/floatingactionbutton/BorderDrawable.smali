.class Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "BorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;
    }
.end annotation


# static fields
.field private static final DRAW_STROKE_WIDTH_MULTIPLE:F = 1.3333f


# instance fields
.field private borderTint:Lccsanandroid/content/res/ColorStateList;

.field borderWidth:F

.field private bottomInnerStrokeColor:I

.field private bottomOuterStrokeColor:I

.field private final boundsRectF:Lccsanandroid/graphics/RectF;

.field private currentBorderTintColor:I

.field private invalidateShader:Z

.field private final paint:Lccsanandroid/graphics/Paint;

.field private final pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

.field private final rect:Lccsanandroid/graphics/Rect;

.field private final rectF:Lccsanandroid/graphics/RectF;

.field private shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field private final shapePath:Lccsanandroid/graphics/Path;

.field private final state:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

.field private topInnerStrokeColor:I

.field private topOuterStrokeColor:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 82
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    nop

    .line 61
    invoke-static {}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->getInstance()Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    .line 64
    new-instance v0, Lccsanandroid/graphics/Path;

    invoke-direct {v0}, Lccsanandroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Lccsanandroid/graphics/Path;

    .line 65
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Lccsanandroid/graphics/Rect;

    .line 66
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Lccsanandroid/graphics/RectF;

    .line 67
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->boundsRectF:Lccsanandroid/graphics/RectF;

    .line 68
    new-instance v0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;-><init>(Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$1;)V

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->state:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 83
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 84
    new-instance v1, Lccsanandroid/graphics/Paint;

    invoke-direct {v1, v0}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Lccsanandroid/graphics/Paint;

    .line 85
    sget-object v0, Lccsanandroid/graphics/Paint$Style;->STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 86
    return-void
.end method

.method private createGradientShader()Lccsanandroid/graphics/Shader;
    .locals 13

    .line 224
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Lccsanandroid/graphics/Rect;

    .line 225
    .local v0, "rect":Lccsanandroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->copyBounds(Lccsanandroid/graphics/Rect;)V

    .line 227
    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 229
    .local v1, "borderRatio":F
    const/4 v2, 0x6

    new-array v11, v2, [I

    .line 230
    .local v11, "colors":[I
    iget v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->topOuterStrokeColor:I

    iget v4, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    invoke-static {v3, v4}, Lccsanandroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v11, v4

    .line 231
    iget v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    iget v5, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    invoke-static {v3, v5}, Lccsanandroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v11, v5

    .line 232
    iget v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    .line 234
    invoke-static {v3, v4}, Lccsanandroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    iget v6, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 233
    invoke-static {v3, v6}, Lccsanandroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v11, v6

    .line 235
    iget v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    .line 237
    invoke-static {v3, v4}, Lccsanandroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    iget v7, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 236
    invoke-static {v3, v7}, Lccsanandroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v7, 0x3

    aput v3, v11, v7

    .line 238
    iget v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    iget v8, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    invoke-static {v3, v8}, Lccsanandroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v8, 0x4

    aput v3, v11, v8

    .line 239
    iget v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->bottomOuterStrokeColor:I

    iget v9, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    invoke-static {v3, v9}, Lccsanandroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v3

    const/4 v9, 0x5

    aput v3, v11, v9

    .line 241
    new-array v2, v2, [F

    .line 242
    .local v2, "positions":[F
    const/4 v3, 0x0

    aput v3, v2, v4

    .line 243
    aput v1, v2, v5

    .line 244
    const/high16 v3, 0x3f000000    # 0.5f

    aput v3, v2, v6

    .line 245
    aput v3, v2, v7

    .line 246
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, v1

    aput v4, v2, v8

    .line 247
    aput v3, v2, v9

    .line 249
    new-instance v12, Lccsanandroid/graphics/LinearGradient;

    iget v3, v0, Lccsanandroid/graphics/Rect;->top:I

    int-to-float v5, v3

    iget v3, v0, Lccsanandroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    sget-object v10, Lccsanandroid/graphics/Shader$TileMode;->CLAMP:Lccsanandroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v12

    move-object v8, v11

    move-object v9, v2

    invoke-direct/range {v3 .. v10}, Lccsanandroid/graphics/LinearGradient;-><init>(FFFF[I[FLccsanandroid/graphics/Shader$TileMode;)V

    return-object v12
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 125
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Lccsanandroid/graphics/Paint;

    invoke-direct {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->createGradientShader()Lccsanandroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setShader(Lccsanandroid/graphics/Shader;)Lccsanandroid/graphics/Shader;

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 130
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0}, Lccsanandroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 131
    .local v0, "halfBorderWidth":F
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->copyBounds(Lccsanandroid/graphics/Rect;)V

    .line 132
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Lccsanandroid/graphics/RectF;

    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/Rect;)V

    .line 136
    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 137
    invoke-virtual {v2}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v2

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v3}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v2

    .line 138
    .local v2, "cornerSize":F
    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Lccsanandroid/graphics/RectF;

    invoke-virtual {v3}, Lccsanandroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 139
    .local v1, "radius":F
    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Lccsanandroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Lccsanandroid/graphics/RectF;

    invoke-virtual {v3, v0, v0}, Lccsanandroid/graphics/RectF;->inset(FF)V

    .line 141
    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Lccsanandroid/graphics/RectF;

    iget-object v4, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v1, v4}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    .line 143
    :cond_1
    return-void
.end method

.method protected getBoundsAsRectF()Lccsanandroid/graphics/RectF;
    .locals 2

    .line 173
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->boundsRectF:Lccsanandroid/graphics/RectF;

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/Rect;)V

    .line 174
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->boundsRectF:Lccsanandroid/graphics/RectF;

    return-object v0
.end method

.method public getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 256
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->state:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable$BorderState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 2

    .line 194
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, -0x3

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0
.end method

.method public getOutline(Lccsanandroid/graphics/Outline;)V
    .locals 5
    .param p1, "outline"    # Lccsanandroid/graphics/Outline;

    .line 148
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Lccsanandroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lccsancom/google/android/material/shape/CornerSize;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/android/material/shape/CornerSize;->getCornerSize(Lccsanandroid/graphics/RectF;)F

    move-result v0

    .line 150
    .local v0, "radius":F
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lccsanandroid/graphics/Outline;->setRoundRect(Lccsanandroid/graphics/Rect;F)V

    .line 151
    return-void

    .line 154
    .end local v0    # "radius":F
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Lccsanandroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->copyBounds(Lccsanandroid/graphics/Rect;)V

    .line 155
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Lccsanandroid/graphics/RectF;

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/RectF;->set(Lccsanandroid/graphics/Rect;)V

    .line 156
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->pathProvider:Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->rectF:Lccsanandroid/graphics/RectF;

    iget-object v4, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Lccsanandroid/graphics/Path;

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsancom/google/android/material/shape/ShapeAppearancePathProvider;->calculatePath(Lccsancom/google/android/material/shape/ShapeAppearanceModel;FLccsanandroid/graphics/RectF;Lccsanandroid/graphics/Path;)V

    .line 157
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Lccsanandroid/graphics/Path;

    invoke-virtual {v0}, Lccsanandroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapePath:Lccsanandroid/graphics/Path;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Outline;->setConvexPath(Lccsanandroid/graphics/Path;)V

    .line 160
    :cond_1
    return-void
.end method

.method public getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;

    .line 164
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->getBoundsAsRectF()Lccsanandroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->isRoundRect(Lccsanandroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 166
    .local v0, "borderWidth":I
    invoke-virtual {p1, v0, v0, v0, v0}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 168
    .end local v0    # "borderWidth":I
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 178
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Lccsanandroid/content/res/ColorStateList;

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

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 200
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .line 209
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Lccsanandroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 210
    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 211
    .local v0, "newColor":I
    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    if-eq v0, v1, :cond_0

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 213
    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 216
    .end local v0    # "newColor":I
    :cond_0
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    .line 219
    :cond_1
    iget-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 188
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setAlpha(I)V

    .line 189
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    .line 190
    return-void
.end method

.method setBorderTint(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 98
    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->getState()[I

    move-result-object v0

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->currentBorderTintColor:I

    .line 101
    :cond_0
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->borderTint:Lccsanandroid/content/res/ColorStateList;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 103
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    .line 104
    return-void
.end method

.method public setBorderWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .line 89
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 90
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->borderWidth:F

    .line 91
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Lccsanandroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float v1, v1, p1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateShader:Z

    .line 93
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    .line 95
    :cond_0
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 108
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->paint:Lccsanandroid/graphics/Paint;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Paint;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)Lccsanandroid/graphics/ColorFilter;

    .line 109
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    .line 110
    return-void
.end method

.method setGradientColors(IIII)V
    .locals 0
    .param p1, "topOuterStrokeColor"    # I
    .param p2, "topInnerStrokeColor"    # I
    .param p3, "bottomOuterStrokeColor"    # I
    .param p4, "bottomInnerStrokeColor"    # I

    .line 117
    iput p1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->topOuterStrokeColor:I

    .line 118
    iput p2, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->topInnerStrokeColor:I

    .line 119
    iput p3, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->bottomOuterStrokeColor:I

    .line 120
    iput p4, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->bottomInnerStrokeColor:I

    .line 121
    return-void
.end method

.method public setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 182
    iput-object p1, p0, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 183
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->invalidateSelf()V

    .line 184
    return-void
.end method
