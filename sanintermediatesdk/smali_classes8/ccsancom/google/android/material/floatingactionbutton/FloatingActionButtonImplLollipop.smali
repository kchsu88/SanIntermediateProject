.class Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;
.super Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;
.source "FloatingActionButtonImplLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsancom/google/android/material/shadow/ShadowViewDelegate;)V
    .locals 0
    .param p1, "view"    # Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;
    .param p2, "shadowViewDelegate"    # Lccsancom/google/android/material/shadow/ShadowViewDelegate;

    .line 53
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;-><init>(Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;Lccsancom/google/android/material/shadow/ShadowViewDelegate;)V

    .line 54
    return-void
.end method

.method private createElevationAnimator(FF)Lccsanandroid/animation/Animator;
    .locals 7
    .param p1, "elevation"    # F
    .param p2, "translationZ"    # F

    .line 156
    new-instance v0, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v0}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 157
    .local v0, "set":Lccsanandroid/animation/AnimatorSet;
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const-string v5, "elevation"

    invoke-static {v1, v5, v3}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/animation/AnimatorSet;->play(Lccsanandroid/animation/Animator;)Lccsanandroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v5, Lccsanandroid/view/View;->TRANSLATION_Z:Lccsanandroid/util/Property;

    new-array v2, v2, [F

    aput p2, v2, v4

    .line 159
    invoke-static {v3, v5, v2}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v2

    .line 160
    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v2}, Lccsanandroid/animation/AnimatorSet$Builder;->with(Lccsanandroid/animation/Animator;)Lccsanandroid/animation/AnimatorSet$Builder;

    .line 161
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Lccsanandroid/animation/AnimatorSet;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 162
    return-object v0
.end method


# virtual methods
.method createBorderDrawable(ILccsanandroid/content/res/ColorStateList;)Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;
    .locals 6
    .param p1, "borderWidth"    # I
    .param p2, "backgroundTint"    # Lccsanandroid/content/res/ColorStateList;

    .line 216
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 217
    .local v0, "context":Lccsanandroid/content/Context;
    new-instance v1, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

    iget-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeAppearance:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {v2}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v1, v2}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 218
    .local v1, "borderDrawable":Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;
    sget v2, Lccsancom/google/android/material/R$color;->design_fab_stroke_top_outer_color:I

    .line 219
    invoke-static {v0, v2}, Lccsanandroidx/core/content/ContextCompat;->getColor(Lccsanandroid/content/Context;I)I

    move-result v2

    sget v3, Lccsancom/google/android/material/R$color;->design_fab_stroke_top_inner_color:I

    .line 220
    invoke-static {v0, v3}, Lccsanandroidx/core/content/ContextCompat;->getColor(Lccsanandroid/content/Context;I)I

    move-result v3

    sget v4, Lccsancom/google/android/material/R$color;->design_fab_stroke_end_inner_color:I

    .line 221
    invoke-static {v0, v4}, Lccsanandroidx/core/content/ContextCompat;->getColor(Lccsanandroid/content/Context;I)I

    move-result v4

    sget v5, Lccsancom/google/android/material/R$color;->design_fab_stroke_end_outer_color:I

    .line 222
    invoke-static {v0, v5}, Lccsanandroidx/core/content/ContextCompat;->getColor(Lccsanandroid/content/Context;I)I

    move-result v5

    .line 218
    invoke-virtual {v1, v2, v3, v4, v5}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->setGradientColors(IIII)V

    .line 223
    int-to-float v2, p1

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->setBorderWidth(F)V

    .line 224
    invoke-virtual {v1, p2}, Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;->setBorderTint(Lccsanandroid/content/res/ColorStateList;)V

    .line 225
    return-object v1
.end method

.method createShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;
    .locals 2

    .line 231
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeAppearance:Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    invoke-static {v0}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 232
    .local v0, "shapeAppearance":Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    new-instance v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;

    invoke-direct {v1, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop$AlwaysStatefulMaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    return-object v1
.end method

.method public getElevation()F
    .locals 1

    .line 167
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getElevation()F

    move-result v0

    return v0
.end method

.method getPadding(Lccsanandroid/graphics/Rect;)V
    .locals 2
    .param p1, "rect"    # Lccsanandroid/graphics/Rect;

    .line 237
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lccsancom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {v0}, Lccsancom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-super {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->getPadding(Lccsanandroid/graphics/Rect;)V

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shouldExpandBoundsForA11y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->minTouchTargetSize:I

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 241
    .local v0, "minPadding":I
    invoke-virtual {p1, v0, v0, v0, v0}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 242
    .end local v0    # "minPadding":I
    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 245
    :goto_0
    return-void
.end method

.method initializeBackgroundDrawable(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/PorterDuff$Mode;Lccsanandroid/content/res/ColorStateList;I)V
    .locals 5
    .param p1, "backgroundTint"    # Lccsanandroid/content/res/ColorStateList;
    .param p2, "backgroundTintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .param p3, "rippleColor"    # Lccsanandroid/content/res/ColorStateList;
    .param p4, "borderWidth"    # I

    .line 63
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createShapeDrawable()Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 64
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 65
    if-eqz p2, :cond_0

    .line 66
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p2}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Lccsanandroid/content/Context;)V

    .line 71
    const/4 v0, 0x0

    if-lez p4, :cond_1

    .line 72
    invoke-virtual {p0, p4, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createBorderDrawable(ILccsanandroid/content/res/ColorStateList;)Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->borderDrawable:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 73
    new-instance v1, Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Lccsanandroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->borderDrawable:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 74
    invoke-static {v4}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-static {v4}, Lccsanandroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    .local v1, "rippleContent":Lccsanandroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 76
    .end local v1    # "rippleContent":Lccsanandroid/graphics/drawable/Drawable;
    :cond_1
    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->borderDrawable:Lccsancom/google/android/material/floatingactionbutton/BorderDrawable;

    .line 77
    iget-object v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shapeDrawable:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    .line 80
    .restart local v1    # "rippleContent":Lccsanandroid/graphics/drawable/Drawable;
    :goto_0
    new-instance v2, Lccsanandroid/graphics/drawable/RippleDrawable;

    .line 82
    invoke-static {p3}, Lccsancom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Lccsanandroid/graphics/drawable/RippleDrawable;-><init>(Lccsanandroid/content/res/ColorStateList;Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 84
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->contentBackground:Lccsanandroid/graphics/drawable/Drawable;

    .line 85
    return-void
.end method

.method jumpDrawableToCurrentState()V
    .locals 0

    .line 202
    return-void
.end method

.method onCompatShadowChanged()V
    .locals 0

    .line 172
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->updatePadding()V

    .line 173
    return-void
.end method

.method onDrawableStateChanged([I)V
    .locals 3
    .param p1, "state"    # [I

    .line 182
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4

    .line 183
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v2, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->elevation:F

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    .line 185
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->pressedTranslationZ:F

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    goto :goto_1

    .line 187
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    goto :goto_1

    .line 188
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget v1, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->hoveredFocusedTranslationZ:F

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    goto :goto_1

    .line 193
    :cond_3
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setElevation(F)V

    .line 194
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setTranslationZ(F)V

    .line 197
    :cond_4
    :goto_1
    return-void
.end method

.method onElevationsChanged(FFF)V
    .locals 11
    .param p1, "elevation"    # F
    .param p2, "hoveredFocusedTranslationZ"    # F
    .param p3, "pressedTranslationZ"    # F

    .line 103
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->refreshDrawableState()V

    goto/16 :goto_0

    .line 108
    :cond_0
    new-instance v0, Lccsanandroid/animation/StateListAnimator;

    invoke-direct {v0}, Lccsanandroid/animation/StateListAnimator;-><init>()V

    .line 111
    .local v0, "stateListAnimator":Lccsanandroid/animation/StateListAnimator;
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->PRESSED_ENABLED_STATE_SET:[I

    .line 112
    invoke-direct {p0, p1, p3}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Lccsanandroid/animation/Animator;

    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/StateListAnimator;->addState([ILccsanandroid/animation/Animator;)V

    .line 113
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->HOVERED_FOCUSED_ENABLED_STATE_SET:[I

    .line 115
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Lccsanandroid/animation/Animator;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/StateListAnimator;->addState([ILccsanandroid/animation/Animator;)V

    .line 116
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->FOCUSED_ENABLED_STATE_SET:[I

    .line 118
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Lccsanandroid/animation/Animator;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/StateListAnimator;->addState([ILccsanandroid/animation/Animator;)V

    .line 119
    sget-object v1, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->HOVERED_ENABLED_STATE_SET:[I

    .line 121
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Lccsanandroid/animation/Animator;

    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lccsanandroid/animation/StateListAnimator;->addState([ILccsanandroid/animation/Animator;)V

    .line 124
    new-instance v1, Lccsanandroid/animation/AnimatorSet;

    invoke-direct {v1}, Lccsanandroid/animation/AnimatorSet;-><init>()V

    .line 125
    .local v1, "set":Lccsanandroid/animation/AnimatorSet;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "animators":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v4, 0x1

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput p1, v5, v6

    const-string v7, "elevation"

    invoke-static {v3, v7, v5}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    const-wide/16 v7, 0x64

    if-lt v3, v5, :cond_1

    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-gt v3, v5, :cond_1

    .line 132
    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v5, Lccsanandroid/view/View;->TRANSLATION_Z:Lccsanandroid/util/Property;

    new-array v9, v4, [F

    iget-object v10, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 133
    invoke-virtual {v10}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->getTranslationZ()F

    move-result v10

    aput v10, v9, v6

    invoke-static {v3, v5, v9}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .line 134
    invoke-virtual {v3, v7, v8}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .line 132
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v5, Lccsanandroid/view/View;->TRANSLATION_Z:Lccsanandroid/util/Property;

    new-array v4, v4, [F

    const/4 v9, 0x0

    aput v9, v4, v6

    .line 137
    invoke-static {v3, v5, v4}, Lccsanandroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Lccsanandroid/util/Property;[F)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v7, v8}, Lccsanandroid/animation/ObjectAnimator;->setDuration(J)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v3

    .line 136
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    new-array v3, v6, [Lccsanandroid/animation/Animator;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lccsanandroid/animation/Animator;

    invoke-virtual {v1, v3}, Lccsanandroid/animation/AnimatorSet;->playSequentially([Lccsanandroid/animation/Animator;)V

    .line 140
    sget-object v3, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->ELEVATION_ANIM_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    invoke-virtual {v1, v3}, Lccsanandroid/animation/AnimatorSet;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)V

    .line 141
    sget-object v3, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->ENABLED_STATE_SET:[I

    invoke-virtual {v0, v3, v1}, Lccsanandroid/animation/StateListAnimator;->addState([ILccsanandroid/animation/Animator;)V

    .line 144
    sget-object v3, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->EMPTY_STATE_SET:[I

    invoke-direct {p0, v9, v9}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->createElevationAnimator(FF)Lccsanandroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lccsanandroid/animation/StateListAnimator;->addState([ILccsanandroid/animation/Animator;)V

    .line 146
    iget-object v3, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->view:Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v3, v0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButton;->setStateListAnimator(Lccsanandroid/animation/StateListAnimator;)V

    .line 149
    .end local v0    # "stateListAnimator":Lccsanandroid/animation/StateListAnimator;
    .end local v1    # "set":Lccsanandroid/animation/AnimatorSet;
    .end local v2    # "animators":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/animation/Animator;>;"
    :goto_0
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shouldAddPadding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->updatePadding()V

    .line 152
    :cond_2
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method setRippleColor(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "rippleColor"    # Lccsanandroid/content/res/ColorStateList;

    .line 89
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Lccsanandroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lccsanandroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->rippleDrawable:Lccsanandroid/graphics/drawable/Drawable;

    check-cast v0, Lccsanandroid/graphics/drawable/RippleDrawable;

    .line 91
    invoke-static {p1}, Lccsancom/google/android/material/ripple/RippleUtils;->sanitizeRippleDrawableColor(Lccsanandroid/content/res/ColorStateList;)Lccsanandroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/RippleDrawable;->setColor(Lccsanandroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-super {p0, p1}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImpl;->setRippleColor(Lccsanandroid/content/res/ColorStateList;)V

    .line 95
    :goto_0
    return-void
.end method

.method shouldAddPadding()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shadowViewDelegate:Lccsancom/google/android/material/shadow/ShadowViewDelegate;

    invoke-interface {v0}, Lccsancom/google/android/material/shadow/ShadowViewDelegate;->isCompatPaddingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/android/material/floatingactionbutton/FloatingActionButtonImplLollipop;->shouldExpandBoundsForA11y()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method updateFromViewRotation()V
    .locals 0

    .line 207
    return-void
.end method
