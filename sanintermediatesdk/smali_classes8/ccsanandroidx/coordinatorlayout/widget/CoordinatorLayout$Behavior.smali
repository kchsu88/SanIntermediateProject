.class public abstract Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lccsanandroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2091
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2092
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 2102
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2103
    return-void
.end method

.method public static getTag(Lccsanandroid/view/View;)Ljava/lang/Object;
    .locals 2
    .param p0, "child"    # Lccsanandroid/view/View;

    .line 2385
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2386
    .local v0, "lp":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    return-object v1
.end method

.method public static setTag(Lccsanandroid/view/View;Ljava/lang/Object;)V
    .locals 1
    .param p0, "child"    # Lccsanandroid/view/View;
    .param p1, "tag"    # Ljava/lang/Object;

    .line 2372
    invoke-virtual {p0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2373
    .local v0, "lp":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iput-object p1, v0, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2374
    return-void
.end method


# virtual methods
.method public blocksInteractionBelow(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)Z
    .locals 2
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .line 2229
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInsetDodgeRect(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "rect"    # Lccsanandroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 2796
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public getScrimColor(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)I
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)I"
        }
    .end annotation

    .line 2195
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/high16 v0, -0x1000000

    return v0
.end method

.method public getScrimOpacity(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)F
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)F"
        }
    .end annotation

    .line 2213
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public layoutDependsOn(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "dependency"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 2256
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroidx/core/view/WindowInsetsCompat;)Lccsanandroidx/core/view/WindowInsetsCompat;
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "insets"    # Lccsanandroidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroidx/core/view/WindowInsetsCompat;",
            ")",
            "Lccsanandroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 2716
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    return-object p3
.end method

.method public onAttachedToLayoutParams(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .locals 0
    .param p1, "params"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2114
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    return-void
.end method

.method public onDependentViewChanged(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "dependency"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 2286
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onDependentViewRemoved(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "dependency"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2305
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .locals 0

    .line 2124
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    return-void
.end method

.method public onInterceptTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "ev"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 2151
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 2359
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasureChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;IIII)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    .line 2330
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedFling(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;FFZ)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "FFZ)Z"
        }
    .end annotation

    .line 2668
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;FF)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 2696
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;II[I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2599
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedPreScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;II[II)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 2633
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    if-nez p7, :cond_0

    .line 2634
    invoke-virtual/range {p0 .. p6}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;II[I)V

    .line 2636
    :cond_0
    return-void
.end method

.method public onNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;IIII)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2527
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;IIIII)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2540
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    if-nez p8, :cond_0

    .line 2541
    invoke-virtual/range {p0 .. p7}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;IIII)V

    .line 2544
    :cond_0
    return-void
.end method

.method public onNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;IIIII[I)V
    .locals 2
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .param p9, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .line 2583
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    aget v1, p9, v0

    add-int/2addr v1, p6

    aput v1, p9, v0

    .line 2584
    const/4 v0, 0x1

    aget v1, p9, v0

    add-int/2addr v1, p7

    aput v1, p9, v0

    .line 2585
    invoke-virtual/range {p0 .. p8}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;IIIII)V

    .line 2587
    return-void
.end method

.method public onNestedScrollAccepted(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Lccsanandroid/view/View;
    .param p4, "target"    # Lccsanandroid/view/View;
    .param p5, "axes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2443
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScrollAccepted(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;II)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Lccsanandroid/view/View;
    .param p4, "target"    # Lccsanandroid/view/View;
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "II)V"
        }
    .end annotation

    .line 2469
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    if-nez p6, :cond_0

    .line 2470
    invoke-virtual/range {p0 .. p5}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;I)V

    .line 2473
    :cond_0
    return-void
.end method

.method public onRequestChildRectangleOnScreen(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "rectangle"    # Lccsanandroid/graphics/Rect;
    .param p4, "immediate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/graphics/Rect;",
            "Z)Z"
        }
    .end annotation

    .line 2738
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/os/Parcelable;)V
    .locals 0
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "state"    # Lccsanandroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 2756
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    return-void
.end method

.method public onSaveInstanceState(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)Lccsanandroid/os/Parcelable;
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Lccsanandroid/os/Parcelable;"
        }
    .end annotation

    .line 2778
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    sget-object v0, Lccsanandroid/view/View$BaseSavedState;->EMPTY_STATE:Lccsanandroid/view/AbsSavedState;

    return-object v0
.end method

.method public onStartNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;I)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Lccsanandroid/view/View;
    .param p4, "target"    # Lccsanandroid/view/View;
    .param p5, "axes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "I)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2398
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStartNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;II)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Lccsanandroid/view/View;
    .param p4, "target"    # Lccsanandroid/view/View;
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "Lccsanandroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 2426
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    if-nez p6, :cond_0

    .line 2427
    invoke-virtual/range {p0 .. p5}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;I)Z

    move-result v0

    return v0

    .line 2430
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2484
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    return-void
.end method

.method public onStopNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Lccsanandroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 2509
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    if-nez p4, :cond_0

    .line 2510
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 2512
    :cond_0
    return-void
.end method

.method public onTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "ev"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 2175
    .local p0, "this":Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method
