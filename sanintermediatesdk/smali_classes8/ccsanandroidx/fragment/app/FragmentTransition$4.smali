.class final Lccsanandroidx/fragment/app/FragmentTransition$4;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentTransition;->configureSharedElementsOrdered(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$finalSharedElementTransition:Ljava/lang/Object;

.field final synthetic val$fragments:Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

.field final synthetic val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inEpicenter:Lccsanandroid/graphics/Rect;

.field final synthetic val$inFragment:Lccsanandroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$nameOverrides:Lccsanandroidx/collection/ArrayMap;

.field final synthetic val$nonExistentView:Lccsanandroid/view/View;

.field final synthetic val$outFragment:Lccsanandroidx/fragment/app/Fragment;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;

.field final synthetic val$sharedElementsOut:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/collection/ArrayMap;Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Lccsanandroid/view/View;Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Lccsanandroid/graphics/Rect;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$nameOverrides:Lccsanandroidx/collection/ArrayMap;

    iput-object p3, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iput-object p4, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$fragments:Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iput-object p5, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iput-object p6, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Lccsanandroid/view/View;

    iput-object p7, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$inFragment:Lccsanandroidx/fragment/app/Fragment;

    iput-object p8, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$outFragment:Lccsanandroidx/fragment/app/Fragment;

    iput-boolean p9, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    iput-object p10, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iput-object p11, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iput-object p12, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$inEpicenter:Lccsanandroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 739
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$nameOverrides:Lccsanandroidx/collection/ArrayMap;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$fragments:Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/fragment/app/FragmentTransition;->captureInSharedElements(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroidx/collection/ArrayMap;Ljava/lang/Object;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;)Lccsanandroidx/collection/ArrayMap;

    move-result-object v0

    .line 742
    .local v0, "inSharedElements":Lccsanandroidx/collection/ArrayMap;, "Lccsanandroidx/collection/ArrayMap<Ljava/lang/String;Lccsanandroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 743
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lccsanandroidx/collection/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 744
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$nonExistentView:Lccsanandroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    :cond_0
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$inFragment:Lccsanandroidx/fragment/app/Fragment;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$outFragment:Lccsanandroidx/fragment/app/Fragment;

    iget-boolean v3, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lccsanandroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;ZLccsanandroidx/collection/ArrayMap;Z)V

    .line 749
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$finalSharedElementTransition:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 750
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$sharedElementsOut:Ljava/util/ArrayList;

    iget-object v4, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3, v4}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 754
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$fragments:Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$enterTransition:Ljava/lang/Object;

    iget-boolean v3, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$inIsPop:Z

    invoke-static {v0, v1, v2, v3}, Lccsanandroidx/fragment/app/FragmentTransition;->getInEpicenterView(Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Lccsanandroid/view/View;

    move-result-object v1

    .line 756
    .local v1, "inEpicenterView":Lccsanandroid/view/View;
    if-eqz v1, :cond_1

    .line 757
    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentTransition$4;->val$inEpicenter:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 761
    .end local v1    # "inEpicenterView":Lccsanandroid/view/View;
    :cond_1
    return-void
.end method
