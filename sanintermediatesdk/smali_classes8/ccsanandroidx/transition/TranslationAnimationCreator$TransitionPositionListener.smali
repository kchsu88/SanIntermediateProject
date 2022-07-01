.class Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "TranslationAnimationCreator.java"

# interfaces
.implements Lccsanandroidx/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/TranslationAnimationCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransitionPositionListener"
.end annotation


# instance fields
.field private final mMovingView:Lccsanandroid/view/View;

.field private mPausedX:F

.field private mPausedY:F

.field private final mStartX:I

.field private final mStartY:I

.field private final mTerminalX:F

.field private final mTerminalY:F

.field private mTransitionPosition:[I

.field private final mViewInHierarchy:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;Lccsanandroid/view/View;IIFF)V
    .locals 2
    .param p1, "movingView"    # Lccsanandroid/view/View;
    .param p2, "viewInHierarchy"    # Lccsanandroid/view/View;
    .param p3, "startX"    # I
    .param p4, "startY"    # I
    .param p5, "terminalX"    # F
    .param p6, "terminalY"    # F

    .line 99
    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 100
    iput-object p1, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    .line 101
    iput-object p2, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Lccsanandroid/view/View;

    .line 102
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p3, v0

    iput v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    .line 103
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v0, p4, v0

    iput v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    .line 104
    iput p5, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    .line 105
    iput p6, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    .line 106
    sget v0, Lccsanandroidx/transition/R$id;->transition_position:I

    invoke-virtual {p2, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 107
    if-eqz v0, :cond_0

    .line 108
    sget v0, Lccsanandroidx/transition/R$id;->transition_position:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 114
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    .line 117
    :cond_0
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v1, 0x0

    iget v2, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartX:I

    int-to-float v2, v2

    iget-object v3, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    invoke-virtual {v3}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 118
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    const/4 v1, 0x1

    iget v2, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mStartY:I

    int-to-float v2, v2

    iget-object v3, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    invoke-virtual {v3}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    .line 119
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mViewInHierarchy:Lccsanandroid/view/View;

    sget v1, Lccsanandroidx/transition/R$id;->transition_position:I

    iget-object v2, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTransitionPosition:[I

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onAnimationPause(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 124
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    .line 125
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    .line 126
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 127
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 128
    return-void
.end method

.method public onAnimationResume(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 132
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedX:F

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 133
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mPausedY:F

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 134
    return-void
.end method

.method public onTransitionCancel(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 149
    return-void
.end method

.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 142
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalX:F

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 143
    iget-object v0, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mMovingView:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/TranslationAnimationCreator$TransitionPositionListener;->mTerminalY:F

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 144
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 145
    return-void
.end method

.method public onTransitionPause(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 153
    return-void
.end method

.method public onTransitionResume(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 157
    return-void
.end method

.method public onTransitionStart(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 138
    return-void
.end method
