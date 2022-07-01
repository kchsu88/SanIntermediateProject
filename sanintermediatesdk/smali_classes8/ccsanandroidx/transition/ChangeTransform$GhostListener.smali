.class Lccsanandroidx/transition/ChangeTransform$GhostListener;
.super Lccsanandroidx/transition/TransitionListenerAdapter;
.source "ChangeTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GhostListener"
.end annotation


# instance fields
.field private mGhostView:Lccsanandroidx/transition/GhostView;

.field private mView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;Lccsanandroidx/transition/GhostView;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "ghostView"    # Lccsanandroidx/transition/GhostView;

    .line 521
    invoke-direct {p0}, Lccsanandroidx/transition/TransitionListenerAdapter;-><init>()V

    .line 522
    iput-object p1, p0, Lccsanandroidx/transition/ChangeTransform$GhostListener;->mView:Lccsanandroid/view/View;

    .line 523
    iput-object p2, p0, Lccsanandroidx/transition/ChangeTransform$GhostListener;->mGhostView:Lccsanandroidx/transition/GhostView;

    .line 524
    return-void
.end method


# virtual methods
.method public onTransitionEnd(Lccsanandroidx/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 528
    invoke-virtual {p1, p0}, Lccsanandroidx/transition/Transition;->removeListener(Lccsanandroidx/transition/Transition$TransitionListener;)Lccsanandroidx/transition/Transition;

    .line 529
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$GhostListener;->mView:Lccsanandroid/view/View;

    invoke-static {v0}, Lccsanandroidx/transition/GhostViewUtils;->removeGhost(Lccsanandroid/view/View;)V

    .line 530
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$GhostListener;->mView:Lccsanandroid/view/View;

    sget v1, Lccsanandroidx/transition/R$id;->transition_transform:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 531
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$GhostListener;->mView:Lccsanandroid/view/View;

    sget v1, Lccsanandroidx/transition/R$id;->parent_matrix:I

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 532
    return-void
.end method

.method public onTransitionPause(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 536
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$GhostListener;->mGhostView:Lccsanandroidx/transition/GhostView;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lccsanandroidx/transition/GhostView;->setVisibility(I)V

    .line 537
    return-void
.end method

.method public onTransitionResume(Lccsanandroidx/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Lccsanandroidx/transition/Transition;

    .line 541
    iget-object v0, p0, Lccsanandroidx/transition/ChangeTransform$GhostListener;->mGhostView:Lccsanandroidx/transition/GhostView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsanandroidx/transition/GhostView;->setVisibility(I)V

    .line 542
    return-void
.end method
