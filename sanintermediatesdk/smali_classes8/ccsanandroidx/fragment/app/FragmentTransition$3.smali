.class final Lccsanandroidx/fragment/app/FragmentTransition$3;
.super Ljava/lang/Object;
.source "FragmentTransition.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/fragment/app/FragmentTransition;->configureSharedElementsReordered(Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroidx/collection/ArrayMap;Lccsanandroidx/fragment/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$epicenter:Lccsanandroid/graphics/Rect;

.field final synthetic val$epicenterView:Lccsanandroid/view/View;

.field final synthetic val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

.field final synthetic val$inFragment:Lccsanandroidx/fragment/app/Fragment;

.field final synthetic val$inIsPop:Z

.field final synthetic val$inSharedElements:Lccsanandroidx/collection/ArrayMap;

.field final synthetic val$outFragment:Lccsanandroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;ZLccsanandroidx/collection/ArrayMap;Lccsanandroid/view/View;Lccsanandroidx/fragment/app/FragmentTransitionImpl;Lccsanandroid/graphics/Rect;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$inFragment:Lccsanandroidx/fragment/app/Fragment;

    iput-object p2, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$outFragment:Lccsanandroidx/fragment/app/Fragment;

    iput-boolean p3, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$inIsPop:Z

    iput-object p4, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$inSharedElements:Lccsanandroidx/collection/ArrayMap;

    iput-object p5, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$epicenterView:Lccsanandroid/view/View;

    iput-object p6, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iput-object p7, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$epicenter:Lccsanandroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 627
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$inFragment:Lccsanandroidx/fragment/app/Fragment;

    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$outFragment:Lccsanandroidx/fragment/app/Fragment;

    iget-boolean v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$inIsPop:Z

    iget-object v3, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$inSharedElements:Lccsanandroidx/collection/ArrayMap;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lccsanandroidx/fragment/app/FragmentTransition;->callSharedElementStartEnd(Lccsanandroidx/fragment/app/Fragment;Lccsanandroidx/fragment/app/Fragment;ZLccsanandroidx/collection/ArrayMap;Z)V

    .line 629
    iget-object v0, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$epicenterView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 630
    iget-object v1, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$impl:Lccsanandroidx/fragment/app/FragmentTransitionImpl;

    iget-object v2, p0, Lccsanandroidx/fragment/app/FragmentTransition$3;->val$epicenter:Lccsanandroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lccsanandroidx/fragment/app/FragmentTransitionImpl;->getBoundsOnScreen(Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;)V

    .line 632
    :cond_0
    return-void
.end method
