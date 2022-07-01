.class public Lccsancom/google/android/material/behavior/SwipeDismissBehavior;
.super Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/behavior/SwipeDismissBehavior$SettleRunnable;,
        Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lccsanandroid/view/View;",
        ">",
        "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA_END_DISTANCE:F = 0.5f

.field private static final DEFAULT_ALPHA_START_DISTANCE:F = 0.0f

.field private static final DEFAULT_DRAG_DISMISS_THRESHOLD:F = 0.5f

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field public static final SWIPE_DIRECTION_ANY:I = 0x2

.field public static final SWIPE_DIRECTION_END_TO_START:I = 0x1

.field public static final SWIPE_DIRECTION_START_TO_END:I


# instance fields
.field alphaEndSwipeDistance:F

.field alphaStartSwipeDistance:F

.field private final dragCallback:Lccsanandroidx/customview/widget/ViewDragHelper$Callback;

.field dragDismissThreshold:F

.field private interceptingEvents:Z

.field listener:Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

.field private sensitivity:F

.field private sensitivitySet:Z

.field swipeDirection:I

.field viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    invoke-direct {p0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    .line 92
    const/4 v1, 0x2

    iput v1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 93
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 94
    iput v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 95
    iput v1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 231
    new-instance v0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$1;-><init>(Lccsancom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Lccsanandroidx/customview/widget/ViewDragHelper$Callback;

    return-void
.end method

.method static clamp(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .line 439
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static clamp(III)I
    .locals 1
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .line 443
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private ensureViewDragHelper(Lccsanandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 379
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    if-nez v0, :cond_1

    .line 380
    iget-boolean v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->sensitivitySet:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    iget-object v1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Lccsanandroidx/customview/widget/ViewDragHelper$Callback;

    .line 382
    invoke-static {p1, v0, v1}, Lccsanandroidx/customview/widget/ViewDragHelper;->create(Lccsanandroid/view/ViewGroup;FLccsanandroidx/customview/widget/ViewDragHelper$Callback;)Lccsanandroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->dragCallback:Lccsanandroidx/customview/widget/ViewDragHelper$Callback;

    .line 383
    invoke-static {p1, v0}, Lccsanandroidx/customview/widget/ViewDragHelper;->create(Lccsanandroid/view/ViewGroup;Lccsanandroidx/customview/widget/ViewDragHelper$Callback;)Lccsanandroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    .line 385
    :cond_1
    return-void
.end method

.method static fraction(FFF)F
    .locals 2
    .param p0, "startValue"    # F
    .param p1, "endValue"    # F
    .param p2, "value"    # F

    .line 458
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method private updateAccessibilityActions(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 409
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    const/high16 v0, 0x100000

    invoke-static {p1, v0}, Lccsanandroidx/core/view/ViewCompat;->removeAccessibilityAction(Lccsanandroid/view/View;I)V

    .line 410
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->canSwipeDismissView(Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_DISMISS:Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const/4 v1, 0x0

    new-instance v2, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;

    invoke-direct {v2, p0}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior$2;-><init>(Lccsancom/google/android/material/behavior/SwipeDismissBehavior;)V

    invoke-static {p1, v0, v1, v2}, Lccsanandroidx/core/view/ViewCompat;->replaceAccessibilityAction(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;Ljava/lang/CharSequence;Lccsanandroidx/core/view/accessibility/AccessibilityViewCommand;)V

    .line 436
    :cond_0
    return-void
.end method


# virtual methods
.method public canSwipeDismissView(Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 228
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getDragState()I
    .locals 1

    .line 453
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getListener()Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;
    .locals 1

    .line 123
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    iget-object v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    return-object v0
.end method

.method public onInterceptTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 190
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    iget-boolean v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    .line 192
    .local v0, "dispatchEventToHelper":Z
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 201
    :pswitch_1
    iput-boolean v2, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    goto :goto_0

    .line 194
    :pswitch_2
    nop

    .line 195
    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, p2, v1, v3}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;->isPointInChildBounds(Lccsanandroid/view/View;II)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    .line 196
    iget-boolean v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->interceptingEvents:Z

    .line 197
    nop

    .line 205
    :goto_0
    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0, p1}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->ensureViewDragHelper(Lccsanandroid/view/ViewGroup;)V

    .line 207
    iget-object v1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1, p3}, Lccsanandroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 209
    :cond_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z
    .locals 2
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 178
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z

    move-result v0

    .line 179
    .local v0, "handled":Z
    invoke-static {p2}, Lccsanandroidx/core/view/ViewCompat;->getImportantForAccessibility(Lccsanandroid/view/View;)I

    move-result v1

    if-nez v1, :cond_0

    .line 181
    const/4 v1, 0x1

    invoke-static {p2, v1}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 182
    invoke-direct {p0, p2}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->updateAccessibilityActions(Lccsanandroid/view/View;)V

    .line 184
    :cond_0
    return v0
.end method

.method public onTouchEvent(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "event"    # Lccsanandroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Lccsanandroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 214
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    iget-object v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->viewDragHelper:Lccsanandroidx/customview/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p3}, Lccsanandroidx/customview/widget/ViewDragHelper;->processTouchEvent(Lccsanandroid/view/MotionEvent;)V

    .line 216
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDragDismissDistance(F)V
    .locals 2
    .param p1, "distance"    # F

    .line 142
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->dragDismissThreshold:F

    .line 143
    return-void
.end method

.method public setEndAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .line 160
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    .line 161
    return-void
.end method

.method public setListener(Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 117
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    iput-object p1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->listener:Lccsancom/google/android/material/behavior/SwipeDismissBehavior$OnDismissListener;

    .line 118
    return-void
.end method

.method public setSensitivity(F)V
    .locals 1
    .param p1, "sensitivity"    # F

    .line 171
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->sensitivity:F

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->sensitivitySet:Z

    .line 173
    return-void
.end method

.method public setStartAlphaSwipeDistance(F)V
    .locals 2
    .param p1, "fraction"    # F

    .line 151
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    .line 152
    return-void
.end method

.method public setSwipeDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .line 133
    .local p0, "this":Lccsancom/google/android/material/behavior/SwipeDismissBehavior;, "Lccsancom/google/android/material/behavior/SwipeDismissBehavior<TV;>;"
    iput p1, p0, Lccsancom/google/android/material/behavior/SwipeDismissBehavior;->swipeDirection:I

    .line 134
    return-void
.end method
