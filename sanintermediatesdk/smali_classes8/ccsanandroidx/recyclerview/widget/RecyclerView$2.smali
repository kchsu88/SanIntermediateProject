.class Lccsanandroidx/recyclerview/widget/RecyclerView$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 588
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 591
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerView;->mItemAnimator:Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 594
    :cond_0
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsanandroidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 595
    return-void
.end method
