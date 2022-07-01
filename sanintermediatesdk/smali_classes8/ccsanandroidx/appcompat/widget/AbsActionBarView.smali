.class abstract Lccsanandroidx/appcompat/widget/AbsActionBarView;
.super Lccsanandroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field protected mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Lccsanandroidx/appcompat/widget/ActionMenuView;

.field protected final mPopupContext:Lccsanandroid/content/Context;

.field protected final mVisAnimListener:Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lccsanandroidx/appcompat/widget/AbsActionBarView;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    .line 64
    new-instance v0, Lccsanandroid/util/TypedValue;

    invoke-direct {v0}, Lccsanandroid/util/TypedValue;-><init>()V

    .line 65
    .local v0, "tv":Lccsanandroid/util/TypedValue;
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lccsanandroidx/appcompat/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/res/Resources$Theme;->resolveAttribute(ILccsanandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    .line 67
    new-instance v1, Lccsanandroid/view/ContextThemeWrapper;

    iget v2, v0, Lccsanandroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Lccsanandroid/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mPopupContext:Lccsanandroid/content/Context;

    goto :goto_0

    .line 69
    :cond_0
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mPopupContext:Lccsanandroid/content/Context;

    .line 71
    :goto_0
    return-void
.end method

.method static synthetic access$001(Lccsanandroidx/appcompat/widget/AbsActionBarView;I)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/appcompat/widget/AbsActionBarView;
    .param p1, "x1"    # I

    .line 36
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Lccsanandroidx/appcompat/widget/AbsActionBarView;I)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/appcompat/widget/AbsActionBarView;
    .param p1, "x1"    # I

    .line 36
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static next(IIZ)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "val"    # I
    .param p2, "isRtl"    # Z

    .line 258
    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    goto :goto_0

    :cond_0
    add-int v0, p0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 181
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 182
    .local v0, "anim":Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 183
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .line 237
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .line 241
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 244
    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    .line 153
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return v0

    .line 156
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    .line 146
    iget v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 212
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 226
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 219
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    .line 222
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected measureChildView(Lccsanandroid/view/View;III)I
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "availableWidth"    # I
    .param p3, "childSpecHeight"    # I
    .param p4, "spacing"    # I

    .line 248
    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Lccsanandroid/view/View;->measure(II)V

    .line 251
    invoke-virtual {p1}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    .line 252
    sub-int/2addr p2, p4

    .line 254
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 75
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 79
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/R$styleable;->ActionBar:[I

    sget v2, Lccsanandroidx/appcompat/R$attr;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[III)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsanandroidx/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v4}, Lccsanandroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->setContentHeight(I)V

    .line 82
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 84
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1, p1}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onHoverEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 120
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 121
    .local v0, "action":I
    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 122
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    .line 125
    :cond_0
    iget-boolean v3, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 126
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->onHoverEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v3

    .line 127
    .local v3, "handled":Z
    if-ne v0, v2, :cond_1

    if-nez v3, :cond_1

    .line 128
    iput-boolean v4, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    .line 132
    .end local v3    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 134
    :cond_2
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mEatingHover:Z

    .line 137
    :cond_3
    return v4
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 96
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 97
    .local v0, "action":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    .line 101
    :cond_0
    iget-boolean v2, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 102
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v2

    .line 103
    .local v2, "handled":Z
    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 104
    iput-boolean v3, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    .line 108
    .end local v2    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 109
    :cond_2
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mEatingTouch:Z

    .line 112
    :cond_3
    return v3
.end method

.method protected positionChild(Lccsanandroid/view/View;IIIZ)I
    .locals 5
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "contentHeight"    # I
    .param p5, "reverse"    # Z

    .line 262
    invoke-virtual {p1}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 263
    .local v0, "childWidth":I
    invoke-virtual {p1}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 264
    .local v1, "childHeight":I
    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    .line 266
    .local v2, "childTop":I
    if-eqz p5, :cond_0

    .line 267
    sub-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, v3, v2, p2, v4}, Lccsanandroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 269
    :cond_0
    add-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, p2, v2, v3, v4}, Lccsanandroid/view/View;->layout(IIII)V

    .line 272
    :goto_0
    if-eqz p5, :cond_1

    neg-int v3, v0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    return v3
.end method

.method public postShowOverflowMenu()V
    .locals 1

    .line 203
    new-instance v0, Lccsanandroidx/appcompat/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView$1;-><init>(Lccsanandroidx/appcompat/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 141
    iput p1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mContentHeight:I

    .line 142
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->requestLayout()V

    .line 143
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 187
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 188
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 191
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 193
    :cond_1
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .line 160
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mVisibilityAnim:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 164
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 165
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/AbsActionBarView;->setAlpha(F)V

    .line 168
    :cond_1
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->animate(Lccsanandroid/view/View;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 169
    .local v0, "anim":Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 170
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;I)Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 171
    return-object v0

    .line 173
    .end local v0    # "anim":Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    :cond_2
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->animate(Lccsanandroid/view/View;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 174
    .restart local v0    # "anim":Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;
    invoke-virtual {v0, p2, p3}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 175
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mVisAnimListener:Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, v0, p1}, Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;I)Lccsanandroidx/appcompat/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Lccsanandroidx/core/view/ViewPropertyAnimatorListener;)Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 176
    return-object v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/AbsActionBarView;->mActionMenuPresenter:Lccsanandroidx/appcompat/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    .line 199
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
