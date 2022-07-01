.class public Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "DrawableWrapper.java"

# interfaces
.implements Lccsanandroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private mDrawable:Lccsanandroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 46
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->setWrappedDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 52
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 53
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 67
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public getCurrent()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 113
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getCurrent()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 139
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 134
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 149
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 144
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 124
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;

    .line 154
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .line 103
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Lccsanandroid/graphics/Region;
    .locals 1

    .line 129
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getTransparentRegion()Lccsanandroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 222
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 162
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->invalidateSelf()V

    .line 163
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 108
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 109
    return-void
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 57
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 58
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 183
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 170
    invoke-virtual {p0, p2, p3, p4}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 171
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 83
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z

    .line 188
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Lccsanandroid/graphics/drawable/Drawable;Z)V

    .line 189
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I

    .line 62
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 63
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Lccsanandroid/graphics/ColorFilter;

    .line 88
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 89
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .line 73
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 74
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .line 78
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 79
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 213
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Lccsanandroid/graphics/drawable/Drawable;FF)V

    .line 214
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 218
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2, p3, p4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    .line 219
    return-void
.end method

.method public setState([I)Z
    .locals 1
    .param p1, "stateSet"    # [I

    .line 98
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I

    .line 198
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTint(Lccsanandroid/graphics/drawable/Drawable;I)V

    .line 199
    return-void
.end method

.method public setTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 203
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 204
    return-void
.end method

.method public setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 208
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 209
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 118
    invoke-super {p0, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public setWrappedDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 226
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 227
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 230
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 232
    if-eqz p1, :cond_1

    .line 233
    invoke-virtual {p1, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 235
    :cond_1
    return-void
.end method

.method public unscheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 178
    invoke-virtual {p0, p2}, Lccsanandroidx/appcompat/graphics/drawable/DrawableWrapper;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 179
    return-void
.end method
