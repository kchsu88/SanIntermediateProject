.class Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->postDispatchSwipe(Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

.field final synthetic val$anim:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/ItemTouchHelper;Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    .line 700
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iput-object p2, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iput p3, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 703
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iget-boolean v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 705
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 706
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 710
    .local v0, "animator":Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    .line 711
    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v1

    if-nez v1, :cond_1

    .line 712
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->val$anim:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iget-object v2, v2, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v3, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->val$swipeDir:I

    invoke-virtual {v1, v2, v3}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSwiped(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 714
    :cond_1
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$4;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 717
    .end local v0    # "animator":Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    :cond_2
    :goto_0
    return-void
.end method
