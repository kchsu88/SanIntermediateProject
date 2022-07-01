.class abstract Lccsancom/google/android/material/appbar/HeaderBehavior;
.super Lccsancom/google/android/material/appbar/ViewOffsetBehavior;
.source "HeaderBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lccsanandroid/view/View;",
        ">",
        "Lccsancom/google/android/material/appbar/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private activePointerId:I

.field private flingRunnable:Ljava/lang/Runnable;

.field private isBeingDragged:Z

.field private lastMotionY:I

.field scroller:Lccsanandroid/widget/OverScroller;

.field private touchSlop:I

.field private velocityTracker:Lccsanandroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 47
    iput v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 53
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/android/material/appbar/ViewOffsetBehavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 47
    iput v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    .line 54
    return-void
.end method

.method private ensureVelocityTracker()V
    .locals 1

    .line 254
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Lccsanandroid/view/VelocityTracker;->obtain()Lccsanandroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method canDragView(Lccsanandroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 241
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p1, "view":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method final fling(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;IIF)Z
    .locals 13
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "minOffset"    # I
    .param p4, "maxOffset"    # I
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 202
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p2, "layout":Lccsanandroid/view/View;, "TV;"
    move-object v0, p0

    move-object v1, p2

    iget-object v2, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {p2, v2}, Lccsanandroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 204
    const/4 v2, 0x0

    iput-object v2, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 207
    :cond_0
    iget-object v2, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroller:Lccsanandroid/widget/OverScroller;

    if-nez v2, :cond_1

    .line 208
    new-instance v2, Lccsanandroid/widget/OverScroller;

    invoke-virtual {p2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroid/widget/OverScroller;-><init>(Lccsanandroid/content/Context;)V

    iput-object v2, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroller:Lccsanandroid/widget/OverScroller;

    .line 211
    :cond_1
    iget-object v4, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroller:Lccsanandroid/widget/OverScroller;

    const/4 v5, 0x0

    .line 213
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v6

    const/4 v7, 0x0

    .line 215
    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 211
    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lccsanandroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 221
    iget-object v2, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v2}, Lccsanandroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    new-instance v2, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;

    move-object v3, p1

    invoke-direct {v2, p0, p1, p2}, Lccsancom/google/android/material/appbar/HeaderBehavior$FlingRunnable;-><init>(Lccsancom/google/android/material/appbar/HeaderBehavior;Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)V

    iput-object v2, v0, Lccsancom/google/android/material/appbar/HeaderBehavior;->flingRunnable:Ljava/lang/Runnable;

    .line 223
    invoke-static {p2, v2}, Lccsanandroidx/core/view/ViewCompat;->postOnAnimation(Lccsanandroid/view/View;Ljava/lang/Runnable;)V

    .line 224
    const/4 v2, 0x1

    return v2

    .line 226
    :cond_2
    move-object v3, p1

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/appbar/HeaderBehavior;->onFlingFinished(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)V

    .line 227
    const/4 v2, 0x0

    return v2
.end method

.method getMaxDragOffset(Lccsanandroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 246
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p1, "view":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method getScrollRangeForDragFling(Lccsanandroid/view/View;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 250
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p1, "view":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p1}, Lccsanandroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 1

    .line 183
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method onFlingFinished(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 237
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p2, "layout":Lccsanandroid/view/View;, "TV;"
    return-void
.end method

.method public onInterceptTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 7
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

    .line 59
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    iget v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-gez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/ViewConfiguration;->get(Lccsanandroid/content/Context;)Lccsanandroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    .line 64
    :cond_0
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-eqz v0, :cond_3

    .line 65
    iget v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    if-ne v0, v3, :cond_1

    .line 67
    return v4

    .line 69
    :cond_1
    invoke-virtual {p3, v0}, Lccsanandroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 70
    .local v0, "pointerIndex":I
    if-ne v0, v3, :cond_2

    .line 71
    return v4

    .line 74
    :cond_2
    invoke-virtual {p3, v0}, Lccsanandroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    .line 75
    .local v1, "y":I
    iget v5, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 76
    .local v5, "yDiff":I
    iget v6, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->touchSlop:I

    if-le v5, v6, :cond_3

    .line 77
    iput v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    .line 78
    return v2

    .line 82
    .end local v0    # "pointerIndex":I
    .end local v1    # "y":I
    .end local v5    # "yDiff":I
    :cond_3
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_5

    .line 83
    iput v3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 85
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 86
    .local v0, "x":I
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 87
    .restart local v1    # "y":I
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/appbar/HeaderBehavior;->canDragView(Lccsanandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, p2, v0, v1}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Lccsanandroid/view/View;II)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 88
    if-eqz v3, :cond_5

    .line 89
    iput v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    .line 90
    invoke-virtual {p3, v4}, Lccsanandroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 91
    invoke-direct {p0}, Lccsancom/google/android/material/appbar/HeaderBehavior;->ensureVelocityTracker()V

    .line 94
    iget-object v3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroller:Lccsanandroid/widget/OverScroller;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lccsanandroid/widget/OverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 95
    iget-object v3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroller:Lccsanandroid/widget/OverScroller;

    invoke-virtual {v3}, Lccsanandroid/widget/OverScroller;->abortAnimation()V

    .line 96
    return v2

    .line 101
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_5
    iget-object v0, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    if-eqz v0, :cond_6

    .line 102
    invoke-virtual {v0, p3}, Lccsanandroid/view/VelocityTracker;->addMovement(Lccsanandroid/view/MotionEvent;)V

    .line 105
    :cond_6
    return v4
.end method

.method public onTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 12
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

    .line 111
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x0

    .line 112
    .local v0, "consumeUp":Z
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 126
    :pswitch_1
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 127
    .local v1, "newIndex":I
    :goto_0
    invoke-virtual {p3, v1}, Lccsanandroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 128
    invoke-virtual {p3, v1}, Lccsanandroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    .line 129
    goto :goto_1

    .line 114
    .end local v1    # "newIndex":I
    :pswitch_2
    iget v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-virtual {p3, v1}, Lccsanandroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 115
    .local v1, "activePointerIndex":I
    if-ne v1, v3, :cond_1

    .line 116
    return v4

    .line 119
    :cond_1
    invoke-virtual {p3, v1}, Lccsanandroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    .line 120
    .local v3, "y":I
    iget v5, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    sub-int/2addr v5, v3

    .line 121
    .local v5, "dy":I
    iput v3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->lastMotionY:I

    .line 123
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/appbar/HeaderBehavior;->getMaxDragOffset(Lccsanandroid/view/View;)I

    move-result v10

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, v5

    invoke-virtual/range {v6 .. v11}, Lccsancom/google/android/material/appbar/HeaderBehavior;->scroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;III)I

    .line 124
    goto :goto_1

    .line 131
    .end local v1    # "activePointerIndex":I
    .end local v3    # "y":I
    .end local v5    # "dy":I
    :pswitch_3
    iget-object v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    if-eqz v1, :cond_2

    .line 132
    const/4 v0, 0x1

    .line 133
    invoke-virtual {v1, p3}, Lccsanandroid/view/VelocityTracker;->addMovement(Lccsanandroid/view/MotionEvent;)V

    .line 134
    iget-object v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v1, v5}, Lccsanandroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 135
    iget-object v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    iget v5, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    invoke-virtual {v1, v5}, Lccsanandroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    .line 136
    .local v1, "yvel":F
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/appbar/HeaderBehavior;->getScrollRangeForDragFling(Lccsanandroid/view/View;)I

    move-result v5

    neg-int v9, v5

    const/4 v10, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v11, v1

    invoke-virtual/range {v6 .. v11}, Lccsancom/google/android/material/appbar/HeaderBehavior;->fling(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;IIF)Z

    .line 141
    .end local v1    # "yvel":F
    :cond_2
    :pswitch_4
    iput-boolean v4, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    .line 142
    iput v3, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->activePointerId:I

    .line 143
    iget-object v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    .line 144
    invoke-virtual {v1}, Lccsanandroid/view/VelocityTracker;->recycle()V

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    .line 150
    :cond_3
    :goto_1
    iget-object v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->velocityTracker:Lccsanandroid/view/VelocityTracker;

    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v1, p3}, Lccsanandroid/view/VelocityTracker;->addMovement(Lccsanandroid/view/MotionEvent;)V

    .line 154
    :cond_4
    iget-boolean v1, p0, Lccsancom/google/android/material/appbar/HeaderBehavior;->isBeingDragged:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final scroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;III)I
    .locals 7
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "dy"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 188
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p2, "header":Lccsanandroid/view/View;, "TV;"
    nop

    .line 191
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/HeaderBehavior;->getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int v4, v0, p3

    .line 188
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lccsancom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)I
    .locals 6
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    .line 158
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p2, "header":Lccsanandroid/view/View;, "TV;"
    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lccsancom/google/android/material/appbar/HeaderBehavior;->setHeaderTopBottomOffset(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;III)I

    move-result v0

    return v0
.end method

.method setHeaderTopBottomOffset(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;III)I
    .locals 2
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "newOffset"    # I
    .param p4, "minOffset"    # I
    .param p5, "maxOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 164
    .local p0, "this":Lccsancom/google/android/material/appbar/HeaderBehavior;, "Lccsancom/google/android/material/appbar/HeaderBehavior<TV;>;"
    .local p2, "header":Lccsanandroid/view/View;, "TV;"
    invoke-virtual {p0}, Lccsancom/google/android/material/appbar/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    .line 165
    .local v0, "curOffset":I
    const/4 v1, 0x0

    .line 167
    .local v1, "consumed":I
    if-eqz p4, :cond_0

    if-lt v0, p4, :cond_0

    if-gt v0, p5, :cond_0

    .line 170
    invoke-static {p3, p4, p5}, Lccsanandroidx/core/math/MathUtils;->clamp(III)I

    move-result p3

    .line 172
    if-eq v0, p3, :cond_0

    .line 173
    invoke-virtual {p0, p3}, Lccsancom/google/android/material/appbar/HeaderBehavior;->setTopAndBottomOffset(I)Z

    .line 175
    sub-int v1, v0, p3

    .line 179
    :cond_0
    return v1
.end method
