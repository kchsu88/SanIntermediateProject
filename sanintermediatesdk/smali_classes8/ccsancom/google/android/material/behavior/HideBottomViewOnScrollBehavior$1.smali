.class Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "HideBottomViewOnScrollBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->animateChildTo(Lccsanandroid/view/View;IJLccsanandroid/animation/TimeInterpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    .line 158
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;"
    iput-object p1, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;->this$0:Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 161
    .local p0, "this":Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;, "Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;"
    iget-object v0, p0, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior$1;->this$0:Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->access$002(Lccsancom/google/android/material/behavior/HideBottomViewOnScrollBehavior;Lccsanandroid/view/ViewPropertyAnimator;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 162
    return-void
.end method
