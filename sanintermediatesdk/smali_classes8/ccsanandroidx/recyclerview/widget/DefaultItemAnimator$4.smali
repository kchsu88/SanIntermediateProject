.class Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;
.super Lccsanandroid/animation/AnimatorListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic val$animation:Lccsanandroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroid/view/ViewPropertyAnimator;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    .line 203
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Lccsanandroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->val$view:Lccsanandroid/view/View;

    invoke-direct {p0}, Lccsanandroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 211
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->val$animation:Lccsanandroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewPropertyAnimator;->setListener(Lccsanandroid/animation/Animator$AnimatorListener;)Lccsanandroid/view/ViewPropertyAnimator;

    .line 212
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->val$view:Lccsanandroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setAlpha(F)V

    .line 213
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 214
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    .line 216
    return-void
.end method

.method public onAnimationStart(Lccsanandroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Lccsanandroid/animation/Animator;

    .line 206
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->this$0:Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator$4;->val$holder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 207
    return-void
.end method
