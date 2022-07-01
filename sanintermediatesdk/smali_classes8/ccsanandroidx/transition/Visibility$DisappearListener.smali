.class Lccsanandroidx/transition/Visibility$DisappearListener;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "Visibility.java"

# interfaces
.implements Lccsanandroidx/transition/Transition$TransitionListener;
.implements Lccsanandroidx/transition/AnimatorUtils$AnimatorPauseListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/Visibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisappearListener"
.end annotation


# instance fields
.field mCanceled:Z

.field private final mFinalVisibility:I

.field private mLayoutSuppressed:Z

.field private final mParent:Lccsanandroid/view/ViewGroup;

.field private final mSuppressLayout:Z

.field private final mView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;IZ)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "finalVisibility"    # I
    .param p3, "suppressLayout"    # Z

    .line 533
    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 534
    iput-object p1, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mView:Lccsanandroid/view/View;

    .line 535
    iput p2, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    .line 536
    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    iput-object v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mParent:Lccsanandroid/view/ViewGroup;

    .line 537
    iput-boolean p3, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    .line 539
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsanandroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 540
    return-void
.end method

.method private hideViewWhenNotCanceled()V
    .locals 2

    .line 604
    iget-boolean v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mView:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 607
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mParent:Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->invalidate()V

    .line 612
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 613
    return-void
.end method

.method private suppressLayout(Z)V
    .locals 1
    .param p1, "suppress"    # Z

    .line 616
    iget-boolean v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mSuppressLayout:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mParent:Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 617
    iput-boolean p1, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mLayoutSuppressed:Z

    .line 618
    invoke-static {v0, p1}, Lccsanandroidx/transition/ViewGroupUtils;->suppressLayout(Lccsanandroid/view/ViewGroup;Z)V

    .line 620
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 562
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    .line 563
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 575
    invoke-direct {p0}, Lccsanandroidx/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 576
    return-void
.end method

.method public onAnimationPause(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 546
    iget-boolean v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mView:Lccsanandroid/view/View;

    iget v1, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mFinalVisibility:I

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 549
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 567
    return-void
.end method

.method public onAnimationResume(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 555
    iget-boolean v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mCanceled:Z

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$DisappearListener;->mView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 558
    :cond_0
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 571
    return-void
.end method

.method public onTransitionCancel(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 591
    return-void
.end method

.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 585
    invoke-direct {p0}, Lccsanandroidx/transition/Visibility$DisappearListener;->hideViewWhenNotCanceled()V

    .line 586
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 587
    return-void
.end method

.method public onTransitionPause(Lccsanandroidx/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsanandroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 596
    return-void
.end method

.method public onTransitionResume(Lccsanandroidx/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 600
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsanandroidx/transition/Visibility$DisappearListener;->suppressLayout(Z)V

    .line 601
    return-void
.end method

.method public onTransitionStart(Lccsanandroidx/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 581
    return-void
.end method
