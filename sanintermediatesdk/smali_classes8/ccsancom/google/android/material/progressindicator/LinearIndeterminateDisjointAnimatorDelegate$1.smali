.class Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "LinearIndeterminateDisjointAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    .line 101
    iput-object p1, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 111
    invoke-super {p0, p1}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Lccsanandroid/animation/Animator;)V

    .line 112
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-static {v0}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->access$300(Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-static {v0}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->access$400(Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)Lccsanandroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lccsanandroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 114
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->animatorCompleteCallback:Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iget-object v1, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    iget-object v1, v1, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->drawable:Lccsancom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0, v1}, Lccsanandroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->access$302(Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;Z)Z

    .line 117
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 104
    invoke-super {p0, p1}, Lccsanandroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Lccsanandroid/animation/Animator;)V

    .line 105
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-static {v0}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->access$000(Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-static {v3}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->access$100(Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;)Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object v3

    iget-object v3, v3, Lccsancom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v3, v3

    rem-int/2addr v1, v3

    invoke-static {v0, v1}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->access$002(Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;I)I

    .line 106
    iget-object v0, p0, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate$1;->this$0:Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;

    invoke-static {v0, v2}, Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;->access$202(Lccsancom/google/android/material/progressindicator/LinearIndeterminateDisjointAnimatorDelegate;Z)Z

    .line 107
    return-void
.end method
