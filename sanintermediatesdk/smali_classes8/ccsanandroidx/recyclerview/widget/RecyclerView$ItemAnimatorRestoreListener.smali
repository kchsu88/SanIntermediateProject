.class Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 12686
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12687
    return-void
.end method


# virtual methods
.method public onAnimationFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12691
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 12692
    iget-object v0, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_0

    .line 12693
    iput-object v1, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12697
    :cond_0
    iput-object v1, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12698
    invoke-virtual {p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12699
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->removeAnimatingView(Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12700
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Lccsanandroid/view/View;Z)V

    .line 12703
    :cond_1
    return-void
.end method
