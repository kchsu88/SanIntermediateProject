.class Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->animateChangeImpl(Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$oldViewAnim:Lccsanandroid/view/ViewPropertyAnimator;

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Lccsanandroid/view/ViewPropertyAnimator;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    .line 358
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$changeInfo:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$oldViewAnim:Lccsanandroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$view:Lccsanandroid/view/View;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 366
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$oldViewAnim:Lccsanandroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 367
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$view:Lccsanandroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 368
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$view:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationX(F)V

    .line 369
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$view:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setTranslationY(F)V

    .line 370
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$changeInfo:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 371
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$changeInfo:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 373
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 361
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$7;->val$changeInfo:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->dispatchChangeStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 362
    return-void
.end method
