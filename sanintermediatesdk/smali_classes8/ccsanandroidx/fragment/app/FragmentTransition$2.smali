.class final Lccsanandroidx/fragment/app/FragmentTransition$2;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentTransition;->scheduleTargetChange(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/ViewGroup;Lccsanandroidx/fragment/app/Fragment;Lccsanandroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Lccsanandroidx/fragment/app/Fragment;

.field final synthetic val$nonExistentView:Lccsanandroid/view/View;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/View;Lccsanandroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Lccsanandroid/view/View;

    iput-object p4, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$inFragment:Lccsanandroidx/fragment/app/Fragment;

    iput-object p5, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    iput-object p7, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iput-object p8, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 397
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 398
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Lccsanandroid/view/View;

    invoke-virtual {v1, v0, v2}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->removeTarget(Ljava/lang/Object;Lccsanandroid/view/View;)V

    .line 400
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$enterTransition:Ljava/lang/Object;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$inFragment:Lccsanandroidx/fragment/app/Fragment;

    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Lccsanandroid/view/View;

    invoke-static {v0, v1, v2, v3, v4}, Lccsanandroidx/fragment/app/FragmentTransition;->configureEnteringExitingViews(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Ljava/lang/Object;Lccsanandroidx/fragment/app/Fragment;Ljava/util/ArrayList;Lccsanandroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 402
    .local v0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 405
    .end local v0    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    :cond_0
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v0, "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$exitTransition:Ljava/lang/Object;

    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3, v0}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 412
    .end local v0    # "tempExiting":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    :cond_1
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 413
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$exitingViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$2;->val$nonExistentView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_2
    return-void
.end method
