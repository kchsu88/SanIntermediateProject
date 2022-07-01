.class Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$animation:Lccsanandroid/view/ViewPropertyAnimator;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;ILccsanandroid/view/View;ILccsanandroid/view/ViewPropertyAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    .line 292
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaX:I

    iput-object p4, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$view:Lccsanandroid/view/View;

    iput p5, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p6, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$animation:Lccsanandroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 300
    iget v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$view:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 303
    :cond_0
    iget v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$view:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 306
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 310
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$animation:Lccsanandroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 311
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 312
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 314
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 295
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$6;->val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->dispatchMoveStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 296
    return-void
.end method
