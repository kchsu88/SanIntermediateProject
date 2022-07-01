.class public Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.super Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollingViewBehavior"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2005
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 2008
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 2010
    sget-object v0, Lccsancom/google/android/material/R$styleable;->ScrollingViewBehavior_Layout:[I

    .line 2011
    invoke-virtual {p1, p2, v0}, Lccsanandroid/content/Context;->obtainStyledAttributes(Lccsanandroid/util/AttributeSet;[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v0

    .line 2012
    .local v0, "a":Lccsanandroid/content/res/TypedArray;
    sget v1, Lccsancom/google/android/material/R$styleable;->ScrollingViewBehavior_Layout_behavior_overlapTop:I

    .line 2013
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 2012
    invoke-virtual {p0, v1}, Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->setOverlayTop(I)V

    .line 2014
    invoke-virtual {v0}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 2015
    return-void
.end method

.method private static getAppBarLayoutOffset(Lccsancom/google/android/material/appbar/AppBarLayout;)I
    .locals 2
    .param p0, "abl"    # Lccsancom/google/android/material/appbar/AppBarLayout;

    .line 2103
    nop

    .line 2104
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2105
    .local v0, "behavior":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    instance-of v1, v0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    if-eqz v1, :cond_0

    .line 2106
    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    invoke-virtual {v1}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v1

    return v1

    .line 2108
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private offsetChildAsNeeded(Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 4
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "dependency"    # Lccsanandroid/view/View;

    .line 2065
    nop

    .line 2066
    invoke-virtual {p2}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 2067
    .local v0, "behavior":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    instance-of v1, v0, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    if-eqz v1, :cond_0

    .line 2070
    move-object v1, v0

    check-cast v1, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    .line 2071
    .local v1, "ablBehavior":Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;
    nop

    .line 2073
    invoke-virtual {p2}, Lccsanandroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2074
    invoke-static {v1}, Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;->access$000(Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2075
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getVerticalLayoutGap()I

    move-result v3

    add-int/2addr v2, v3

    .line 2076
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getOverlapPixelsForOffset(Lccsanandroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2071
    invoke-static {p1, v2}, Lccsanandroidx/core/view/ViewCompat;->offsetTopAndBottom(Lccsanandroid/view/View;I)V

    .line 2078
    .end local v1    # "ablBehavior":Lccsancom/google/android/material/appbar/AppBarLayout$BaseBehavior;
    :cond_0
    return-void
.end method

.method private updateLiftedStateIfNeeded(Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "child"    # Lccsanandroid/view/View;
    .param p2, "dependency"    # Lccsanandroid/view/View;

    .line 2133
    instance-of v0, p2, Lccsancom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 2134
    move-object v0, p2

    check-cast v0, Lccsancom/google/android/material/appbar/AppBarLayout;

    .line 2135
    .local v0, "appBarLayout":Lccsancom/google/android/material/appbar/AppBarLayout;
    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/AppBarLayout;->isLiftOnScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2136
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/appbar/AppBarLayout;->shouldLift(Lccsanandroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/appbar/AppBarLayout;->setLiftedState(Z)Z

    .line 2139
    .end local v0    # "appBarLayout":Lccsancom/google/android/material/appbar/AppBarLayout;
    :cond_0
    return-void
.end method


# virtual methods
.method bridge synthetic findFirstDependency(Ljava/util/List;)Lccsanandroid/view/View;
    .locals 0

    .line 2003
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lccsancom/google/android/material/appbar/AppBarLayout;

    move-result-object p1

    return-object p1
.end method

.method findFirstDependency(Ljava/util/List;)Lccsancom/google/android/material/appbar/AppBarLayout;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)",
            "Lccsancom/google/android/material/appbar/AppBarLayout;"
        }
    .end annotation

    .line 2114
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Lccsanandroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2115
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/view/View;

    .line 2116
    .local v2, "view":Lccsanandroid/view/View;
    instance-of v3, v2, Lccsancom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_0

    .line 2117
    move-object v3, v2

    check-cast v3, Lccsancom/google/android/material/appbar/AppBarLayout;

    return-object v3

    .line 2114
    .end local v2    # "view":Lccsanandroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2120
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    .line 2003
    invoke-super {p0}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method getOverlapRatioForOffset(Lccsanandroid/view/View;)F
    .locals 8
    .param p1, "header"    # Lccsanandroid/view/View;

    .line 2082
    instance-of v0, p1, Lccsancom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2083
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/appbar/AppBarLayout;

    .line 2084
    .local v0, "abl":Lccsancom/google/android/material/appbar/AppBarLayout;
    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    .line 2085
    .local v2, "totalScrollRange":I
    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v3

    .line 2086
    .local v3, "preScrollDown":I
    invoke-static {v0}, Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->getAppBarLayoutOffset(Lccsancom/google/android/material/appbar/AppBarLayout;)I

    move-result v4

    .line 2088
    .local v4, "offset":I
    if-eqz v3, :cond_0

    add-int v5, v2, v4

    if-gt v5, v3, :cond_0

    .line 2090
    return v1

    .line 2092
    :cond_0
    sub-int v5, v2, v3

    .line 2093
    .local v5, "availScrollRange":I
    if-eqz v5, :cond_1

    .line 2095
    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    add-float/2addr v6, v1

    return v6

    .line 2099
    .end local v0    # "abl":Lccsancom/google/android/material/appbar/AppBarLayout;
    .end local v2    # "totalScrollRange":I
    .end local v3    # "preScrollDown":I
    .end local v4    # "offset":I
    .end local v5    # "availScrollRange":I
    :cond_1
    return v1
.end method

.method getScrollRange(Lccsanandroid/view/View;)I
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 2125
    instance-of v0, p1, Lccsancom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 2126
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0

    .line 2128
    :cond_0
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->getScrollRange(Lccsanandroid/view/View;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    .line 2003
    invoke-super {p0}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isHorizontalOffsetEnabled()Z
    .locals 1

    .line 2003
    invoke-super {p0}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->isHorizontalOffsetEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isVerticalOffsetEnabled()Z
    .locals 1

    .line 2003
    invoke-super {p0}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->isVerticalOffsetEnabled()Z

    move-result v0

    return v0
.end method

.method public layoutDependsOn(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "dependency"    # Lccsanandroid/view/View;

    .line 2020
    instance-of v0, p3, Lccsancom/google/android/material/appbar/AppBarLayout;

    return v0
.end method

.method public onDependentViewChanged(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "dependency"    # Lccsanandroid/view/View;

    .line 2026
    invoke-direct {p0, p2, p3}, Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->offsetChildAsNeeded(Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 2027
    invoke-direct {p0, p2, p3}, Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->updateLiftedStateIfNeeded(Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 2028
    const/4 v0, 0x0

    return v0
.end method

.method public onDependentViewRemoved(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "dependency"    # Lccsanandroid/view/View;

    .line 2034
    instance-of v0, p3, Lccsancom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 2035
    sget-object v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_FORWARD:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lccsanandroidx/core/view/ViewCompat;->removeAccessibilityAction(Lccsanandroid/view/View;I)V

    .line 2036
    sget-object v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_BACKWARD:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lccsanandroidx/core/view/ViewCompat;->removeAccessibilityAction(Lccsanandroid/view/View;I)V

    .line 2038
    :cond_0
    return-void
.end method

.method public bridge synthetic onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z
    .locals 0

    .line 2003
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onMeasureChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;IIII)Z
    .locals 0

    .line 2003
    invoke-super/range {p0 .. p6}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->onMeasureChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;IIII)Z

    move-result p1

    return p1
.end method

.method public onRequestChildRectangleOnScreen(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;Z)Z
    .locals 5
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "rectangle"    # Lccsanandroid/graphics/Rect;
    .param p4, "immediate"    # Z

    .line 2046
    invoke-virtual {p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getDependencies(Lccsanandroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->findFirstDependency(Ljava/util/List;)Lccsancom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

    .line 2047
    .local v0, "header":Lccsancom/google/android/material/appbar/AppBarLayout;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2049
    invoke-virtual {p2}, Lccsanandroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Lccsanandroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Lccsanandroid/graphics/Rect;->offset(II)V

    .line 2051
    iget-object v2, p0, Lccsancom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->tempRect1:Lccsanandroid/graphics/Rect;

    .line 2052
    .local v2, "parentRect":Lccsanandroid/graphics/Rect;
    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 2054
    invoke-virtual {v2, p3}, Lccsanandroid/graphics/Rect;->contains(Lccsanandroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2057
    xor-int/lit8 v3, p4, 0x1

    invoke-virtual {v0, v1, v3}, Lccsancom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    .line 2058
    const/4 v1, 0x1

    return v1

    .line 2061
    .end local v2    # "parentRect":Lccsanandroid/graphics/Rect;
    :cond_0
    return v1
.end method

.method public bridge synthetic setHorizontalOffsetEnabled(Z)V
    .locals 0

    .line 2003
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->setHorizontalOffsetEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 0

    .line 2003
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 0

    .line 2003
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setVerticalOffsetEnabled(Z)V
    .locals 0

    .line 2003
    invoke-super {p0, p1}, Lccsancom/google/android/material/appbar/HeaderScrollingViewBehavior;->setVerticalOffsetEnabled(Z)V

    return-void
.end method
