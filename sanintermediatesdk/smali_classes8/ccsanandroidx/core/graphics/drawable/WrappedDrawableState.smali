.class final Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;
.super Lccsanandroid/graphics/drawable/Drawable$ConstantState;
.source "WrappedDrawableState.java"


# instance fields
.field mChangingConfigurations:I

.field mDrawableState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

.field mTint:Lccsanandroid/content/res/ColorStateList;

.field mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;)V
    .locals 1
    .param p1, "orig"    # Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orig"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Lccsanandroid/content/res/ColorStateList;

    .line 33
    sget-object v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;->DEFAULT_TINT_MODE:Lccsanandroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget v0, p1, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mChangingConfigurations:I

    iput v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mChangingConfigurations:I

    .line 38
    iget-object v0, p1, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    .line 39
    iget-object v0, p1, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Lccsanandroid/content/res/ColorStateList;

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTint:Lccsanandroid/content/res/ColorStateList;

    .line 40
    iget-object v0, p1, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method canConstantState()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 61
    iget v0, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mChangingConfigurations:I

    .line 62
    iget-object v1, p0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->mDrawableState:Lccsanandroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    .line 61
    return v0
.end method

.method public newDrawable()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;->newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public newDrawable(Lccsanandroid/content/res/Resources;)Lccsanandroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Lccsanandroid/content/res/Resources;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 53
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 54
    new-instance v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi21;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi21;-><init>(Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;Lccsanandroid/content/res/Resources;)V

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/core/graphics/drawable/WrappedDrawableApi14;-><init>(Lccsanandroidx/core/graphics/drawable/WrappedDrawableState;Lccsanandroid/content/res/Resources;)V

    return-object v0
.end method
