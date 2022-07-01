.class Lccsanandroidx/fragment/app/FragmentManagerImpl$3;
.super Ljava/lang/Object;
.source "FragmentManagerImpl.java"

# interfaces
.implements Lccsanandroid/view/animation/Animation$AnimationListener;


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


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/FragmentManagerImpl;Lccsanandroid/view/ViewGroup;Lccsanandroidx/fragment/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/fragment/app/FragmentManagerImpl;

    .line 1084
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$3;->this$0:Lccsanandroidx/fragment/app/FragmentManagerImpl;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$3;->val$container:Lccsanandroid/view/ViewGroup;

    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$3;->val$fragment:Lccsanandroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 1094
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentManagerImpl$3;->val$container:Lccsanandroid/view/ViewGroup;

    new-instance v1, Lccsanandroidx/fragment/app/FragmentManagerImpl$3$1;

    invoke-direct {v1, p0}, Lccsanandroidx/fragment/app/FragmentManagerImpl$3$1;-><init>(Lccsanandroidx/fragment/app/FragmentManagerImpl$3;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 1104
    return-void
.end method

.method public onAnimationRepeat(Lccsanandroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 1108
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Lccsanandroid/view/animation/Animation;

    .line 1087
    return-void
.end method
