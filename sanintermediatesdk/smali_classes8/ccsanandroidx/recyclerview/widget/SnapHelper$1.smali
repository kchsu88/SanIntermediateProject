.class Lccsanandroidx/recyclerview/widget/SnapHelper$1;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/SnapHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/SnapHelper;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/SnapHelper;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/SnapHelper;

    .line 43
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/SnapHelper;

    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lccsanandroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "newState"    # I

    .line 48
    invoke-super {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lccsanandroidx/recyclerview/widget/RecyclerView;I)V

    .line 49
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    .line 51
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/SnapHelper;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/SnapHelper;->snapToTargetExistingView()V

    .line 53
    :cond_0
    return-void
.end method

.method public onScrolled(Lccsanandroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .line 57
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$1;->mScrolled:Z

    .line 60
    :cond_1
    return-void
.end method
