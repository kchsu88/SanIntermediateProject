.class Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/FastScroller;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/FastScroller;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 549
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 552
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 573
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 557
    iget-boolean v0, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 558
    iput-boolean v1, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->mCanceled:Z

    .line 559
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/FastScroller;->mShowHideAnimator:Lccsanandroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lccsanandroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    iput v1, v0, Lccsanandroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 563
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/FastScroller;->setState(I)V

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    const/4 v1, 0x2

    iput v1, v0, Lccsanandroidx/recyclerview/widget/FastScroller;->mAnimationState:I

    .line 566
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/FastScroller$AnimatorListener;->this$0:Lccsanandroidx/recyclerview/widget/FastScroller;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/FastScroller;->requestRedraw()V

    .line 568
    :goto_0
    return-void
.end method
