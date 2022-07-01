.class Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;
.super Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->select(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

.field final synthetic val$prevSelected:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/ItemTouchHelper;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/ItemTouchHelper;
    .param p2, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "animationType"    # I
    .param p4, "actionState"    # I
    .param p5, "startDx"    # F
    .param p6, "startDy"    # F
    .param p7, "targetX"    # F
    .param p8, "targetY"    # F

    .line 635
    move-object v8, p0

    move-object v9, p1

    iput-object v9, v8, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    move/from16 v0, p9

    iput v0, v8, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    move-object/from16 v0, p10

    iput-object v0, v8, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;-><init>(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lccsanandroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Lccsanandroid/animation/Animator;

    .line 638
    invoke-super {p0, p1}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Lccsanandroid/animation/Animator;)V

    .line 639
    iget-boolean v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->mOverridden:Z

    if-eqz v0, :cond_0

    .line 640
    return-void

    .line 642
    :cond_0
    iget v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz v0, :cond_1

    .line 644
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Lccsanandroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->mIsPendingCleanup:Z

    .line 650
    iget v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    if-lez v0, :cond_2

    .line 653
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v1, p0, v0}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->postDispatchSwipe(Lccsanandroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V

    .line 657
    :cond_2
    :goto_0
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Lccsanandroid/view/View;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    if-ne v0, v1, :cond_3

    .line 658
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Lccsanandroid/view/View;)V

    .line 660
    :cond_3
    return-void
.end method
