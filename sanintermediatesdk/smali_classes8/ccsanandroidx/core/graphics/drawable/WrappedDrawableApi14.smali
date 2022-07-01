.class Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "WrappedDrawableApi14.java"

# interfaces
.implements Lccsanandroid/graphics/drawable/Drawable$Callback;
.implements Lccsanandroidx/core/graphics/drawable/WrappedDrawable;
.implements Lccsanandroidx/core/graphics/drawable/TintAwareDrawable;


# static fields
.field static final DEFAULT_TINT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;


# instance fields
.field private mColorFilterSet:Z

.field private mCurrentColor:I

.field private mCurrentMode:Lccsanandroid/graphics/PorterDuff$Mode;

.field mDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private mMutated:Z

.field mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    sput-object v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->DEFAULT_TINT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "dr"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dr"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    invoke-direct {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mutateConstantState()Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    .line 65
    invoke-virtual {p0, p1}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->setWrappedDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 66
    return-void
.end method

.method constructor <init>(Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;Lccsanandroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;
    .param p2, "res"    # Lccsanandroid/content/res/Resources;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "state",
            "res"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    iput-object p1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    .line 54
    invoke-direct {p0, p2}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->updateLocalState(Lccsanandroid/content/res/Resources;)V

    .line 55
    return-void
.end method

.method private mutateConstantState()Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;
    .locals 2

    .line 255
    new-instance v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    invoke-direct {v0, v1}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;-><init>(Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;)V

    return-object v0
.end method

.method private updateLocalState(Lccsanandroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    iget-object v0, v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->setWrappedDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 77
    :cond_0
    return-void
.end method

.method private updateTint([I)Z
    .locals 5
    .param p1, "state"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 305
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->isCompatTintEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 307
    return v1

    .line 310
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    iget-object v0, v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Lccsanandroid/content/res/ColorStateList;

    .line 311
    .local v0, "tintList":Lccsanandroid/content/res/ColorStateList;
    iget-object v2, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    iget-object v2, v2, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 313
    .local v2, "tintMode":Lccsanandroid/graphics/PorterDuff$Mode;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 314
    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-virtual {v0, p1, v3}, Lccsanandroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 315
    .local v3, "color":I
    iget-boolean v4, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mColorFilterSet:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentColor:I

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 322
    .end local v3    # "color":I
    :cond_1
    goto :goto_1

    .line 316
    .restart local v3    # "color":I
    :cond_2
    :goto_0
    invoke-virtual {p0, v3, v2}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->setColorFilter(ILccsanandroid/graphics/PorterDuff$Mode;)V

    .line 317
    iput v3, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentColor:I

    .line 318
    iput-object v2, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mCurrentMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 319
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mColorFilterSet:Z

    .line 320
    return v1

    .line 323
    .end local v3    # "color":I
    :cond_3
    iput-boolean v1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mColorFilterSet:Z

    .line 324
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->clearColorFilter()V

    .line 326
    :goto_1
    return v1
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 87
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 103
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    .line 104
    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    .line 103
    return v0
.end method

.method public getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 222
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mChangingConfigurations:I

    .line 224
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    return-object v0

    .line 226
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 152
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getCurrent()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 177
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 172
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 216
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Lccsanandroid/graphics/drawable/Drawable;)I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 187
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 182
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 162
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getState()[I
    .locals 1

    .line 146
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    return-object v0
.end method

.method public getTransparentRegion()Lccsanandroid/graphics/Region;
    .locals 1

    .line 167
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getTransparentRegion()Lccsanandroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public final getWrappedDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 334
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public invalidateDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "who"
        }
    .end annotation

    .line 263
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->invalidateSelf()V

    .line 264
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Lccsanandroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method protected isCompatTintEnabled()Z
    .locals 1

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 2

    .line 130
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->isCompatTintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Lccsanandroid/content/res/ColorStateList;

    goto :goto_0

    .line 132
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 133
    .local v0, "tintList":Lccsanandroid/content/res/ColorStateList;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public jumpToCurrentState()V
    .locals 1

    .line 81
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 82
    return-void
.end method

.method public mutate()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 232
    iget-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mMutated:Z

    if-nez v0, :cond_3

    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_3

    .line 233
    invoke-direct {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mutateConstantState()Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    .line 234
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    .line 237
    :cond_0
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_2

    .line 238
    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 240
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mMutated:Z

    .line 242
    :cond_3
    return-object p0
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutDirection"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Lccsanandroid/graphics/drawable/Drawable;I)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0
.end method

.method public scheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "what",
            "when"
        }
    .end annotation

    .line 271
    invoke-virtual {p0, p2, p3, p4}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 272
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 121
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1
    .param p1, "mirrored"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirrored"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Lccsanandroid/graphics/drawable/Drawable;Z)V

    .line 199
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 1
    .param p1, "configs"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configs"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 99
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Lccsanandroid/graphics/ColorFilter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cf"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 126
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dither"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 111
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filter"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 116
    return-void
.end method

.method public setState([I)Z
    .locals 2
    .param p1, "stateSet"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stateSet"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 139
    .local v0, "handled":Z
    invoke-direct {p0, p1}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->updateTint([I)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v0, v1

    .line 140
    return v0
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tint"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tint"
        }
    .end annotation

    .line 289
    invoke-static {p1}, Lccsanandroid/content/res/ColorStateList;->valueOf(I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->setTintList(Lccsanandroid/content/res/ColorStateList;)V

    .line 290
    return-void
.end method

.method public setTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tint"
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    iput-object p1, v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Lccsanandroid/content/res/ColorStateList;

    .line 295
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->updateTint([I)Z

    .line 296
    return-void
.end method

.method public setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tintMode"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    iput-object p1, v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 301
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->updateTint([I)Z

    .line 302
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "visible",
            "restart"
        }
    .end annotation

    .line 157
    invoke-super {p0, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

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

.method public final setWrappedDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Lccsanandroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dr"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 343
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 346
    :cond_0
    iput-object p1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 348
    if-eqz p1, :cond_1

    .line 349
    invoke-virtual {p1, p0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 351
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->setVisible(ZZ)Z

    .line 352
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->setState([I)Z

    .line 353
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->setLevel(I)Z

    .line 354
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 355
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->mState:Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 360
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->invalidateSelf()V

    .line 361
    return-void
.end method

.method public unscheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "who",
            "what"
        }
    .end annotation

    .line 279
    invoke-virtual {p0, p2}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 280
    return-void
.end method
