.class Lccsanandroidx/recyclerview/widget/PagerSnapHelper$1;
.super Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;
.source "PagerSnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/PagerSnapHelper;->createSnapScroller(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/PagerSnapHelper;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/PagerSnapHelper;Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/PagerSnapHelper;
    .param p2, "context"    # Lccsanandroid/content/Context;

    .line 172
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/PagerSnapHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {p0, p2}, Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Lccsanandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Lccsanandroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Lccsanandroid/util/DisplayMetrics;

    .line 187
    iget v0, p1, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 2
    .param p1, "dx"    # I

    .line 192
    invoke-super {p0, p1}, Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method protected onTargetFound(Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView$State;Lccsanandroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 5
    .param p1, "targetView"    # Lccsanandroid/view/View;
    .param p2, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "action"    # Lccsanandroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .line 175
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/PagerSnapHelper$1;->this$0:Lccsanandroidx/recyclerview/widget/PagerSnapHelper;

    iget-object v1, v0, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;->calculateDistanceToFinalSnap(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lccsanandroid/view/View;)[I

    move-result-object v0

    .line 177
    .local v0, "snapDistances":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 178
    .local v1, "dx":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 179
    .local v2, "dy":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper$1;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 180
    .local v3, "time":I
    if-lez v3, :cond_0

    .line 181
    iget-object v4, p0, Lccsanandroidx/recyclerview/widget/PagerSnapHelper$1;->mDecelerateInterpolator:Lccsanandroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v2, v3, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILccsanandroid/view/animation/Interpolator;)V

    .line 183
    :cond_0
    return-void
.end method
