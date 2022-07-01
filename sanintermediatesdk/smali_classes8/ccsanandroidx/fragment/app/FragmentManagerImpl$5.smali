.class Lccsanandroidx/fragment/app/FragmentManagerImpl$5;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Lccsanandroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

.field final synthetic val$animatingView:Lccsanandroid/view/View;

.field final synthetic val$container:Lccsanandroid/view/ViewGroup;

.field final synthetic val$fragment:Lccsanandroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/FragmentManagerImpl;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 1177
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$5;->this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$5;->val$container:Lccsanandroid/view/ViewGroup;

    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$5;->val$animatingView:Lccsanandroid/view/View;

    iput-object p4, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$5;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 1180
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$5;->val$container:Lccsanandroid/view/ViewGroup;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$5;->val$animatingView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->endViewTransition(Lccsanandroid/view/View;)V

    .line 1181
    invoke-virtual {p1, p0}, Lccsanandroid/animation/Animator;->removeListener(Lccsanandroid/animation/Animator$AnimatorListener;)V

    .line 1182
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$5;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$5;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Lccsanandroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_0

    .line 1183
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$5;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    iget-object v0, v0, Lccsanandroidx/fragment/app/Fragment;->mView:Lccsanandroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 1185
    :cond_0
    return-void
.end method
