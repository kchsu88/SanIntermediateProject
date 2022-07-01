.class public Lccsancom/google/android/material/ripple/RippleDrawableCompat;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "RippleDrawableCompat.java"

# interfaces
.implements Lccsancom/google/android/material/shape/Shapeable;
.implements Lccsanandroidx/core/graphics/drawable/TintAwareDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;
    }
.end annotation


# instance fields
.field private drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;


# direct methods
.method private constructor <init>(Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V
    .locals 0
    .param p1, "state"    # Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    .line 62
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    iput-object p1, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;Lccsancom/google/android/material/ripple/RippleDrawableCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;
    .param p2, "x1"    # Lccsancom/google/android/material/ripple/RippleDrawableCompat$1;

    .line 47
    invoke-direct {p0, p1}, Lccsancom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V

    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 2
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 58
    new-instance v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    new-instance v1, Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-direct {v0, v1}, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;-><init>(Lccsancom/google/android/material/shape/MaterialShapeDrawable;)V

    invoke-direct {p0, v0}, Lccsancom/google/android/material/ripple/RippleDrawableCompat;-><init>(Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V

    .line 59
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 126
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-boolean v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 129
    :cond_0
    return-void
.end method

.method public getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 140
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .line 163
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;
    .locals 1

    .line 95
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->getShapeAppearanceModel()Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    return-object v0
.end method

.method public isStateful()Z
    .locals 1

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mutate()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->mutate()Lccsancom/google/android/material/ripple/RippleDrawableCompat;

    move-result-object v0

    return-object v0
.end method

.method public mutate()Lccsancom/google/android/material/ripple/RippleDrawableCompat;
    .locals 2

    .line 146
    new-instance v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v1, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    invoke-direct {v0, v1}, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;-><init>(Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;)V

    .line 147
    .local v0, "newDrawableState":Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;
    iput-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    .line 148
    return-object p0
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 133
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->onBoundsChange(Lccsanandroid/graphics/Rect;)V

    .line 134
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 135
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1, "stateSet"    # [I

    .line 109
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 110
    .local v0, "changed":Z
    iget-object v1, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v1, v1, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :cond_0
    invoke-static {p1}, Lccsancom/google/android/material/ripple/RippleUtils;->shouldDrawRippleCompat([I)Z

    move-result v1

    .line 116
    .local v1, "shouldDrawRipple":Z
    iget-object v2, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-boolean v2, v2, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    if-eq v2, v1, :cond_1

    .line 117
    iget-object v2, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iput-boolean v1, v2, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->shouldDrawDelegate:Z

    .line 118
    const/4 v0, 0x1

    .line 120
    :cond_1
    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 153
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setAlpha(I)V

    .line 154
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 158
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 159
    return-void
.end method

.method public setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 1
    .param p1, "shapeAppearanceModel"    # Lccsancom/google/android/material/shape/ShapeAppearanceModel;

    .line 83
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lccsancom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 84
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .line 68
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTint(I)V

    .line 69
    return-void
.end method

.method public setTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tintList"    # Lccsanandroid/content/res/ColorStateList;

    .line 78
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 79
    return-void
.end method

.method public setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 73
    iget-object v0, p0, Lccsancom/google/android/material/ripple/RippleDrawableCompat;->drawableState:Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;

    iget-object v0, v0, Lccsancom/google/android/material/ripple/RippleDrawableCompat$RippleDrawableCompatState;->delegate:Lccsancom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/shape/MaterialShapeDrawable;->setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 74
    return-void
.end method
