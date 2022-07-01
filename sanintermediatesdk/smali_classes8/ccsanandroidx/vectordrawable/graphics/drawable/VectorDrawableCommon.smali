.class abstract Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "VectorDrawableCommon.java"

# interfaces
.implements Lccsanandroidx/core/graphics/drawable/TintAwareDrawable;


# instance fields
.field mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTheme(Lccsanandroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "t"    # Lccsanandroid/content/res/Resources$Theme;

    .line 95
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 96
    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->applyTheme(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/Resources$Theme;)V

    .line 97
    return-void

    .line 99
    :cond_0
    return-void
.end method

.method public clearColorFilter()V
    .locals 1

    .line 103
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 105
    return-void

    .line 107
    :cond_0
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 108
    return-void
.end method

.method public getCurrent()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 112
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getCurrent()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->getCurrent()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 128
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0

    .line 131
    :cond_0
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 120
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0

    .line 123
    :cond_0
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;

    .line 136
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .line 144
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0

    .line 147
    :cond_0
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Lccsanandroid/graphics/Region;
    .locals 1

    .line 153
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getTransparentRegion()Lccsanandroid/graphics/Region;

    move-result-object v0

    return-object v0

    .line 156
    :cond_0
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->getTransparentRegion()Lccsanandroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 86
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 87
    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->jumpToCurrentState(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 88
    return-void

    .line 90
    :cond_0
    return-void
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 53
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->onBoundsChange(Lccsanandroid/graphics/Rect;)V

    .line 58
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 45
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 48
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result v0

    return v0
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .line 161
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 163
    return-void

    .line 165
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 166
    return-void
.end method

.method public setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "mode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 36
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 38
    return-void

    .line 40
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 41
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .line 78
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 80
    return-void

    .line 82
    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 62
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 63
    invoke-static {v0, p1, p2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Lccsanandroid/graphics/drawable/Drawable;FF)V

    .line 65
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 70
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 71
    invoke-static {v0, p1, p2, p3, p4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    .line 72
    return-void

    .line 74
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 170
    iget-object v0, p0, Lccsanandroidx/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method
