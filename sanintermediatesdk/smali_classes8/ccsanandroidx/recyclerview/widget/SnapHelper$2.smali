.class Lccsanandroidx/recyclerview/widget/SnapHelper$2;
.super Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/SnapHelper;->createSnapScroller(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/SnapHelper;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/SnapHelper;Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/SnapHelper;
    .param p2, "context"    # Lccsanandroid/content/Context;

    .line 227
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$2;->this$0:Lccsanandroidx/recyclerview/widget/SnapHelper;

    invoke-direct {p0, p2}, Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Lccsanandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Lccsanandroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Lccsanandroid/util/DisplayMetrics;

    .line 246
    iget v0, p1, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected onTargetFound(Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView$State;Lccsanandroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 5
    .param p1, "targetView"    # Lccsanandroid/view/View;
    .param p2, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "action"    # Lccsanandroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .line 230
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$2;->this$0:Lccsanandroidx/recyclerview/widget/SnapHelper;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$2;->this$0:Lccsanandroidx/recyclerview/widget/SnapHelper;

    iget-object v1, v0, Lccsanandroidx/recyclerview/widget/SnapHelper;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsanandroidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lccsanandroid/view/View;)[I

    move-result-object v0

    .line 236
    .local v0, "snapDistances":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 237
    .local v1, "dx":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 238
    .local v2, "dy":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lccsanandroidx/recyclerview/widget/SnapHelper$2;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 239
    .local v3, "time":I
    if-lez v3, :cond_1

    .line 240
    iget-object v4, p0, Lccsanandroidx/recyclerview/widget/SnapHelper$2;->mDecelerateInterpolator:Lccsanandroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v2, v3, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILccsanandroid/view/animation/Interpolator;)V

    .line 242
    :cond_1
    return-void
.end method
