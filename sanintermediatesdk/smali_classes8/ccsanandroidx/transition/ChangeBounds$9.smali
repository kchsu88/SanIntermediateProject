.class Lccsanandroidx/transition/ChangeBounds$9;
.super Lccsanandroidx/transition/TransitionListenerAdapter;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/transition/ChangeBounds;->createAnimator(Lccsanandroid/view/ViewGroup;Lccsanandroidx/transition/TransitionValues;Lccsanandroidx/transition/TransitionValues;)Lccsanandroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Lccsanandroidx/transition/ChangeBounds;

.field final synthetic val$parent:Lccsanandroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lccsanandroidx/transition/ChangeBounds;Lccsanandroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/transition/ChangeBounds;

    .line 394
    iput-object p1, p0, Lccsanandroidx/transition/ChangeBounds$9;->this$0:Lccsanandroidx/transition/ChangeBounds;

    iput-object p2, p0, Lccsanandroidx/transition/ChangeBounds$9;->val$parent:Lccsanandroid/view/ViewGroup;

    invoke-direct {p0}, Lccsanandroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 395
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsanandroidx/transition/ChangeBounds$9;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 399
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$9;->val$parent:Lccsanandroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewGroupUtils;->suppressLayout(Lccsanandroid/view/ViewGroup;Z)V

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/ChangeBounds$9;->mCanceled:Z

    .line 401
    return-void
.end method

.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 405
    iget-boolean v0, p0, Lccsanandroidx/transition/ChangeBounds$9;->mCanceled:Z

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$9;->val$parent:Lccsanandroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewGroupUtils;->suppressLayout(Lccsanandroid/view/ViewGroup;Z)V

    .line 408
    :cond_0
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 409
    return-void
.end method

.method public onTransitionPause(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 413
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$9;->val$parent:Lccsanandroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewGroupUtils;->suppressLayout(Lccsanandroid/view/ViewGroup;Z)V

    .line 414
    return-void
.end method

.method public onTransitionResume(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 418
    iget-object v0, p0, Lccsanandroidx/transition/ChangeBounds$9;->val$parent:Lccsanandroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewGroupUtils;->suppressLayout(Lccsanandroid/view/ViewGroup;Z)V

    .line 419
    return-void
.end method
