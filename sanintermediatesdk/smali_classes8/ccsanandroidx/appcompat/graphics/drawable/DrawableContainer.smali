.class Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;
.super Lccsanandroid/graphics/drawable/Drawable;
.source "DrawableContainer.java"

# interfaces
.implements Lccsanandroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;,
        Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_DITHER:Z = true

.field private static final TAG:Ljava/lang/String; = "DrawableContainer"


# instance fields
.field private mAlpha:I

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mBlockInvalidateCallback:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

.field private mCurIndex:I

.field private mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

.field private mEnterAnimationEnd:J

.field private mExitAnimationEnd:J

.field private mHasAlpha:Z

.field private mHotspotBounds:Lccsanandroid/graphics/Rect;

.field private mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

.field private mMutated:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lccsanandroid/graphics/drawable/Drawable;-><init>()V

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    return-void
.end method

.method private initializeDrawableForDisplay(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "d"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 490
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    if-nez v0, :cond_0

    .line 491
    new-instance v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-direct {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    .line 496
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/Drawable;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->wrap(Lccsanandroid/graphics/drawable/Drawable$Callback;)Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 498
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_1

    .line 499
    iget v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 501
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Lccsanandroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 505
    :cond_2
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    if-eqz v0, :cond_3

    .line 506
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Lccsanandroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 508
    :cond_3
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    if-eqz v0, :cond_4

    .line 509
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 512
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 513
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 514
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 515
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 516
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getBounds()Lccsanandroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 517
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    .line 518
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 520
    :cond_5
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    .line 521
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 523
    :cond_6
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Lccsanandroid/graphics/Rect;

    .line 524
    .local v0, "hotspotBounds":Lccsanandroid/graphics/Rect;
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_7

    if-eqz v0, :cond_7

    .line 525
    iget v1, v0, Lccsanandroid/graphics/Rect;->left:I

    iget v2, v0, Lccsanandroid/graphics/Rect;->top:I

    iget v3, v0, Lccsanandroid/graphics/Rect;->right:I

    iget v4, v0, Lccsanandroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Lccsanandroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    .end local v0    # "hotspotBounds":Lccsanandroid/graphics/Rect;
    :cond_7
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 530
    nop

    .line 531
    return-void

    .line 529
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mBlockInvalidateCallback:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;

    invoke-virtual {v1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$BlockInvalidateCallback;->unwrap()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroid/graphics/drawable/Drawable;->setCallback(Lccsanandroid/graphics/drawable/Drawable$Callback;)V

    .line 530
    throw v0
.end method

.method private needsMirroring()Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Lccsanandroid/graphics/drawable/Drawable;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    return v1
.end method

.method static resolveDensity(Lccsanandroid/content/res/Resources;I)I
    .locals 2
    .param p0, "r"    # Lccsanandroid/content/res/Resources;
    .param p1, "parentDensity"    # I

    .line 1202
    if-nez p0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    .line 1203
    .local v0, "densityDpi":I
    :goto_0
    if-nez v0, :cond_1

    const/16 v1, 0xa0

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method


# virtual methods
.method animate(Z)V
    .locals 11
    .param p1, "schedule"    # Z

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 535
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 536
    .local v0, "now":J
    const/4 v2, 0x0

    .line 537
    .local v2, "animating":Z
    iget-object v3, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const-wide/16 v6, 0x0

    if-eqz v3, :cond_1

    .line 538
    iget-wide v8, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_2

    .line 539
    cmp-long v10, v8, v0

    if-gtz v10, :cond_0

    .line 540
    iget v8, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v3, v8}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 541
    iput-wide v6, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    goto :goto_0

    .line 543
    :cond_0
    sub-long/2addr v8, v0

    mul-long v8, v8, v4

    long-to-int v3, v8

    iget-object v8, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v8, v8, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    div-int/2addr v3, v8

    .line 545
    .local v3, "animAlpha":I
    iget-object v8, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    rsub-int v9, v3, 0xff

    iget v10, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int v9, v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 546
    const/4 v2, 0x1

    .line 547
    .end local v3    # "animAlpha":I
    goto :goto_0

    .line 550
    :cond_1
    iput-wide v6, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 552
    :cond_2
    :goto_0
    iget-object v3, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    .line 553
    iget-wide v8, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v10, v8, v6

    if-eqz v10, :cond_5

    .line 554
    cmp-long v10, v8, v0

    if-gtz v10, :cond_3

    .line 555
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 556
    const/4 v3, 0x0

    iput-object v3, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 557
    iput-wide v6, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_1

    .line 559
    :cond_3
    sub-long/2addr v8, v0

    mul-long v8, v8, v4

    long-to-int v3, v8

    iget-object v4, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v4, v4, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    div-int/2addr v3, v4

    .line 561
    .restart local v3    # "animAlpha":I
    iget-object v4, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget v5, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    mul-int v5, v5, v3

    div-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 562
    const/4 v2, 0x1

    .line 563
    .end local v3    # "animAlpha":I
    goto :goto_1

    .line 566
    :cond_4
    iput-wide v6, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 568
    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    if-eqz v2, :cond_6

    .line 569
    iget-object v3, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-virtual {p0, v3, v4, v5}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 571
    :cond_6
    return-void
.end method

.method public applyTheme(Lccsanandroid/content/res/Resources$Theme;)V
    .locals 1
    .param p1, "theme"    # Lccsanandroid/content/res/Resources$Theme;

    .line 593
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->applyTheme(Lccsanandroid/content/res/Resources$Theme;)V

    .line 594
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    .line 599
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->canApplyTheme()Z

    move-result v0

    return v0
.end method

.method clearMutated()V
    .locals 1

    .line 634
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->clearMutated()V

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 636
    return-void
.end method

.method cloneConstantState()Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    .locals 1

    .line 630
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0
.end method

.method public draw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 86
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 92
    :cond_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 153
    iget v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 96
    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 97
    invoke-virtual {v1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    .line 96
    return v0
.end method

.method public final getConstantState()Lccsanandroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 604
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->canConstantState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mChangingConfigurations:I

    .line 606
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    return-object v0

    .line 608
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrent()Lccsanandroid/graphics/drawable/Drawable;
    .locals 1

    .line 576
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentIndex()I
    .locals 1

    .line 414
    iget v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    return v0
.end method

.method public getHotspotBounds(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Lccsanandroid/graphics/Rect;

    .line 295
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Lccsanandroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    goto :goto_0

    .line 298
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getHotspotBounds(Lccsanandroid/graphics/Rect;)V

    .line 300
    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 341
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantHeight()I

    move-result v0

    return v0

    .line 344
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 333
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantWidth()I

    move-result v0

    return v0

    .line 336
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 357
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumHeight()I

    move-result v0

    return v0

    .line 360
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 349
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isConstantSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantMinimumWidth()I

    move-result v0

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 405
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getOpacity()I

    move-result v0

    goto :goto_1

    .line 405
    :cond_1
    :goto_0
    const/4 v0, -0x2

    :goto_1
    return v0
.end method

.method public getOutline(Lccsanandroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Lccsanandroid/graphics/Outline;

    .line 131
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getOutline(Lccsanandroid/graphics/Outline;)V

    .line 134
    :cond_0
    return-void
.end method

.method public getPadding(Lccsanandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "padding"    # Lccsanandroid/graphics/Rect;

    .line 107
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getConstantPadding()Lccsanandroid/graphics/Rect;

    move-result-object v0

    .line 109
    .local v0, "r":Lccsanandroid/graphics/Rect;
    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 111
    iget v1, v0, Lccsanandroid/graphics/Rect;->left:I

    iget v2, v0, Lccsanandroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Lccsanandroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v2, v0, Lccsanandroid/graphics/Rect;->right:I

    or-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, "result":Z
    :goto_0
    goto :goto_1

    .line 113
    .end local v1    # "result":Z
    :cond_1
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {v1, p1}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    move-result v1

    .restart local v1    # "result":Z
    goto :goto_1

    .line 116
    .end local v1    # "result":Z
    :cond_2
    invoke-super {p0, p1}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    move-result v1

    .line 119
    .restart local v1    # "result":Z
    :goto_1
    invoke-direct {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->needsMirroring()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget v2, p1, Lccsanandroid/graphics/Rect;->left:I

    .line 121
    .local v2, "left":I
    iget v3, p1, Lccsanandroid/graphics/Rect;->right:I

    .line 122
    .local v3, "right":I
    iput v3, p1, Lccsanandroid/graphics/Rect;->left:I

    .line 123
    iput v2, p1, Lccsanandroid/graphics/Rect;->right:I

    .line 125
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_3
    return v1
.end method

.method public invalidateDrawable(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 368
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->invalidateCache()V

    .line 371
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Lccsanandroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 374
    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    .line 244
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->isStateful()Z

    move-result v0

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "changed":Z
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 252
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 253
    const/4 v0, 0x1

    .line 255
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 256
    invoke-virtual {v1}, Lccsanandroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 257
    iget-boolean v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v1, :cond_1

    .line 258
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    iget v2, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    invoke-virtual {v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 261
    :cond_1
    iget-wide v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 262
    iput-wide v3, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    .line 263
    const/4 v0, 0x1

    .line 265
    :cond_2
    iget-wide v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 266
    iput-wide v3, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 267
    const/4 v0, 0x1

    .line 269
    :cond_3
    if-eqz v0, :cond_4

    .line 270
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 272
    :cond_4
    return-void
.end method

.method public mutate()Lccsanandroid/graphics/drawable/Drawable;
    .locals 2

    .line 614
    iget-boolean v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lccsanandroid/graphics/drawable/Drawable;->mutate()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 615
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->cloneConstantState()Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    move-result-object v0

    .line 616
    .local v0, "clone":Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mutate()V

    .line 617
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->setConstantState(Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    .line 618
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mMutated:Z

    .line 620
    .end local v0    # "clone":Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Lccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Lccsanandroid/graphics/Rect;

    .line 218
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 224
    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2
    .param p1, "layoutDirection"    # I

    .line 328
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->setLayoutDirection(II)Z

    move-result v0

    return v0
.end method

.method protected onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 315
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 318
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 319
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    return v0

    .line 321
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 1
    .param p1, "state"    # [I

    .line 304
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 307
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    return v0

    .line 310
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public scheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 378
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Lccsanandroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 381
    :cond_0
    return-void
.end method

.method selectDrawable(I)Z
    .locals 9
    .param p1, "index"    # I

    .line 427
    iget v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 428
    return v1

    .line 430
    :cond_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 436
    .local v2, "now":J
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    .line 437
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0, v1, v1}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 440
    :cond_1
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 441
    iput-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 442
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_0

    .line 444
    :cond_2
    iput-object v4, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 445
    iput-wide v5, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    goto :goto_0

    .line 447
    :cond_3
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {v0, v1, v1}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 450
    :cond_4
    :goto_0
    if-ltz p1, :cond_7

    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge p1, v0, :cond_7

    .line 451
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 452
    .local v0, "d":Lccsanandroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 453
    iput p1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 454
    if-eqz v0, :cond_6

    .line 455
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    if-lez v1, :cond_5

    .line 456
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget v1, v1, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    int-to-long v7, v1

    add-long/2addr v7, v2

    iput-wide v7, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    .line 458
    :cond_5
    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 460
    .end local v0    # "d":Lccsanandroid/graphics/drawable/Drawable;
    :cond_6
    goto :goto_1

    .line 461
    :cond_7
    iput-object v4, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 462
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    .line 464
    :goto_1
    iget-wide v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const/4 v4, 0x1

    cmp-long v7, v0, v5

    if-nez v7, :cond_8

    iget-wide v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mExitAnimationEnd:J

    cmp-long v7, v0, v5

    if-eqz v7, :cond_a

    .line 465
    :cond_8
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_9

    .line 466
    new-instance v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$1;

    invoke-direct {v0, p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$1;-><init>(Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;)V

    iput-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAnimationRunnable:Ljava/lang/Runnable;

    goto :goto_2

    .line 474
    :cond_9
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 477
    :goto_2
    invoke-virtual {p0, v4}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 479
    :cond_a
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->invalidateSelf()V

    .line 480
    return v4
.end method

.method public setAlpha(I)V
    .locals 6
    .param p1, "alpha"    # I

    .line 138
    iget-boolean v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    if-eq v0, p1, :cond_2

    .line 139
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mHasAlpha:Z

    .line 140
    iput p1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mAlpha:I

    .line 141
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 142
    iget-wide v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mEnterAnimationEnd:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 143
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    .line 145
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 149
    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2
    .param p1, "mirrored"    # Z

    .line 233
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    if-eq v0, p1, :cond_0

    .line 234
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    .line 235
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mAutoMirrored:Z

    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Lccsanandroid/graphics/drawable/Drawable;Z)V

    .line 240
    :cond_0
    return-void
.end method

.method public setColorFilter(Lccsanandroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Lccsanandroid/graphics/ColorFilter;

    .line 169
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasColorFilter:Z

    .line 170
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Lccsanandroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 171
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mColorFilter:Lccsanandroid/graphics/ColorFilter;

    .line 172
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->setColorFilter(Lccsanandroid/graphics/ColorFilter;)V

    .line 176
    :cond_0
    return-void
.end method

.method setConstantState(Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1, "state"    # Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1151
    iput-object p1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 1153
    iget v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurIndex:I

    if-ltz v0, :cond_0

    .line 1154
    invoke-virtual {p1, v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->getChild(I)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 1155
    if-eqz v0, :cond_0

    .line 1156
    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->initializeDrawableForDisplay(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 1161
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    .line 1162
    return-void
.end method

.method setCurrentIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .line 410
    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->selectDrawable(I)Z

    .line 411
    return-void
.end method

.method public setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .line 159
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    if-eq v0, p1, :cond_0

    .line 160
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-boolean p1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    .line 161
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-boolean v1, v1, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mDither:Z

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method public setEnterFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .line 203
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mEnterFadeDuration:I

    .line 204
    return-void
.end method

.method public setExitFadeDuration(I)V
    .locals 1
    .param p1, "ms"    # I

    .line 213
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput p1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mExitFadeDuration:I

    .line 214
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 276
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 277
    invoke-static {v0, p1, p2}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Lccsanandroid/graphics/drawable/Drawable;FF)V

    .line 279
    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 283
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Lccsanandroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 284
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mHotspotBounds:Lccsanandroid/graphics/Rect;

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 288
    :goto_0
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 289
    invoke-static {v0, p1, p2, p3, p4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspotBounds(Lccsanandroid/graphics/drawable/Drawable;IIII)V

    .line 291
    :cond_1
    return-void
.end method

.method public setTintList(Lccsanandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Lccsanandroid/content/res/ColorStateList;

    .line 180
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintList:Z

    .line 181
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Lccsanandroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 182
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintList:Lccsanandroid/content/res/ColorStateList;

    .line 183
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintList(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/content/res/ColorStateList;)V

    .line 185
    :cond_0
    return-void
.end method

.method public setTintMode(Lccsanandroid/graphics/PorterDuff$Mode;)V
    .locals 2
    .param p1, "tintMode"    # Lccsanandroid/graphics/PorterDuff$Mode;

    .line 189
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mHasTintMode:Z

    .line 190
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iget-object v0, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 191
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    iput-object p1, v0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->mTintMode:Lccsanandroid/graphics/PorterDuff$Mode;

    .line 192
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Lccsanandroid/graphics/drawable/Drawable;Lccsanandroid/graphics/PorterDuff$Mode;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .line 392
    invoke-super {p0, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 393
    .local v0, "changed":Z
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mLastDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 396
    :cond_0
    iget-object v1, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 397
    invoke-virtual {v1, p1, p2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 399
    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Lccsanandroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 385
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mCurrDrawable:Lccsanandroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->getCallback()Lccsanandroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lccsanandroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Lccsanandroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 388
    :cond_0
    return-void
.end method

.method final updateDensity(Lccsanandroid/content/res/Resources;)V
    .locals 1
    .param p1, "res"    # Lccsanandroid/content/res/Resources;

    .line 587
    iget-object v0, p0, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer;->mDrawableContainerState:Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;->updateDensity(Lccsanandroid/content/res/Resources;)V

    .line 588
    return-void
.end method
