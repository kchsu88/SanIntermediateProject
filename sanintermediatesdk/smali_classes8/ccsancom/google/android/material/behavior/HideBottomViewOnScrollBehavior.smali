.class public Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
.super Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
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
.field protected static final ENTER_ANIMATION_DURATION:I = 0xe1

.field protected static final EXIT_ANIMATION_DURATION:I = 0xaf

.field private static final STATE_SCROLLED_DOWN:I = 0x1

.field private static final STATE_SCROLLED_UP:I = 0x2


# instance fields
.field private additionalHiddenOffsetY:I

.field private currentAnimator:Lccsanandroid/view/ViewPropertyAnimator;

.field private currentState:I

.field private height:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 48
    const/4 v1, 0x2

    iput v1, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 49
    iput v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 52
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 55
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    invoke-direct {p0, p1, p2}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 48
    const/4 v1, 0x2

    iput v1, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 49
    iput v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 56
    return-void
.end method

.method static synthetic access$002(Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Lccsanandroid/view/ViewPropertyAnimator;)Lccsanandroid/view/ViewPropertyAnimator;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;
    .param p1, "x1"    # Lccsanandroid/view/ViewPropertyAnimator;

    .line 39
    iput-object p1, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Lccsanandroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method private animateChildTo(Lccsanandroid/view/View;IJLccsanandroid/animation/TimeInterpolator;)V
    .locals 2
    .param p2, "targetY"    # I
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Lccsanandroid/animation/TimeInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;IJ",
            "Lccsanandroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Lccsanandroid/view/View;, "TV;"
    nop

    .line 153
    invoke-virtual {p1}, Lccsanandroid/view/View;->animate()Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, p2

    .line 154
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->translationY(F)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p5}, Lccsanandroid/view/ViewPropertyAnimator;->setInterpolator(Lccsanandroid/animation/TimeInterpolator;)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p3, p4}, Lccsanandroid/view/ViewPropertyAnimator;->setDuration(J)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;-><init>(Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V

    .line 157
    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Lccsanandroid/view/ViewPropertyAnimator;

    .line 164
    return-void
.end method


# virtual methods
.method public onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 61
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    nop

    .line 62
    invoke-virtual {p2}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 63
    .local v0, "paramsCompat":Lccsanandroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p2}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Lccsanandroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    .line 64
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;I)Z

    move-result v1

    return v1
.end method

.method public onNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;IIIII[I)V
    .locals 0
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

    .line 103
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    if-lez p5, :cond_0

    .line 104
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideDown(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 105
    :cond_0
    if-gez p5, :cond_1

    .line 106
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->slideUp(Lccsanandroid/view/View;)V

    .line 108
    :cond_1
    :goto_0
    return-void
.end method

.method public onStartNestedScroll(Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;Lccsanandroid/view/View;Lccsanandroid/view/View;Lccsanandroid/view/View;II)Z
    .locals 1
    .param p1, "coordinatorLayout"    # Lccsanandroidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Lccsanandroid/view/View;
    .param p4, "target"    # Lccsanandroid/view/View;
    .param p5, "nestedScrollAxes"    # I
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

    .line 89
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p2, "child":Lccsanandroid/view/View;, "TV;"
    const/4 v0, 0x2

    if-ne p5, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAdditionalHiddenOffsetY(Lccsanandroid/view/View;I)V
    .locals 2
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Lccsanandroid/view/View;, "TV;"
    iput p2, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    .line 76
    iget v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 77
    iget v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    add-int/2addr v0, p2

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 79
    :cond_0
    return-void
.end method

.method public slideDown(Lccsanandroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Lccsanandroid/view/View;, "TV;"
    iget v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Lccsanandroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->cancel()V

    .line 139
    invoke-virtual {p1}, Lccsanandroid/view/View;->clearAnimation()V

    .line 141
    :cond_1
    iput v1, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 142
    iget v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->height:I

    iget v1, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->additionalHiddenOffsetY:I

    add-int v4, v0, v1

    const-wide/16 v5, 0xaf

    sget-object v7, Lccsancom/google/android/material/animation/AnimationUtils;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Lccsanandroid/view/View;IJLccsanandroid/animation/TimeInterpolator;)V

    .line 147
    return-void
.end method

.method public slideUp(Lccsanandroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior<TV;>;"
    .local p1, "child":Lccsanandroid/view/View;, "TV;"
    iget v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentAnimator:Lccsanandroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Lccsanandroid/view/ViewPropertyAnimator;->cancel()V

    .line 121
    invoke-virtual {p1}, Lccsanandroid/view/View;->clearAnimation()V

    .line 123
    :cond_1
    iput v1, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->currentState:I

    .line 124
    const/4 v4, 0x0

    const-wide/16 v5, 0xe1

    sget-object v7, Lccsancom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Lccsanandroid/animation/TimeInterpolator;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Lccsanandroid/view/View;IJLccsanandroid/animation/TimeInterpolator;)V

    .line 126
    return-void
.end method
