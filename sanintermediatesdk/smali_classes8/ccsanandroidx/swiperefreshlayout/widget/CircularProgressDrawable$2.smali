.class Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;
.super Ljava/lang/Object;
.source "CircularProgressDrawable.java"

# interfaces
.implements Lccsanandroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

.field final synthetic val$ring:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;


# direct methods
.method constructor <init>(Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 580
    iput-object p1, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iput-object p2, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 595
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 590
    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/animation/Animator;)V
    .locals 4
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 599
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-object v1, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->applyTransformation(FLccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;Z)V

    .line 600
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->storeOriginals()V

    .line 601
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->goToNextColor()V

    .line 602
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget-boolean v0, v0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mFinishing:Z

    .line 606
    invoke-virtual {p1}, Lccsanandroid/animation/Animator;->cancel()V

    .line 607
    const-wide/16 v2, 0x534

    invoke-virtual {p1, v2, v3}, Lccsanandroid/animation/Animator;->setDuration(J)Lccsanandroid/animation/Animator;

    .line 608
    invoke-virtual {p1}, Lccsanandroid/animation/Animator;->start()V

    .line 609
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->val$ring:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$Ring;->setShowArrow(Z)V

    goto :goto_0

    .line 611
    :cond_0
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    iget v1, v0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    add-float/2addr v1, v2

    iput v1, v0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    .line 613
    :goto_0
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 584
    iget-object v0, p0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable$2;->this$0:Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    const/4 v1, 0x0

    iput v1, v0, Lccsanandroidx/swiperefreshlayout/widget/CircularProgressDrawable;->mRotationCount:F

    .line 585
    return-void
.end method