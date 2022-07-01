.class Lccsanandroidx/appcompat/widget/DropDownListView;
.super Lccsanandroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;,
        Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mClickAnimation:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field private mListSelectionHidden:Z

.field private mMotionPosition:I

.field mResolveHoverRunnable:Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Lccsanandroidx/core/widget/ListViewAutoScrollHelper;

.field private mSelectionBottomPadding:I

.field private mSelectionLeftPadding:I

.field private mSelectionRightPadding:I

.field private mSelectionTopPadding:I

.field private mSelector:Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

.field private final mSelectorRect:Lccsanandroid/graphics/Rect;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 118
    sget v0, Lccsanandroidx/appcompat/R$attr;->dropDownListViewStyle:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lccsanandroid/widget/ListView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 50
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectorRect:Lccsanandroid/graphics/Rect;

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 52
    iput v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    .line 53
    iput v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    .line 54
    iput v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 119
    iput-boolean p2, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    .line 120
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/DropDownListView;->setCacheColorHint(I)V

    .line 123
    :try_start_0
    const-class v0, Lccsanandroid/widget/AbsListView;

    const-string v1, "mIsChildViewEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 128
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-void
.end method

.method private clearPressedItem()V
    .locals 3

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 628
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/DropDownListView;->setPressed(Z)V

    .line 630
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    .line 632
    iget v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/DropDownListView;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 633
    .local v1, "motionView":Lccsanandroid/view/View;
    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->setPressed(Z)V

    .line 637
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mClickAnimation:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_1

    .line 638
    invoke-virtual {v0}, Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 639
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mClickAnimation:Lccsanandroidx/core/view/ViewPropertyAnimatorCompat;

    .line 641
    :cond_1
    return-void
.end method

.method private clickPressedItem(Lccsanandroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "position"    # I

    .line 540
    invoke-virtual {p0, p2}, Lccsanandroidx/appcompat/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 541
    .local v0, "id":J
    invoke-virtual {p0, p1, p2, v0, v1}, Lccsanandroidx/appcompat/widget/DropDownListView;->performItemClick(Lccsanandroid/view/View;IJ)Z

    .line 542
    return-void
.end method

.method private drawSelectorCompat(Lccsanandroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 563
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectorRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0}, Lccsanandroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getSelector()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 565
    .local v0, "selector":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 566
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectorRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(Lccsanandroid/graphics/Rect;)V

    .line 567
    invoke-virtual {v0, p1}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    .line 570
    .end local v0    # "selector":Lccsanandroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private positionSelectorCompat(ILccsanandroid/view/View;)V
    .locals 5
    .param p1, "position"    # I
    .param p2, "sel"    # Lccsanandroid/view/View;

    .line 602
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectorRect:Lccsanandroid/graphics/Rect;

    .line 603
    .local v0, "selectorRect":Lccsanandroid/graphics/Rect;
    invoke-virtual {p2}, Lccsanandroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Lccsanandroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p2}, Lccsanandroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 606
    iget v1, v0, Lccsanandroid/graphics/Rect;->left:I

    iget v2, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Lccsanandroid/graphics/Rect;->left:I

    .line 607
    iget v1, v0, Lccsanandroid/graphics/Rect;->top:I

    iget v2, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Lccsanandroid/graphics/Rect;->top:I

    .line 608
    iget v1, v0, Lccsanandroid/graphics/Rect;->right:I

    iget v2, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Lccsanandroid/graphics/Rect;->right:I

    .line 609
    iget v1, v0, Lccsanandroid/graphics/Rect;->bottom:I

    iget v2, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Lccsanandroid/graphics/Rect;->bottom:I

    .line 614
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 615
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Lccsanandroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v1, :cond_1

    .line 616
    iget-object v2, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 617
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 618
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->refreshDrawableState()V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    .end local v1    # "isChildViewEnabled":Z
    :cond_1
    goto :goto_1

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 624
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    return-void
.end method

.method private positionSelectorLikeFocusCompat(ILccsanandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "sel"    # Lccsanandroid/view/View;

    .line 584
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getSelector()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 585
    .local v0, "selector":Lccsanandroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 586
    .local v3, "manageState":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 587
    invoke-virtual {v0, v2, v2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 590
    :cond_1
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/DropDownListView;->positionSelectorCompat(ILccsanandroid/view/View;)V

    .line 592
    if-eqz v3, :cond_3

    .line 593
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectorRect:Lccsanandroid/graphics/Rect;

    .line 594
    .local v4, "bounds":Lccsanandroid/graphics/Rect;
    invoke-virtual {v4}, Lccsanandroid/graphics/Rect;->exactCenterX()F

    move-result v5

    .line 595
    .local v5, "x":F
    invoke-virtual {v4}, Lccsanandroid/graphics/Rect;->exactCenterY()F

    move-result v6

    .line 596
    .local v6, "y":F
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Lccsanandroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 597
    invoke-static {v0, v5, v6}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Lccsanandroid/graphics/drawable/Drawable;FF)V

    .line 599
    .end local v4    # "bounds":Lccsanandroid/graphics/Rect;
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_3
    return-void
.end method

.method private positionSelectorLikeTouchCompat(ILccsanandroid/view/View;FF)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "sel"    # Lccsanandroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 573
    invoke-direct {p0, p1, p2}, Lccsanandroidx/appcompat/widget/DropDownListView;->positionSelectorLikeFocusCompat(ILccsanandroid/view/View;)V

    .line 575
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getSelector()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 576
    .local v0, "selector":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 577
    invoke-static {v0, p3, p4}, Lccsanandroidx/core/graphics/drawable/DrawableCompat;->setHotspot(Lccsanandroid/graphics/drawable/Drawable;FF)V

    .line 579
    :cond_0
    return-void
.end method

.method private setPressedItem(Lccsanandroid/view/View;IFF)V
    .locals 6
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 647
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 648
    invoke-virtual {p0, p3, p4}, Lccsanandroidx/appcompat/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 650
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 651
    invoke-virtual {p0, v0}, Lccsanandroidx/appcompat/widget/DropDownListView;->setPressed(Z)V

    .line 655
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->layoutChildren()V

    .line 659
    iget v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    .line 660
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lccsanandroidx/appcompat/widget/DropDownListView;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v1

    .line 661
    .local v1, "motionView":Lccsanandroid/view/View;
    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Lccsanandroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 662
    invoke-virtual {v1, v4}, Lccsanandroid/view/View;->setPressed(Z)V

    .line 665
    .end local v1    # "motionView":Lccsanandroid/view/View;
    :cond_2
    iput p2, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    .line 668
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    .line 669
    .local v1, "childX":F
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p4, v3

    .line 670
    .local v3, "childY":F
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_3

    .line 671
    invoke-virtual {p1, v1, v3}, Lccsanandroid/view/View;->drawableHotspotChanged(FF)V

    .line 673
    :cond_3
    invoke-virtual {p1}, Lccsanandroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_4

    .line 674
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setPressed(Z)V

    .line 678
    :cond_4
    invoke-direct {p0, p2, p1, p3, p4}, Lccsanandroidx/appcompat/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILccsanandroid/view/View;FF)V

    .line 683
    invoke-direct {p0, v4}, Lccsanandroidx/appcompat/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 687
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->refreshDrawableState()V

    .line 688
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 371
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelector:Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;->setEnabled(Z)V

    .line 374
    :cond_0
    return-void
.end method

.method private touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mDrawsInPressedState:Z

    return v0
.end method

.method private updateSelectorStateCompat()V
    .locals 2

    .line 556
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getSelector()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 557
    .local v0, "selector":Lccsanandroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->touchModeDrawsInPressedStateCompat()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/graphics/drawable/Drawable;->setState([I)Z

    .line 560
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "drawSelectorOnTop":Z
    invoke-direct {p0, p1}, Lccsanandroidx/appcompat/widget/DropDownListView;->drawSelectorCompat(Lccsanandroid/graphics/Canvas;)V

    .line 203
    invoke-super {p0, p1}, Lccsanandroid/widget/ListView;->dispatchDraw(Lccsanandroid/graphics/Canvas;)V

    .line 204
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .line 186
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/ListView;->drawableStateChanged()V

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsanandroidx/appcompat/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 193
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->updateSelectorStateCompat()V

    .line 194
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lccsanandroid/widget/ListView;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lccsanandroid/widget/ListView;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lccsanandroid/widget/ListView;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lccsanandroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookForSelectablePosition(IZ)I
    .locals 4
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .line 229
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v0

    .line 230
    .local v0, "adapter":Lccsanandroid/widget/ListAdapter;
    const/4 v1, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_4

    .line 234
    :cond_0
    invoke-interface {v0}, Lccsanandroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 235
    .local v2, "count":I
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Lccsanandroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 236
    if-eqz p2, :cond_1

    .line 237
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 238
    :goto_0
    if-ge p1, v2, :cond_2

    invoke-interface {v0, p1}, Lccsanandroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 239
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 242
    :cond_1
    add-int/lit8 v3, v2, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 243
    :goto_1
    if-ltz p1, :cond_2

    invoke-interface {v0, p1}, Lccsanandroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 248
    :cond_2
    if-ltz p1, :cond_4

    if-lt p1, v2, :cond_3

    goto :goto_2

    .line 251
    :cond_3
    return p1

    .line 249
    :cond_4
    :goto_2
    return v1

    .line 253
    :cond_5
    if-ltz p1, :cond_7

    if-lt p1, v2, :cond_6

    goto :goto_3

    .line 256
    :cond_6
    return p1

    .line 254
    :cond_7
    :goto_3
    return v1

    .line 231
    .end local v2    # "count":I
    :cond_8
    :goto_4
    return v1
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .line 290
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getListPaddingTop()I

    move-result v2

    .line 291
    .local v2, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getListPaddingBottom()I

    move-result v3

    .line 292
    .local v3, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getDividerHeight()I

    move-result v4

    .line 293
    .local v4, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getDivider()Lccsanandroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 295
    .local v5, "divider":Lccsanandroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getAdapter()Lccsanandroid/widget/ListAdapter;

    move-result-object v6

    .line 297
    .local v6, "adapter":Lccsanandroid/widget/ListAdapter;
    if-nez v6, :cond_0

    .line 298
    add-int v7, v2, v3

    return v7

    .line 302
    :cond_0
    add-int v7, v2, v3

    .line 303
    .local v7, "returnedHeight":I
    if-lez v4, :cond_1

    if-eqz v5, :cond_1

    .line 304
    move v9, v4

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 308
    .local v9, "dividerHeight":I
    :goto_0
    const/4 v10, 0x0

    .line 310
    .local v10, "prevHeightWithoutPartialChild":I
    const/4 v11, 0x0

    .line 311
    .local v11, "child":Lccsanandroid/view/View;
    const/4 v12, 0x0

    .line 312
    .local v12, "viewType":I
    invoke-interface {v6}, Lccsanandroid/widget/ListAdapter;->getCount()I

    move-result v13

    .line 313
    .local v13, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v13, :cond_9

    .line 314
    invoke-interface {v6, v14}, Lccsanandroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    .line 315
    .local v15, "newType":I
    if-eq v15, v12, :cond_2

    .line 316
    const/4 v11, 0x0

    .line 317
    move v12, v15

    .line 319
    :cond_2
    move-object/from16 v8, p0

    invoke-interface {v6, v14, v11, v8}, Lccsanandroid/widget/ListAdapter;->getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v11

    .line 323
    invoke-virtual {v11}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    .line 325
    .local v17, "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    if-nez v17, :cond_3

    .line 326
    move/from16 v18, v2

    .end local v2    # "paddingTop":I
    .local v18, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->generateDefaultLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 327
    .end local v17    # "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    .local v2, "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v11, v2}, Lccsanandroid/view/View;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 325
    .end local v18    # "paddingTop":I
    .local v2, "paddingTop":I
    .restart local v17    # "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    :cond_3
    move/from16 v18, v2

    .end local v2    # "paddingTop":I
    .restart local v18    # "paddingTop":I
    move-object/from16 v2, v17

    .line 330
    .end local v17    # "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    .local v2, "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    :goto_2
    move/from16 v17, v3

    .end local v3    # "paddingBottom":I
    .local v17, "paddingBottom":I
    iget v3, v2, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_4

    .line 331
    iget v3, v2, Lccsanandroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v19, v2

    .end local v2    # "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    .local v19, "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v3, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v2

    const/4 v2, 0x0

    .local v2, "heightMeasureSpec":I
    goto :goto_3

    .line 334
    .end local v19    # "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    .local v2, "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    :cond_4
    move-object/from16 v19, v2

    .end local v2    # "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 336
    .local v3, "heightMeasureSpec":I
    :goto_3
    move/from16 v2, p1

    invoke-virtual {v11, v2, v3}, Lccsanandroid/view/View;->measure(II)V

    .line 340
    invoke-virtual {v11}, Lccsanandroid/view/View;->forceLayout()V

    .line 342
    if-lez v14, :cond_5

    .line 344
    add-int/2addr v7, v9

    .line 347
    :cond_5
    invoke-virtual {v11}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v20

    add-int v7, v7, v20

    .line 349
    if-lt v7, v0, :cond_7

    .line 355
    if-ltz v1, :cond_6

    if-le v14, v1, :cond_6

    if-lez v10, :cond_6

    if-eq v7, v0, :cond_6

    .line 356
    move/from16 v16, v10

    goto :goto_4

    .line 357
    :cond_6
    move/from16 v16, v0

    .line 352
    :goto_4
    return v16

    .line 360
    :cond_7
    if-ltz v1, :cond_8

    if-lt v14, v1, :cond_8

    .line 361
    move v10, v7

    .line 313
    .end local v3    # "heightMeasureSpec":I
    .end local v15    # "newType":I
    .end local v19    # "childLp":Lccsanandroid/view/ViewGroup$LayoutParams;
    :cond_8
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v17

    move/from16 v2, v18

    goto :goto_1

    .line 367
    .end local v14    # "i":I
    .end local v17    # "paddingBottom":I
    .end local v18    # "paddingTop":I
    .local v2, "paddingTop":I
    .local v3, "paddingBottom":I
    :cond_9
    return v7
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 470
    invoke-super {p0}, Lccsanandroid/widget/ListView;->onDetachedFromWindow()V

    .line 471
    return-void
.end method

.method public onForwardedEvent(Lccsanandroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .line 480
    const/4 v0, 0x1

    .line 481
    .local v0, "handledEvent":Z
    const/4 v1, 0x0

    .line 483
    .local v1, "clearPressedItem":Z
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 484
    .local v2, "actionMasked":I
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 486
    :pswitch_0
    const/4 v0, 0x0

    .line 487
    goto :goto_0

    .line 489
    :pswitch_1
    const/4 v0, 0x0

    .line 492
    :pswitch_2
    invoke-virtual {p1, p2}, Lccsanandroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 493
    .local v4, "activeIndex":I
    if-gez v4, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 495
    goto :goto_0

    .line 498
    :cond_0
    invoke-virtual {p1, v4}, Lccsanandroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    .line 499
    .local v5, "x":I
    invoke-virtual {p1, v4}, Lccsanandroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    .line 500
    .local v6, "y":I
    invoke-virtual {p0, v5, v6}, Lccsanandroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    move-result v7

    .line 501
    .local v7, "position":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 502
    const/4 v1, 0x1

    .line 503
    goto :goto_0

    .line 506
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {p0, v8}, Lccsanandroidx/appcompat/widget/DropDownListView;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v8

    .line 507
    .local v8, "child":Lccsanandroid/view/View;
    int-to-float v9, v5

    int-to-float v10, v6

    invoke-direct {p0, v8, v7, v9, v10}, Lccsanandroidx/appcompat/widget/DropDownListView;->setPressedItem(Lccsanandroid/view/View;IFF)V

    .line 508
    const/4 v0, 0x1

    .line 510
    if-ne v2, v3, :cond_2

    .line 511
    invoke-direct {p0, v8, v7}, Lccsanandroidx/appcompat/widget/DropDownListView;->clickPressedItem(Lccsanandroid/view/View;I)V

    .line 517
    .end local v4    # "activeIndex":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v7    # "position":I
    .end local v8    # "child":Lccsanandroid/view/View;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_4

    .line 518
    :cond_3
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->clearPressedItem()V

    .line 522
    :cond_4
    if-eqz v0, :cond_6

    .line 523
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mScrollHelper:Lccsanandroidx/core/widget/ListViewAutoScrollHelper;

    if-nez v4, :cond_5

    .line 524
    new-instance v4, Lccsanandroidx/core/widget/ListViewAutoScrollHelper;

    invoke-direct {v4, p0}, Lccsanandroidx/core/widget/ListViewAutoScrollHelper;-><init>(Lccsanandroid/widget/ListView;)V

    iput-object v4, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mScrollHelper:Lccsanandroidx/core/widget/ListViewAutoScrollHelper;

    .line 526
    :cond_5
    iget-object v4, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mScrollHelper:Lccsanandroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {v4, v3}, Lccsanandroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Lccsanandroidx/core/widget/AutoScrollHelper;

    .line 527
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mScrollHelper:Lccsanandroidx/core/widget/ListViewAutoScrollHelper;

    invoke-virtual {v3, p0, p1}, Lccsanandroidx/core/widget/ListViewAutoScrollHelper;->onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z

    goto :goto_1

    .line 528
    :cond_6
    iget-object v3, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mScrollHelper:Lccsanandroidx/core/widget/ListViewAutoScrollHelper;

    if-eqz v3, :cond_7

    .line 529
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lccsanandroidx/core/widget/ListViewAutoScrollHelper;->setEnabled(Z)Lccsanandroidx/core/widget/AutoScrollHelper;

    .line 532
    :cond_7
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 428
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 432
    invoke-super {p0, p1}, Lccsanandroid/widget/ListView;->onHoverEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 435
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 436
    .local v0, "action":I
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v1, :cond_1

    .line 439
    new-instance v1, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    invoke-direct {v1, p0}, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;-><init>(Lccsanandroidx/appcompat/widget/DropDownListView;)V

    iput-object v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    .line 440
    invoke-virtual {v1}, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 444
    :cond_1
    invoke-super {p0, p1}, Lccsanandroid/widget/ListView;->onHoverEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v1

    .line 445
    .local v1, "handled":Z
    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {p0, v3}, Lccsanandroidx/appcompat/widget/DropDownListView;->setSelection(I)V

    goto :goto_1

    .line 447
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v4}, Lccsanandroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    move-result v2

    .line 449
    .local v2, "position":I
    if-eq v2, v3, :cond_5

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v3

    if-eq v2, v3, :cond_5

    .line 450
    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p0, v3}, Lccsanandroidx/appcompat/widget/DropDownListView;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v3

    .line 451
    .local v3, "hoveredItem":Lccsanandroid/view/View;
    invoke-virtual {v3}, Lccsanandroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 454
    invoke-virtual {v3}, Lccsanandroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v2, v4}, Lccsanandroidx/appcompat/widget/DropDownListView;->setSelectionFromTop(II)V

    .line 456
    :cond_4
    invoke-direct {p0}, Lccsanandroidx/appcompat/widget/DropDownListView;->updateSelectorStateCompat()V

    .line 458
    .end local v2    # "position":I
    .end local v3    # "hoveredItem":Lccsanandroid/view/View;
    :cond_5
    nop

    .line 464
    :goto_1
    return v1
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 208
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/appcompat/widget/DropDownListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mMotionPosition:I

    .line 213
    :goto_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 217
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/widget/ListView;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .locals 0
    .param p1, "hideListSelection"    # Z

    .line 552
    iput-boolean p1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mListSelectionHidden:Z

    .line 553
    return-void
.end method

.method public setSelector(Lccsanandroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "sel"    # Lccsanandroid/graphics/drawable/Drawable;

    .line 169
    if-eqz p1, :cond_0

    new-instance v0, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    invoke-direct {v0, p1}, Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;-><init>(Lccsanandroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelector:Lccsanandroidx/appcompat/widget/DropDownListView$GateKeeperDrawable;

    .line 170
    invoke-super {p0, v0}, Lccsanandroid/widget/ListView;->setSelector(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 172
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 173
    .local v0, "padding":Lccsanandroid/graphics/Rect;
    if-eqz p1, :cond_1

    .line 174
    invoke-virtual {p1, v0}, Lccsanandroid/graphics/drawable/Drawable;->getPadding(Lccsanandroid/graphics/Rect;)Z

    .line 177
    :cond_1
    iget v1, v0, Lccsanandroid/graphics/Rect;->left:I

    iput v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 178
    iget v1, v0, Lccsanandroid/graphics/Rect;->top:I

    iput v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionTopPadding:I

    .line 179
    iget v1, v0, Lccsanandroid/graphics/Rect;->right:I

    iput v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionRightPadding:I

    .line 180
    iget v1, v0, Lccsanandroid/graphics/Rect;->bottom:I

    iput v1, p0, Lccsanandroidx/appcompat/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 181
    return-void
.end method
