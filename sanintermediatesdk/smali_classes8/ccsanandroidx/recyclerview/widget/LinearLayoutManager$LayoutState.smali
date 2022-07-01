.class Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCROLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LLM#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtraFillSpace:I

.field mInfinite:Z

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mNoRecycleSpace:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 2193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 2253
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mExtraFillSpace:I

    .line 2260
    iput v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mNoRecycleSpace:I

    .line 2267
    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 2279
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Lccsanandroid/view/View;
    .locals 6

    .line 2316
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2317
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2318
    iget-object v2, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    .line 2319
    .local v2, "view":Lccsanandroid/view/View;
    invoke-virtual {v2}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2320
    .local v3, "lp":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    invoke-virtual {v3}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2321
    goto :goto_1

    .line 2323
    :cond_0
    iget v4, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v3}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 2324
    invoke-virtual {p0, v2}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Lccsanandroid/view/View;)V

    .line 2325
    return-object v2

    .line 2317
    .end local v2    # "view":Lccsanandroid/view/View;
    .end local v3    # "lp":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2328
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 1

    .line 2332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList(Lccsanandroid/view/View;)V

    .line 2333
    return-void
.end method

.method public assignPositionFromScrapList(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "ignore"    # Lccsanandroid/view/View;

    .line 2336
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->nextViewInLimitedList(Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object v0

    .line 2337
    .local v0, "closest":Lccsanandroid/view/View;
    if-nez v0, :cond_0

    .line 2338
    const/4 v1, -0x1

    iput v1, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    goto :goto_0

    .line 2340
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2341
    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    iput v1, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 2343
    :goto_0
    return-void
.end method

.method hasMore(Lccsanandroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 2
    .param p1, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;

    .line 2290
    iget v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method log()V
    .locals 2

    .line 2375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LLM#LayoutState"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    return-void
.end method

.method next(Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "recycler"    # Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;

    .line 2300
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2301
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->nextViewFromScrapList()Lccsanandroid/view/View;

    move-result-object v0

    return-object v0

    .line 2303
    :cond_0
    iget v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-virtual {p1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Lccsanandroid/view/View;

    move-result-object v0

    .line 2304
    .local v0, "view":Lccsanandroid/view/View;
    iget v1, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v2, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 2305
    return-object v0
.end method

.method public nextViewInLimitedList(Lccsanandroid/view/View;)Lccsanandroid/view/View;
    .locals 8
    .param p1, "ignore"    # Lccsanandroid/view/View;

    .line 2346
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2347
    .local v0, "size":I
    const/4 v1, 0x0

    .line 2348
    .local v1, "closest":Lccsanandroid/view/View;
    const v2, 0x7fffffff

    .line 2352
    .local v2, "closestDistance":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 2353
    iget-object v4, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    .line 2354
    .local v4, "view":Lccsanandroid/view/View;
    invoke-virtual {v4}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 2355
    .local v5, "lp":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    if-eq v4, p1, :cond_2

    invoke-virtual {v5}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2356
    goto :goto_1

    .line 2358
    :cond_0
    invoke-virtual {v5}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v6

    iget v7, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    mul-int v6, v6, v7

    .line 2360
    .local v6, "distance":I
    if-gez v6, :cond_1

    .line 2361
    goto :goto_1

    .line 2363
    :cond_1
    if-ge v6, v2, :cond_2

    .line 2364
    move-object v1, v4

    .line 2365
    move v2, v6

    .line 2366
    if-nez v6, :cond_2

    .line 2367
    goto :goto_2

    .line 2352
    .end local v4    # "view":Lccsanandroid/view/View;
    .end local v5    # "lp":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v6    # "distance":I
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2371
    .end local v3    # "i":I
    :cond_3
    :goto_2
    return-object v1
.end method
