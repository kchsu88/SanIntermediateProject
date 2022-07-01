.class Lccsancom/google/android/material/textfield/CutoutDrawable;
.super Lccsancom/google/android/material/shape/MaterialShapeDrawable;
.source "CutoutDrawable.java"


# instance fields
.field private final cutoutBounds:Lccsanandroid/graphics/RectF;

.field private final cutoutPaint:Lccsanandroid/graphics/Paint;

.field private savedLayer:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/textfield/CutoutDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 45
    return-void
.end method

.method constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 48
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 49
    new-instance v0, Lccsanandroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsanandroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Lccsanandroid/graphics/Paint;

    .line 50
    invoke-direct {p0}, Lccsancom/google/android/material/textfield/CutoutDrawable;->setPaintStyles()V

    .line 51
    new-instance v0, Lccsanandroid/graphics/RectF;

    invoke-direct {v0}, Lccsanandroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Lccsanandroid/graphics/RectF;

    .line 52
    return-void
.end method

.method private postDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 121
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/CutoutDrawable;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/textfield/CutoutDrawable;->useHardwareLayer(Lccsanandroid/graphics/drawable/Drawable$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->savedLayer:I

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Canvas;->restoreToCount(I)V

    .line 124
    :cond_0
    return-void
.end method

.method private preDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 97
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/CutoutDrawable;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 99
    .local v0, "callback":Lccsanandroid/graphics/drawable/Drawable$Callback;
    invoke-direct {p0, v0}, Lccsancom/google/android/material/textfield/CutoutDrawable;->useHardwareLayer(Lccsanandroid/graphics/drawable/Drawable$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    .line 102
    .local v1, "viewCallback":Lccsanandroid/view/View;
    invoke-virtual {v1}, Lccsanandroid/view/View;->getLayerType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lccsanandroid/view/View;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 105
    .end local v1    # "viewCallback":Lccsanandroid/view/View;
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/CutoutDrawable;->saveCanvasLayer(Lccsanandroid/graphics/Canvas;)V

    .line 109
    :goto_0
    return-void
.end method

.method private saveCanvasLayer(Lccsanandroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 112
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 113
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/Canvas;->saveLayer(FFFFLccsanandroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->savedLayer:I

    goto :goto_0

    .line 115
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p1}, Lccsanandroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lccsanandroid/graphics/Canvas;->saveLayer(FFFFLccsanandroid/graphics/Paint;I)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->savedLayer:I

    .line 118
    :goto_0
    return-void
.end method

.method private setPaintStyles()V
    .locals 3

    .line 55
    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Lccsanandroid/graphics/Paint;

    sget-object v1, Lccsanandroid/graphics/Paint$Style;->FILL_AND_STROKE:Lccsanandroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setStyle(Lccsanandroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Lccsanandroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Lccsanandroid/graphics/Paint;

    new-instance v1, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v2, Lccsanandroid/graphics/PorterDuff$Mode;->DST_OUT:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 58
    return-void
.end method

.method private useHardwareLayer(Lccsanandroid/graphics/drawable/Drawable$Callback;)Z
    .locals 1
    .param p1, "callback"    # Lccsanandroid/graphics/drawable/Drawable$Callback;

    .line 127
    instance-of v0, p1, Lccsanandroid/view/View;

    return v0
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 87
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/CutoutDrawable;->preDraw(Lccsanandroid/graphics/Canvas;)V

    .line 88
    invoke-super {p0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Lccsanandroid/graphics/RectF;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutPaint:Lccsanandroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/Canvas;->drawRect(Lccsanandroid/graphics/RectF;Lccsanandroid/graphics/Paint;)V

    .line 93
    invoke-direct {p0, p1}, Lccsancom/google/android/material/textfield/CutoutDrawable;->postDraw(Lccsanandroid/graphics/Canvas;)V

    .line 94
    return-void
.end method

.method hasCutout()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v0}, Lccsanandroid/graphics/RectF;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method removeCutout()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lccsancom/google/android/material/textfield/CutoutDrawable;->setCutout(FFFF)V

    .line 83
    return-void
.end method

.method setCutout(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .line 67
    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Lccsanandroid/graphics/RectF;

    iget v0, v0, Lccsanandroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Lccsanandroid/graphics/RectF;

    iget v0, v0, Lccsanandroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Lccsanandroid/graphics/RectF;

    iget v0, v0, Lccsanandroid/graphics/RectF;->right:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Lccsanandroid/graphics/RectF;

    iget v0, v0, Lccsanandroid/graphics/RectF;->bottom:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_1

    .line 71
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/textfield/CutoutDrawable;->cutoutBounds:Lccsanandroid/graphics/RectF;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/RectF;->set(FFFF)V

    .line 72
    invoke-virtual {p0}, Lccsancom/google/android/material/textfield/CutoutDrawable;->invalidateSelf()V

    .line 74
    :cond_1
    return-void
.end method

.method setCutout(Lccsanandroid/graphics/RectF;)V
    .locals 4
    .param p1, "bounds"    # Lccsanandroid/graphics/RectF;

    .line 77
    iget v0, p1, Lccsanandroid/graphics/RectF;->left:F

    iget v1, p1, Lccsanandroid/graphics/RectF;->top:F

    iget v2, p1, Lccsanandroid/graphics/RectF;->right:F

    iget v3, p1, Lccsanandroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lccsancom/google/android/material/textfield/CutoutDrawable;->setCutout(FFFF)V

    .line 78
    return-void
.end method
