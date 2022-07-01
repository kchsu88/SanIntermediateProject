.class Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "ActionBarBackgroundDrawable.java"


# instance fields
.field final mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;


# direct methods
.method public constructor <init>(Lccsanandroidx/appcompat/widget/ActionBarContainer;)V
    .locals 0
    .param p1, "container"    # Lccsanandroidx/appcompat/widget/ActionBarContainer;

    .line 32
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 33
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 38
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mBackground:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mBackground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 46
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mStackedBackground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 50
    :cond_2
    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getOutline(Lccsanandroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Lccsanandroid/graphics/Outline;

    .line 68
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mSplitBackground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getOutline(Lccsanandroid/graphics/Outline;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mBackground:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarBackgroundDrawable;->mContainer:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;->mBackground:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getOutline(Lccsanandroid/graphics/Outline;)V

    .line 78
    :cond_1
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 54
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Lccsanandroid/graphics/ColorFilter;

    .line 58
    return-void
.end method
