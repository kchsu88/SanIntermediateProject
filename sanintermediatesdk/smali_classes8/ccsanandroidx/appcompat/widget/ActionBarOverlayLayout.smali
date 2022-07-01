.class public Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;
.super Lccsanandroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lccsanandroidx/appcompat/widget/DecorContentParent;
.implements Lccsanandroidx/core/view/NestedScrollingParent;
.implements Lccsanandroidx/core/view/NestedScrollingParent2;
.implements Lccsanandroidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_ANIMATE_DELAY:I = 0x258

.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private mActionBarHeight:I

.field mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field mAnimatingForFling:Z

.field private final mBaseContentInsets:Lccsanandroid/graphics/Rect;

.field private mBaseInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field private final mBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

.field private mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

.field private final mContentInsets:Lccsanandroid/graphics/Rect;

.field mCurrentActionBarTopAnimator:Lccsanandroid/view/ViewPropertyAnimator;

.field private mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

.field private mFlingEstimator:Lccsanandroid/widget/OverScroller;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field private final mInnerInsetsRect:Lccsanandroid/graphics/Rect;

.field private final mLastBaseContentInsets:Lccsanandroid/graphics/Rect;

.field private mLastBaseInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field private final mLastBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

.field private mLastInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

.field private final mLastInnerInsetsRect:Lccsanandroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Lccsanandroidx/core/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field final mTopAnimatorListener:Lccsanandroid/animation/AnimatorListenerAdapter;

.field private mWindowContentOverlay:Lccsanandroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Lccsanandroidx/appcompat/R$attr;->actionBarSize:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x1010059

    aput v2, v0, v1

    sput-object v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->ATTRS:[I

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 159
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 90
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    .line 91
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Lccsanandroid/graphics/Rect;

    .line 92
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Lccsanandroid/graphics/Rect;

    .line 95
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

    .line 96
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

    .line 97
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsetsRect:Lccsanandroid/graphics/Rect;

    .line 98
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastInnerInsetsRect:Lccsanandroid/graphics/Rect;

    .line 101
    sget-object v0, Lccsanandroidx/core/view/WindowInsetsCompat;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 102
    sget-object v0, Lccsanandroidx/core/view/WindowInsetsCompat;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 103
    sget-object v0, Lccsanandroidx/core/view/WindowInsetsCompat;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 104
    sget-object v0, Lccsanandroidx/core/view/WindowInsetsCompat;->CONSUMED:Lccsanandroidx/core/view/WindowInsetsCompat;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 114
    new-instance v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$1;-><init>(Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Lccsanandroid/animation/AnimatorListenerAdapter;

    .line 128
    new-instance v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$2;-><init>(Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    .line 137
    new-instance v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$3;-><init>(Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    .line 160
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->init(Lccsanandroid/content/Context;)V

    .line 162
    new-instance v0, Lccsanandroidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Lccsanandroidx/core/view/NestedScrollingParentHelper;-><init>(Lccsanandroid/view/ViewGroup;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mParentHelper:Lccsanandroidx/core/view/NestedScrollingParentHelper;

    .line 163
    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 1

    .line 735
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 736
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 737
    return-void
.end method

.method private applyInsets(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;ZZZZ)Z
    .locals 4
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "insets"    # Lccsanandroid/graphics/Rect;
    .param p3, "left"    # Z
    .param p4, "top"    # Z
    .param p5, "bottom"    # Z
    .param p6, "right"    # Z

    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "changed":Z
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 284
    .local v1, "lp":Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    if-eqz p3, :cond_0

    iget v2, v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Lccsanandroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 286
    iget v2, p2, Lccsanandroid/graphics/Rect;->left:I

    iput v2, v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    .line 288
    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Lccsanandroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    .line 289
    const/4 v0, 0x1

    .line 290
    iget v2, p2, Lccsanandroid/graphics/Rect;->top:I

    iput v2, v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    .line 292
    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Lccsanandroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    .line 293
    const/4 v0, 0x1

    .line 294
    iget v2, p2, Lccsanandroid/graphics/Rect;->right:I

    iput v2, v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    .line 296
    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Lccsanandroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    .line 297
    const/4 v0, 0x1

    .line 298
    iget v2, p2, Lccsanandroid/graphics/Rect;->bottom:I

    iput v2, v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    .line 300
    :cond_3
    return v0
.end method

.method private getDecorToolbar(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/widget/DecorToolbar;
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 676
    instance-of v0, p1, Lccsanandroidx/appcompat/widget/DecorToolbar;

    if-eqz v0, :cond_0

    .line 677
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/widget/DecorToolbar;

    return-object v0

    .line 678
    :cond_0
    instance-of v0, p1, Lccsanandroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 679
    move-object v0, p1

    check-cast v0, Lccsanandroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/Toolbar;->getWrapper()Lccsanandroidx/appcompat/widget/DecorToolbar;

    move-result-object v0

    return-object v0

    .line 681
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Lccsanandroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 166
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getTheme()Lccsanandroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->ATTRS:[I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "ta":Lccsanandroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 168
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroid/content/res/TypedArray;->getDrawable(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Lccsanandroid/graphics/drawable/Drawable;

    .line 169
    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V

    .line 170
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 172
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 175
    new-instance v1, Lccsanandroid/widget/OverScroller;

    invoke-direct {v1, p1}, Lccsanandroid/widget/OverScroller;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mFlingEstimator:Lccsanandroid/widget/OverScroller;

    .line 176
    return-void
.end method

.method private postAddActionBarHideOffset()V
    .locals 3

    .line 725
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 726
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 727
    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 3

    .line 720
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 721
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 722
    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    .line 730
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 731
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 732
    return-void
.end method

.method private shouldHideActionBarOnFling(F)Z
    .locals 9
    .param p1, "velocityY"    # F

    .line 740
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mFlingEstimator:Lccsanandroid/widget/OverScroller;

    float-to-int v4, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Lccsanandroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 741
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mFlingEstimator:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v0}, Lccsanandroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 742
    .local v0, "finalY":I
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    .line 816
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 817
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 399
    instance-of v0, p1, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    .line 870
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 871
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->dismissPopupMenus()V

    .line 872
    return-void
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Lccsanandroid/graphics/Canvas;

    .line 537
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 538
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 541
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 542
    .local v0, "top":I
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Lccsanandroid/graphics/drawable/Drawable;

    .line 543
    invoke-virtual {v4}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    .line 542
    invoke-virtual {v2, v1, v0, v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 544
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Lccsanandroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 546
    .end local v0    # "top":I
    :cond_1
    return-void
.end method

.method protected fitSystemWindows(Lccsanandroid/graphics/Rect;)Z
    .locals 8
    .param p1, "insets"    # Lccsanandroid/graphics/Rect;

    .line 306
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 308
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->fitSystemWindows(Lccsanandroid/graphics/Rect;)Z

    move-result v0

    return v0

    .line 311
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 314
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->applyInsets(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;ZZZZ)Z

    move-result v0

    .line 317
    .local v0, "changed":Z
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1, p1}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 318
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    invoke-static {p0, v1, v2}, Lccsanandroidx/appcompat/widget/ViewUtils;->computeFitSystemWindows(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 319
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    const/4 v0, 0x1

    .line 321
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 323
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Lccsanandroid/graphics/Rect;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    const/4 v0, 0x1

    .line 325
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Lccsanandroid/graphics/Rect;

    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 328
    :cond_2
    if-eqz v0, :cond_3

    .line 329
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 336
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    .line 384
    new-instance v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 394
    new-instance v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Lccsanandroid/util/AttributeSet;)Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 389
    new-instance v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    .line 701
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    .line 664
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mParentHelper:Lccsanandroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Lccsanandroidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 759
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 760
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method haltActionBarHideOffsetAnimations()V
    .locals 1

    .line 712
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 713
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 714
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Lccsanandroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->cancel()V

    .line 717
    :cond_0
    return-void
.end method

.method public hasIcon()Z
    .locals 1

    .line 786
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 787
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .line 792
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 793
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 840
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 841
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1
    .param p1, "windowFeature"    # I

    .line 765
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 766
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 774
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V

    goto :goto_0

    .line 771
    :sswitch_1
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->initIndeterminateProgress()V

    .line 772
    goto :goto_0

    .line 768
    :sswitch_2
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->initProgress()V

    .line 769
    nop

    .line 777
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6d -> :sswitch_0
    .end sparse-switch
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    .line 697
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 828
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 829
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 822
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 823
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public onApplyWindowInsets(Lccsanandroid/view/WindowInsets;)Lccsanandroid/view/WindowInsets;
    .locals 8
    .param p1, "in"    # Lccsanandroid/view/WindowInsets;

    .line 342
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 344
    invoke-static {p1}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Lccsanandroid/view/WindowInsets;)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    .line 346
    .local v0, "insets":Lccsanandroidx/core/view/WindowInsetsCompat;
    new-instance v3, Lccsanandroid/graphics/Rect;

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 347
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v4

    .line 348
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v5

    invoke-direct {v3, v1, v2, v4, v5}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 351
    .local v3, "systemInsets":Lccsanandroid/graphics/Rect;
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->applyInsets(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;ZZZZ)Z

    move-result v1

    .line 355
    .local v1, "changed":Z
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    invoke-static {p0, v0, v2}, Lccsanandroidx/core/view/ViewCompat;->computeSystemWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;Lccsanandroid/graphics/Rect;)Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 356
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    iget v2, v2, Lccsanandroid/graphics/Rect;->left:I

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    iget v4, v4, Lccsanandroid/graphics/Rect;->top:I

    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->right:I

    iget-object v6, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v4, v5, v6}, Lccsanandroidx/core/view/WindowInsetsCompat;->inset(IIII)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 359
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v4, v2}, Lccsanandroidx/core/view/WindowInsetsCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 360
    const/4 v1, 0x1

    .line 361
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    iput-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 363
    :cond_0
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Lccsanandroid/graphics/Rect;

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    const/4 v1, 0x1

    .line 365
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Lccsanandroid/graphics/Rect;

    iget-object v4, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 368
    :cond_1
    if-eqz v1, :cond_2

    .line 369
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->requestLayout()V

    .line 376
    :cond_2
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->consumeDisplayCutout()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Lccsanandroidx/core/view/WindowInsetsCompat;->consumeSystemWindowInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    .line 378
    invoke-virtual {v2}, Lccsanandroidx/core/view/WindowInsetsCompat;->consumeStableInsets()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    .line 379
    invoke-virtual {v2}, Lccsanandroidx/core/view/WindowInsetsCompat;->toWindowInsets()Lccsanandroid/view/WindowInsets;

    move-result-object v2

    .line 376
    return-object v2
.end method

.method protected onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Lccsanandroid/content/res/Configuration;

    .line 241
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->onConfigurationChanged(Lccsanandroid/content/res/Configuration;)V

    .line 242
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->init(Lccsanandroid/content/Context;)V

    .line 243
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 244
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 180
    invoke-super {p0}, Lccsanandroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 181
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 182
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 514
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getChildCount()I

    move-result v0

    .line 516
    .local v0, "count":I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v1

    .line 517
    .local v1, "parentLeft":I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v2

    .line 519
    .local v2, "parentTop":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 520
    move-object v4, p0

    invoke-virtual {p0, v3}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v5

    .line 521
    .local v5, "child":Lccsanandroid/view/View;
    invoke-virtual {v5}, Lccsanandroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 522
    invoke-virtual {v5}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 524
    .local v6, "lp":Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    invoke-virtual {v5}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 525
    .local v7, "width":I
    invoke-virtual {v5}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 527
    .local v8, "height":I
    iget v9, v6, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    .line 528
    .local v9, "childLeft":I
    iget v10, v6, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v2

    .line 530
    .local v10, "childTop":I
    add-int v11, v9, v7

    add-int v12, v10, v8

    invoke-virtual {v5, v9, v10, v11, v12}, Lccsanandroid/view/View;->layout(IIII)V

    .line 519
    .end local v5    # "child":Lccsanandroid/view/View;
    .end local v6    # "lp":Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    .end local v7    # "width":I
    .end local v8    # "height":I
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, p0

    .line 533
    .end local v3    # "i":I
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 404
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 406
    const/4 v6, 0x0

    .line 407
    .local v6, "maxHeight":I
    const/4 v8, 0x0

    .line 408
    .local v8, "maxWidth":I
    const/4 v9, 0x0

    .line 410
    .local v9, "childState":I
    const/4 v10, 0x0

    .line 411
    .local v10, "topInset":I
    const/4 v11, 0x0

    .line 413
    .local v11, "bottomInset":I
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Lccsanandroid/view/View;IIII)V

    .line 414
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 415
    .local v12, "lp":Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    .line 416
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 415
    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 417
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    .line 418
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 417
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 419
    .end local v6    # "maxHeight":I
    .local v13, "maxHeight":I
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getMeasuredState()I

    move-result v0

    invoke-static {v9, v0}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    .line 421
    invoke-static/range {p0 .. p0}, Lccsanandroidx/core/view/ViewCompat;->getWindowSystemUiVisibility(Lccsanandroid/view/View;)I

    move-result v14

    .line 422
    .local v14, "vis":I
    and-int/lit16 v0, v14, 0x100

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    .line 424
    .local v15, "stable":Z
    if-eqz v15, :cond_2

    .line 427
    iget v10, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    .line 428
    iget-boolean v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    if-eqz v0, :cond_3

    .line 429
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getTabContainer()Lccsanandroid/view/View;

    move-result-object v0

    .line 430
    .local v0, "tabs":Lccsanandroid/view/View;
    if-eqz v0, :cond_1

    .line 432
    iget v2, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarHeight:I

    add-int/2addr v10, v2

    .line 434
    .end local v0    # "tabs":Lccsanandroid/view/View;
    :cond_1
    goto :goto_1

    .line 435
    :cond_2
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    .line 438
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getMeasuredHeight()I

    move-result v10

    .line 445
    :cond_3
    :goto_1
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Lccsanandroid/graphics/Rect;

    iget-object v2, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseContentInsets:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 446
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v0, v6, :cond_4

    .line 447
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    iput-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    goto :goto_2

    .line 449
    :cond_4
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsetsRect:Lccsanandroid/graphics/Rect;

    iget-object v2, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mBaseInnerInsetsRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 452
    :goto_2
    iget-boolean v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    if-nez v0, :cond_5

    if-nez v15, :cond_5

    .line 453
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Lccsanandroid/graphics/Rect;

    iget v2, v0, Lccsanandroid/graphics/Rect;->top:I

    add-int/2addr v2, v10

    iput v2, v0, Lccsanandroid/graphics/Rect;->top:I

    .line 454
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Lccsanandroid/graphics/Rect;

    iget v2, v0, Lccsanandroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v11

    iput v2, v0, Lccsanandroid/graphics/Rect;->bottom:I

    .line 456
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_7

    .line 458
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0, v1, v10, v1, v11}, Lccsanandroidx/core/view/WindowInsetsCompat;->inset(IIII)Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v0

    iput-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    goto :goto_3

    .line 461
    :cond_5
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_6

    .line 463
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 464
    invoke-virtual {v0}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 465
    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v1, v10

    iget-object v2, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 466
    invoke-virtual {v2}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 467
    invoke-virtual {v3}, Lccsanandroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v3

    add-int/2addr v3, v11

    .line 463
    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/core/graphics/Insets;->of(IIII)Lccsanandroidx/core/graphics/Insets;

    move-result-object v0

    .line 469
    .local v0, "sysWindow":Lccsanandroidx/core/graphics/Insets;
    new-instance v1, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    iget-object v2, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-direct {v1, v2}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;-><init>(Lccsanandroidx/core/view/WindowInsetsCompat;)V

    .line 470
    invoke-virtual {v1, v0}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lccsanandroidx/core/graphics/Insets;)Lccsanandroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Lccsanandroidx/core/view/WindowInsetsCompat$Builder;->build()Lccsanandroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    iput-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 472
    .end local v0    # "sysWindow":Lccsanandroidx/core/graphics/Insets;
    goto :goto_3

    .line 473
    :cond_6
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsetsRect:Lccsanandroid/graphics/Rect;

    iget v1, v0, Lccsanandroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v0, Lccsanandroid/graphics/Rect;->top:I

    .line 474
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsetsRect:Lccsanandroid/graphics/Rect;

    iget v1, v0, Lccsanandroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v11

    iput v1, v0, Lccsanandroid/graphics/Rect;->bottom:I

    .line 477
    :cond_7
    :goto_3
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    iget-object v2, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContentInsets:Lccsanandroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v17, v10

    const/16 v10, 0x15

    .end local v10    # "topInset":I
    .local v17, "topInset":I
    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->applyInsets(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;ZZZZ)Z

    .line 482
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v10, :cond_8

    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/WindowInsetsCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 483
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    iput-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastInnerInsets:Lccsanandroidx/core/view/WindowInsetsCompat;

    .line 484
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    invoke-static {v1, v0}, Lccsanandroidx/core/view/ViewCompat;->dispatchApplyWindowInsets(Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;

    goto :goto_4

    .line 485
    :cond_8
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v10, :cond_9

    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastInnerInsetsRect:Lccsanandroid/graphics/Rect;

    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsetsRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 486
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastInnerInsetsRect:Lccsanandroid/graphics/Rect;

    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsetsRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 487
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mInnerInsetsRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->dispatchFitSystemWindows(Lccsanandroid/graphics/Rect;)V

    .line 490
    :cond_9
    :goto_4
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->measureChildWithMargins(Lccsanandroid/view/View;IIII)V

    .line 491
    iget-object v0, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;

    .line 492
    .end local v12    # "lp":Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    .local v0, "lp":Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;
    iget-object v1, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    .line 493
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 492
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 494
    .end local v8    # "maxWidth":I
    .local v1, "maxWidth":I
    iget-object v2, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    .line 495
    invoke-virtual {v2}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 494
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 496
    .end local v13    # "maxHeight":I
    .local v2, "maxHeight":I
    iget-object v3, v7, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    invoke-virtual {v3}, Lccsanandroidx/appcompat/widget/ContentFrameLayout;->getMeasuredState()I

    move-result v3

    invoke-static {v9, v3}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    .line 499
    .end local v9    # "childState":I
    .local v3, "childState":I
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 500
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 503
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 504
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 506
    nop

    .line 507
    move/from16 v4, p1

    invoke-static {v1, v4, v3}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    shl-int/lit8 v6, v3, 0x10

    .line 508
    move/from16 v8, p2

    invoke-static {v2, v8, v6}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v6

    .line 506
    invoke-virtual {v7, v5, v6}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V

    .line 510
    return-void
.end method

.method public onNestedFling(Lccsanandroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Lccsanandroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 640
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    .line 643
    :cond_0
    invoke-direct {p0, p3}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 644
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V

    goto :goto_0

    .line 646
    :cond_1
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V

    .line 648
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    .line 649
    return v0

    .line 641
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Lccsanandroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Lccsanandroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Lccsanandroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Lccsanandroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 655
    return-void
.end method

.method public onNestedPreScroll(Lccsanandroid/view/View;II[II)V
    .locals 0
    .param p1, "target"    # Lccsanandroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .line 592
    if-nez p5, :cond_0

    .line 593
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedPreScroll(Lccsanandroid/view/View;II[I)V

    .line 595
    :cond_0
    return-void
.end method

.method public onNestedScroll(Lccsanandroid/view/View;IIII)V
    .locals 1
    .param p1, "target"    # Lccsanandroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 620
    iget v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 621
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 622
    return-void
.end method

.method public onNestedScroll(Lccsanandroid/view/View;IIIII)V
    .locals 0
    .param p1, "target"    # Lccsanandroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .line 585
    if-nez p6, :cond_0

    .line 586
    invoke-virtual/range {p0 .. p5}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Lccsanandroid/view/View;IIII)V

    .line 588
    :cond_0
    return-void
.end method

.method public onNestedScroll(Lccsanandroid/view/View;IIIII[I)V
    .locals 0
    .param p1, "target"    # Lccsanandroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 558
    invoke-virtual/range {p0 .. p6}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScroll(Lccsanandroid/view/View;IIIII)V

    .line 559
    return-void
.end method

.method public onNestedScrollAccepted(Lccsanandroid/view/View;Lccsanandroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "target"    # Lccsanandroid/view/View;
    .param p3, "axes"    # I

    .line 609
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mParentHelper:Lccsanandroidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Lccsanandroid/view/View;Lccsanandroid/view/View;I)V

    .line 610
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    .line 611
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 612
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 613
    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    .line 615
    :cond_0
    return-void
.end method

.method public onNestedScrollAccepted(Lccsanandroid/view/View;Lccsanandroid/view/View;II)V
    .locals 0
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "target"    # Lccsanandroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 570
    if-nez p4, :cond_0

    .line 571
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->onNestedScrollAccepted(Lccsanandroid/view/View;Lccsanandroid/view/View;I)V

    .line 573
    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Lccsanandroid/view/View;Lccsanandroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "target"    # Lccsanandroid/view/View;
    .param p3, "axes"    # I

    .line 601
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    return v0

    .line 602
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStartNestedScroll(Lccsanandroid/view/View;Lccsanandroid/view/View;II)Z
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "target"    # Lccsanandroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 565
    if-nez p4, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->onStartNestedScroll(Lccsanandroid/view/View;Lccsanandroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onStopNestedScroll(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "target"    # Lccsanandroid/view/View;

    .line 626
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z

    if-nez v0, :cond_1

    .line 627
    iget v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 628
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V

    goto :goto_0

    .line 630
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V

    .line 633
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_2

    .line 634
    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    .line 636
    :cond_2
    return-void
.end method

.method public onStopNestedScroll(Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "target"    # Lccsanandroid/view/View;
    .param p2, "type"    # I

    .line 577
    if-nez p2, :cond_0

    .line 578
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->onStopNestedScroll(Lccsanandroid/view/View;)V

    .line 580
    :cond_0
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 6
    .param p1, "visible"    # I

    .line 248
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 249
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 252
    iget v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    xor-int/2addr v0, p1

    .line 253
    .local v0, "diff":I
    iput p1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 254
    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 255
    .local v1, "barVisible":Z
    :goto_0
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 256
    .local v4, "stable":Z
    :goto_1
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_6

    .line 260
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v5, v2}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    .line 261
    if-nez v1, :cond_5

    if-nez v4, :cond_4

    goto :goto_3

    .line 262
    :cond_4
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_4

    .line 261
    :cond_5
    :goto_3
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    .line 264
    :cond_6
    :goto_4
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_7

    .line 265
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_7

    .line 266
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 269
    :cond_7
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 273
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    .line 274
    iput p1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    .line 275
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 278
    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    .line 668
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    if-nez v0, :cond_0

    .line 669
    sget v0, Lccsanandroidx/appcompat/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mContent:Lccsanandroidx/appcompat/widget/ContentFrameLayout;

    .line 670
    sget v0, Lccsanandroidx/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ActionBarContainer;

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    .line 671
    sget v0, Lccsanandroidx/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getDecorToolbar(Lccsanandroid/view/View;)Lccsanandroidx/appcompat/widget/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    .line 673
    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Lccsanandroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 864
    .local p1, "toolbarStates":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 865
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->restoreHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 866
    return-void
.end method

.method public saveToolbarHierarchyState(Lccsanandroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/util/SparseArray<",
            "Lccsanandroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 858
    .local p1, "toolbarStates":Lccsanandroid/util/SparseArray;, "Lccsanandroid/util/SparseArray<Lccsanandroid/os/Parcelable;>;"
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 859
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->saveHierarchyState(Lccsanandroid/util/SparseArray;)V

    .line 860
    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 3
    .param p1, "offset"    # I

    .line 705
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 706
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    .line 707
    .local v0, "topHeight":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 708
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarTop:Lccsanandroidx/appcompat/widget/ActionBarContainer;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lccsanandroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 709
    return-void
.end method

.method public setActionBarVisibilityCallback(Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 2
    .param p1, "cb"    # Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 185
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    .line 186
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getWindowToken()Lccsanandroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mWindowVisibility:I

    invoke-interface {v0, v1}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    .line 190
    iget v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    if-eqz v0, :cond_0

    .line 191
    iget v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I

    .line 192
    .local v0, "newVis":I
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V

    .line 193
    invoke-static {p0}, Lccsanandroidx/core/view/ViewCompat;->requestApplyInsets(Lccsanandroid/view/View;)V

    .line 196
    .end local v0    # "newVis":I
    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0
    .param p1, "hasNonEmbeddedTabs"    # Z

    .line 215
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z

    .line 216
    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1
    .param p1, "hideOnContentScroll"    # Z

    .line 687
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    .line 688
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z

    .line 689
    if-nez p1, :cond_0

    .line 690
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V

    .line 691
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    .line 694
    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 798
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 799
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->setIcon(I)V

    .line 800
    return-void
.end method

.method public setIcon(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 804
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 805
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->setIcon(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 806
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 810
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 811
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->setLogo(I)V

    .line 812
    return-void
.end method

.method public setMenu(Lccsanandroid/view/Menu;Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 1
    .param p1, "menu"    # Lccsanandroid/view/Menu;
    .param p2, "cb"    # Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 852
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 853
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lccsanandroidx/appcompat/widget/DecorToolbar;->setMenu(Lccsanandroid/view/Menu;Lccsanandroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 854
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .line 846
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 847
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    .line 848
    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2
    .param p1, "overlayMode"    # Z

    .line 199
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mOverlayMode:Z

    .line 205
    if-eqz p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z

    .line 208
    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .line 237
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0
    .param p1, "uiOptions"    # I

    .line 782
    return-void
.end method

.method public setWindowCallback(Lccsanandroid/view/Window$Callback;)V
    .locals 1
    .param p1, "cb"    # Lccsanandroid/view/Window$Callback;

    .line 747
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 748
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->setWindowCallback(Lccsanandroid/view/Window$Callback;)V

    .line 749
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 753
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 754
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0, p1}, Lccsanandroidx/appcompat/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 755
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 834
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->pullChildren()V

    .line 835
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ActionBarOverlayLayout;->mDecorToolbar:Lccsanandroidx/appcompat/widget/DecorToolbar;

    invoke-interface {v0}, Lccsanandroidx/appcompat/widget/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
