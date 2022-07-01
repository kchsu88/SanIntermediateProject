.class Lccsanandroidx/recyclerview/widget/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    .line 257
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 260
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mSelected:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 265
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Lccsanandroidx/core/view/ViewCompat;->postOnAnimation(Lccsanandroid/view/View;Ljava/lang/Runnable;)V

    .line 267
    :cond_1
    return-void
.end method
