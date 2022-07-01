.class Lccsanandroidx/transition/Visibility$1;
.super Lccsanandroidx/transition/TransitionListenerAdapter;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/Visibility;->onDisappear(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;ILccsanandroidx/transition/TransitionValues;I)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/transition/Visibility;

.field final synthetic val$finalOverlayView:Lccsanandroid/view/View;

.field final synthetic val$overlayHost:Lccsanandroid/view/ViewGroup;

.field final synthetic val$startView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/Visibility;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/Visibility;

    .line 438
    iput-object p1, p0, Lccsanandroidx/transition/Visibility$1;->this$0:Lccsanandroidx/transition/Visibility;

    iput-object p2, p0, Lccsanandroidx/transition/Visibility$1;->val$overlayHost:Lccsanandroid/view/ViewGroup;

    iput-object p3, p0, Lccsanandroidx/transition/Visibility$1;->val$finalOverlayView:Lccsanandroid/view/View;

    iput-object p4, p0, Lccsanandroidx/transition/Visibility$1;->val$startView:Lccsanandroid/view/View;

    invoke-direct {p0}, Lccsanandroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 456
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$1;->val$startView:Lccsanandroid/view/View;

    sget v1, Lccsanandroidx/transition/R$id;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$1;->val$overlayHost:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/transition/ViewGroupUtils;->getOverlay(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/transition/Visibility$1;->val$finalOverlayView:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Lccsanandroidx/transition/ViewGroupOverlayImpl;->remove(Lccsanandroid/view/View;)V

    .line 458
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 459
    return-void
.end method

.method public onTransitionPause(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 442
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$1;->val$overlayHost:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/transition/ViewGroupUtils;->getOverlay(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/transition/Visibility$1;->val$finalOverlayView:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Lccsanandroidx/transition/ViewGroupOverlayImpl;->remove(Lccsanandroid/view/View;)V

    .line 443
    return-void
.end method

.method public onTransitionResume(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 447
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$1;->val$finalOverlayView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 448
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$1;->val$overlayHost:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/transition/ViewGroupUtils;->getOverlay(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/transition/Visibility$1;->val$finalOverlayView:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Lccsanandroidx/transition/ViewGroupOverlayImpl;->add(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v0, p0, Lccsanandroidx/transition/Visibility$1;->this$0:Lccsanandroidx/transition/Visibility;

    invoke-virtual {v0}, Lccsanandroidx/transition/Visibility;->cancel()V

    .line 452
    :goto_0
    return-void
.end method
