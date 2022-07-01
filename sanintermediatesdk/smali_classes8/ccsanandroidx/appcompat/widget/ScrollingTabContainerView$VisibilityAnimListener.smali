.class public Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    .line 572
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 600
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 591
    iget-boolean v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 593
    :cond_0
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mVisibilityAnim:Lccsanandroid/view/ViewPropertyAnimator;

    .line 594
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 595
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 585
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 586
    iput-boolean v1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 587
    return-void
.end method

.method public withFinalVisibility(Lccsanandroid/view/ViewPropertyAnimator;I)Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 1
    .param p1, "animation"    # Lccsanandroid/view/ViewPropertyAnimator;
    .param p2, "visibility"    # I

    .line 578
    iput p2, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 579
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iput-object p1, v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mVisibilityAnim:Lccsanandroid/view/ViewPropertyAnimator;

    .line 580
    return-object p0
.end method
