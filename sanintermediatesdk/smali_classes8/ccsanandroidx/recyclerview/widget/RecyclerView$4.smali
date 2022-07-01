.class Lccsanandroidx/recyclerview/widget/RecyclerView$4;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lccsanandroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 610
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAppeared(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "info"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 620
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/recyclerview/widget/RecyclerView;->animateAppearance(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 621
    return-void
.end method

.method public processDisappeared(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 614
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerView;->mRecycler:Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 615
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/recyclerview/widget/RecyclerView;->animateDisappearance(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 616
    return-void
.end method

.method public processPersistent(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 626
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 627
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p1, p2, p3}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;->animatePersistence(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 638
    :cond_1
    :goto_0
    return-void
.end method

.method public unused(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 641
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerView;->mLayout:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    iget-object v2, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$4;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v2, Lccsanandroidx/recyclerview/widget/RecyclerView;->mRecycler:Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 642
    return-void
.end method
