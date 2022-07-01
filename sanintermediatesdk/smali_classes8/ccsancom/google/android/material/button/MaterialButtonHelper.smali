.class Lccsancom/google/android/material/button/MaterialButtonHelper;
.super Ljava/lang/Object;
.source "MaterialButtonHelper.java"


# static fields
.field private static final IS_LOLLIPOP:Z


# instance fields
.field private backgroundOverwritten:Z

.field private backgroundTint:Lccsanandroid/content/res/ColorStateList;

.field private backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field private checkable:Z

.field private cornerRadius:I

.field private cornerRadiusSet:Z

.field private elevation:I

.field private insetBottom:I

.field private insetLeft:I

.field private insetRight:I

.field private insetTop:I

.field private maskDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private final materialButton:Lccsancom/google/android/material/button/MaterialButton;

.field private rippleColor:Lccsanandroid/content/res/ColorStateList;

.field private rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

.field private shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

.field private shouldDrawSurfaceColorStroke:Z

.field private strokeColor:Lccsanandroid/content/res/ColorStateList;

.field private strokeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lccsancom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    return-void
.end method

.method constructor <init>(Lccsancom/google/android/material/button/MaterialButton;Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1, "button"    # Lccsancom/google/android/material/button/MaterialButton;
    .param p2, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 71
    iput-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 72
    iput-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 78
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    .line 79
    iput-object p2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 80
    return-void
.end method

.method private createBackground()Lccsanandroid/graphics/drawable/Drawable;
    .locals 9

    .line 203
    new-instance v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 204
    .local v0, "backgroundDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lccsancom/google/android/material/button/MaterialButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    .line 205
    .local v1, "context":Lccsanandroid/content/Context;
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 206
    iget-object v2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    invoke-static {v0, v2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 207
    iget-object v2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_0

    .line 208
    invoke-static {v0, v2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 210
    :cond_0
    iget v2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLccsanandroid/content/res/ColorStateList;)V

    .line 212
    new-instance v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v2, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 214
    .local v2, "surfaceColorStrokeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 215
    iget v4, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v4, v4

    iget-boolean v5, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    sget v6, Lccsancom/google/android/material/R$attr;->colorSurface:I

    .line 218
    invoke-static {v5, v6}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 215
    :goto_0
    invoke-virtual {v2, v4, v5}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 221
    sget-boolean v4, Lccsancom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 222
    new-instance v4, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v7, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v4, v7}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v4, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 223
    const/4 v7, -0x1

    invoke-static {v4, v7}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTint(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 224
    new-instance v4, Lccsanandroid/graphics/drawable/RippleDrawable;

    iget-object v7, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    .line 226
    invoke-static {v7}, Lccsancom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v7

    new-instance v8, Lccsanandroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Lccsanandroid/graphics/drawable/Drawable;

    aput-object v2, v5, v3

    aput-object v0, v5, v6

    invoke-direct {v8, v5}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-direct {p0, v8}, Lccsancom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/InsetDrawable;

    move-result-object v3

    iget-object v5, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-direct {v4, v7, v3, v5}, Lccsanandroid/graphics/drawable/RippleDrawable;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

    .line 231
    return-object v4

    .line 233
    :cond_2
    new-instance v4, Lccsancom/google/android/material/ripple/RippleDrawableCompat;

    iget-object v7, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v4, v7}, Lccsancom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v4, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 234
    iget-object v7, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    .line 235
    invoke-static {v7}, Lccsancom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v7

    .line 234
    invoke-static {v4, v7}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 236
    new-instance v4, Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v7, 0x3

    new-array v7, v7, [Lccsanandroid/graphics/drawable/Drawable;

    aput-object v2, v7, v3

    aput-object v0, v7, v6

    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lccsanandroid/graphics/drawable/Drawable;

    aput-object v3, v7, v5

    invoke-direct {v4, v7}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

    .line 239
    invoke-direct {p0, v4}, Lccsancom/google/android/material/button/MaterialButtonHelper;->wrapDrawableWithInset(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/InsetDrawable;

    move-result-object v3

    return-object v3
.end method

.method private getMaterialShapeDrawable(Z)Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 3
    .param p1, "getSurfaceColorStrokeDrawable"    # Z

    .line 328
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    .line 329
    sget-boolean v0, Lccsancom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/drawable/InsetDrawable;

    .line 331
    .local v0, "insetDrawable":Lccsanandroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/InsetDrawable;->getDrawable()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lccsanandroid/graphics/drawable/LayerDrawable;

    .line 332
    .local v1, "layerDrawable":Lccsanandroid/graphics/drawable/LayerDrawable;
    nop

    .line 333
    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 332
    return-object v2

    .line 335
    .end local v0    # "insetDrawable":Lccsanandroid/graphics/drawable/InsetDrawable;
    .end local v1    # "layerDrawable":Lccsanandroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

    .line 336
    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 335
    return-object v0

    .line 340
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSurfaceColorStrokeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    .line 358
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method private setVerticalInsets(II)V
    .locals 9
    .param p1, "newInsetTop"    # I
    .param p2, "newInsetBottom"    # I

    .line 411
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingStart(Lccsanandroid/view/View;)I

    move-result v0

    .line 412
    .local v0, "paddingStart":I
    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lccsancom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v1

    .line 413
    .local v1, "paddingTop":I
    iget-object v2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-static {v2}, Lccsanandroidx/core/view/ViewCompat;->getPaddingEnd(Lccsanandroid/view/View;)I

    move-result v2

    .line 414
    .local v2, "paddingEnd":I
    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Lccsancom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v3

    .line 415
    .local v3, "paddingBottom":I
    iget v4, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 416
    .local v4, "oldInsetTop":I
    iget v5, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 417
    .local v5, "oldInsetBottom":I
    iput p2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 418
    iput p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 419
    iget-boolean v6, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    if-nez v6, :cond_0

    .line 420
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    .line 423
    :cond_0
    iget-object v6, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    add-int v7, v1, p1

    sub-int/2addr v7, v4

    add-int v8, v3, p2

    sub-int/2addr v8, v5

    invoke-static {v6, v0, v7, v2, v8}, Lccsanandroidx/core/view/ViewCompat;->setPaddingRelative(Lccsanandroid/view/View;IIII)V

    .line 429
    return-void
.end method

.method private updateBackground()V
    .locals 2

    .line 137
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->createBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButton;->setInternalBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 139
    .local v0, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    if-eqz v0, :cond_0

    .line 140
    iget v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->elevation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 142
    :cond_0
    return-void
.end method

.method private updateButtonShape(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 362
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 365
    :cond_0
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 368
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lccsancom/google/android/material/shape/Shapeable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 369
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaskDrawable()Lccsancom/google/android/material/shape/Shapeable;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/android/material/shape/Shapeable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 371
    :cond_2
    return-void
.end method

.method private updateStroke()V
    .locals 5

    .line 297
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    .line 298
    .local v0, "materialShapeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getSurfaceColorStrokeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v1

    .line 299
    .local v1, "surfaceColorStrokeDrawable":Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    if-eqz v0, :cond_1

    .line 300
    iget v2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLccsanandroid/content/res/ColorStateList;)V

    .line 301
    if-eqz v1, :cond_1

    .line 302
    iget v2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    int-to-float v2, v2

    iget-boolean v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    sget v4, Lccsancom/google/android/material/R$attr;->colorSurface:I

    .line 305
    invoke-static {v3, v4}, Lccsancom/google/android/material/color/MaterialColors;->getColor(Lccsanandroid/view/View;I)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 302
    :goto_0
    invoke-virtual {v1, v2, v3}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 309
    :cond_1
    return-void
.end method

.method private wrapDrawableWithInset(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/drawable/InsetDrawable;
    .locals 7
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 163
    new-instance v6, Lccsanandroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    iget v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    iget v4, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    iget v5, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lccsanandroid/graphics/drawable/InsetDrawable;-><init>(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method


# virtual methods
.method getCornerRadius()I
    .locals 1

    .line 323
    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    return v0
.end method

.method public getInsetBottom()I
    .locals 1

    .line 402
    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    return v0
.end method

.method public getInsetTop()I
    .locals 1

    .line 432
    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    return v0
.end method

.method public getMaskDrawable()Lccsancom/google/android/material/shape/Shapeable;
    .locals 3

    .line 375
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 376
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 378
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/shape/Shapeable;

    return-object v0

    .line 381
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleDrawable:Lccsanandroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/LayerDrawable;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/shape/Shapeable;

    return-object v0

    .line 384
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 1

    .line 345
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable(Z)Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    return-object v0
.end method

.method getRippleColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 270
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 394
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    return-object v0
.end method

.method getStrokeColor()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 282
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method getStrokeWidth()I
    .locals 1

    .line 293
    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    return v0
.end method

.method getSupportBackgroundTintList()Lccsanandroid/content/res/ColorStateList;
    .locals 1

    .line 176
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    return-object v0
.end method

.method getSupportBackgroundTintMode()Lccsanandroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 189
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method isBackgroundOverwritten()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    return v0
.end method

.method isCheckable()Z
    .locals 1

    .line 353
    iget-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    return v0
.end method

.method loadFromAttributes(Lccsanandroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "attributes"    # Lccsanandroid/content/res/TypedArray;

    .line 83
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_android_insetLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    .line 84
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_android_insetRight:I

    .line 85
    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    .line 86
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    .line 87
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_android_insetBottom:I

    .line 88
    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    .line 91
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 92
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 93
    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 97
    :cond_0
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 99
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_backgroundTintMode:I

    .line 101
    invoke-virtual {p1, v0, v2}, Lccsanandroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v2, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 100
    invoke-static {v0, v2}, Lccsancom/google/android/material/internal/ViewUtils;->parseTintMode(ILccsanandroid/graphics/PorterDuff$Mode;)Lccsanandroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 102
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    .line 104
    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialButton_backgroundTint:I

    .line 103
    invoke-static {v0, p1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    .line 105
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    .line 107
    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialButton_strokeColor:I

    .line 106
    invoke-static {v0, p1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    .line 108
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    .line 110
    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialButton_rippleColor:I

    .line 109
    invoke-static {v0, p1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    .line 112
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_android_checkable:I

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 113
    sget v0, Lccsancom/google/android/material/R$styleable;->MaterialButton_elevation:I

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->elevation:I

    .line 116
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->getPaddingStart(Lccsanandroid/view/View;)I

    move-result v0

    .line 117
    .local v0, "paddingStart":I
    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lccsancom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v1

    .line 118
    .local v1, "paddingTop":I
    iget-object v2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-static {v2}, Lccsanandroidx/core/view/ViewCompat;->getPaddingEnd(Lccsanandroid/view/View;)I

    move-result v2

    .line 119
    .local v2, "paddingEnd":I
    iget-object v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v3}, Lccsancom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v3

    .line 122
    .local v3, "paddingBottom":I
    sget v4, Lccsancom/google/android/material/R$styleable;->MaterialButton_android_background:I

    invoke-virtual {p1, v4}, Lccsanandroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->setBackgroundOverwritten()V

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->updateBackground()V

    .line 128
    :goto_0
    iget-object v4, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    iget v5, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    add-int/2addr v5, v0

    iget v6, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    add-int/2addr v6, v1

    iget v7, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    add-int/2addr v7, v2

    iget v8, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    add-int/2addr v8, v3

    invoke-static {v4, v5, v6, v7, v8}, Lccsanandroidx/core/view/ViewCompat;->setPaddingRelative(Lccsanandroid/view/View;IIII)V

    .line 134
    return-void
.end method

.method setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 250
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 253
    :cond_0
    return-void
.end method

.method setBackgroundOverwritten()V
    .locals 2

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundOverwritten:Z

    .line 153
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 154
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 155
    return-void
.end method

.method setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .line 349
    iput-boolean p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->checkable:Z

    .line 350
    return-void
.end method

.method setCornerRadius(I)V
    .locals 2
    .param p1, "cornerRadius"    # I

    .line 314
    iget-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    if-eq v0, p1, :cond_1

    .line 315
    :cond_0
    iput p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->cornerRadius:I

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->cornerRadiusSet:Z

    .line 318
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/ShapeAppearanceModel;->withCornerSize(F)Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 320
    :cond_1
    return-void
.end method

.method public setInsetBottom(I)V
    .locals 1
    .param p1, "newInsetBottom"    # I

    .line 398
    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    invoke-direct {p0, v0, p1}, Lccsancom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    .line 399
    return-void
.end method

.method public setInsetTop(I)V
    .locals 1
    .param p1, "newInsetTop"    # I

    .line 406
    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    invoke-direct {p0, p1, v0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->setVerticalInsets(II)V

    .line 407
    return-void
.end method

.method setRippleColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "rippleColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 256
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 257
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->rippleColor:Lccsanandroid/content/res/ColorStateList;

    .line 258
    sget-boolean v0, Lccsancom/google/android/material/button/MaterialButtonHelper;->IS_LOLLIPOP:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lccsancom/google/android/material/button/MaterialButton;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Lccsanandroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 259
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsanandroid/graphics/drawable/RippleDrawable;

    .line 260
    invoke-static {p1}, Lccsancom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/RippleDrawable;->setColor(Lccsanandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 261
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->materialButton:Lccsancom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/button/MaterialButton;->getBackground()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;

    .line 263
    invoke-static {p1}, Lccsancom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->setTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 266
    :cond_1
    :goto_0
    return-void
.end method

.method setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 0
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 388
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shapeAppearanceModel:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 389
    invoke-direct {p0, p1}, Lccsancom/google/android/material/button/MaterialButtonHelper;->updateButtonShape(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 390
    return-void
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
    .locals 0
    .param p1, "shouldDrawSurfaceColorStroke"    # Z

    .line 193
    iput-boolean p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->shouldDrawSurfaceColorStroke:Z

    .line 194
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 195
    return-void
.end method

.method setStrokeColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "strokeColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 274
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 275
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeColor:Lccsanandroid/content/res/ColorStateList;

    .line 276
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 278
    :cond_0
    return-void
.end method

.method setStrokeWidth(I)V
    .locals 1
    .param p1, "strokeWidth"    # I

    .line 286
    iget v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    if-eq v0, p1, :cond_0

    .line 287
    iput p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->strokeWidth:I

    .line 288
    invoke-direct {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->updateStroke()V

    .line 290
    :cond_0
    return-void
.end method

.method setSupportBackgroundTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;

    .line 167
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 168
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    .line 169
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTint:Lccsanandroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 173
    :cond_0
    return-void
.end method

.method setSupportBackgroundTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "mode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 180
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 181
    iput-object p1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 182
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lccsancom/google/android/material/button/MaterialButtonHelper;->getMaterialShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->backgroundTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 186
    :cond_0
    return-void
.end method

.method updateMaskBounds(II)V
    .locals 5
    .param p1, "height"    # I
    .param p2, "width"    # I

    .line 244
    iget-object v0, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->maskDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 245
    iget v1, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetLeft:I

    iget v2, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetTop:I

    iget v3, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetRight:I

    sub-int v3, p2, v3

    iget v4, p0, Lccsancom/google/android/material/button/MaterialButtonHelper;->insetBottom:I

    sub-int v4, p1, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 247
    :cond_0
    return-void
.end method
