.class Lccsancom/google/android/material/transition/MaterialContainerTransform$1;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"

# interfaces
.implements Lccsanandroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/MaterialContainerTransform;->createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transition/MaterialContainerTransform;

.field final synthetic val$transitionDrawable:Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transition/MaterialContainerTransform;Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transition/MaterialContainerTransform;

    .line 943
    iput-object p1, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$1;->this$0:Lccsancom/google/android/material/transition/MaterialContainerTransform;

    iput-object p2, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$1;->val$transitionDrawable:Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lccsanandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/ValueAnimator;

    .line 946
    iget-object v0, p0, Lccsancom/google/android/material/transition/MaterialContainerTransform$1;->val$transitionDrawable:Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;

    invoke-virtual {p1}, Lccsanandroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;->access$200(Lccsancom/google/android/material/transition/MaterialContainerTransform$TransitionDrawable;F)V

    .line 947
    return-void
.end method
