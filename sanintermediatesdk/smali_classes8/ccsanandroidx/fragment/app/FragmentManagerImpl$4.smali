.class Lccsanandroidx/fragment/app/FragmentManagerImpl$4;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

.field final synthetic val$container:Lccsanandroid/view/ViewGroup;

.field final synthetic val$fragment:Lccsanandroidx/fragment/app/Fragment;

.field final synthetic val$viewToAnimate:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/FragmentManagerImpl;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 1114
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$container:Lccsanandroid/view/ViewGroup;

    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$viewToAnimate:Lccsanandroid/view/View;

    iput-object p4, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 8
    .param p1, "anim"    # Lccsanandroid/animation/Animator;

    .line 1117
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$container:Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$viewToAnimate:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->endViewTransition(Lccsanandroid/view/View;)V

    .line 1120
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Lccsanandroidx/fragment/app/Fragment;->getAnimator()Lccsanandroid/animation/Animator;

    move-result-object v0

    .line 1121
    .local v0, "animator":Lccsanandroid/animation/Animator;
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanandroidx/fragment/app/Fragment;->setAnimator(Lccsanandroid/animation/Animator;)V

    .line 1122
    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$container:Lccsanandroid/view/ViewGroup;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$viewToAnimate:Lccsanandroid/view/View;

    invoke-virtual {v1, v2}, Lccsanandroid/view/ViewGroup;->indexOfChild(Lccsanandroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    .line 1123
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$4;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-virtual {v3}, Lccsanandroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lccsanandroidx/fragment/app/FragmentManagerImpl;->moveToState(Lccsanandroidx/fragment/app/Fragment;IIIZ)V

    .line 1125
    :cond_0
    return-void
.end method
