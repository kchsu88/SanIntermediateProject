.class Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;
.super Lccsancom/google/android/material/transition/platform/TransitionListenerAdapter;
.source "MaterialContainerTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;->createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroid/transition/TransitionValues;Lccsanandroid/transition/TransitionValues;)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

.field final synthetic val$drawingView:Lccsanandroid/view/View;

.field final synthetic val$endView:Lccsanandroid/view/View;

.field final synthetic val$startView:Lccsanandroid/view/View;

.field final synthetic val$transitionDrawable:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;Lccsanandroid/view/View;Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

    .line 956
    iput-object p1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

    iput-object p2, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$drawingView:Lccsanandroid/view/View;

    iput-object p3, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$transitionDrawable:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    iput-object p4, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$startView:Lccsanandroid/view/View;

    iput-object p5, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$endView:Lccsanandroid/view/View;

    invoke-direct {p0}, Lccsancom/google/android/material/transition/platform/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 969
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

    invoke-virtual {v0, p0}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;->removeListener(Lccsanandroid/transition/Transition$TransitionListener;)Lccsanandroid/transition/Transition;

    .line 970
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->this$0:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;

    invoke-static {v0}, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;->access$300(Lccsancom/google/android/material/transition/platform/MaterialContainerTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    return-void

    .line 975
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$startView:Lccsanandroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 976
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$endView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 979
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$drawingView:Lccsanandroid/view/View;

    invoke-static {v0}, Lccsancom/google/android/material/internal/ViewUtils;->getOverlay(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$transitionDrawable:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    invoke-interface {v0, v1}, Lccsancom/google/android/material/internal/ViewOverlayImpl;->remove(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 980
    return-void
.end method

.method public onTransitionStart(Lccsanandroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroid/transition/Transition;

    .line 960
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$drawingView:Lccsanandroid/view/View;

    invoke-static {v0}, Lccsancom/google/android/material/internal/ViewUtils;->getOverlay(Lccsanandroid/view/View;)Lccsancom/google/android/material/internal/ViewOverlayImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$transitionDrawable:Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    invoke-interface {v0, v1}, Lccsancom/google/android/material/internal/ViewOverlayImpl;->add(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 963
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$startView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 964
    iget-object v0, p0, Lccsancom/google/android/material/transition/platform/MaterialContainerTransform$2;->val$endView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 965
    return-void
.end method
