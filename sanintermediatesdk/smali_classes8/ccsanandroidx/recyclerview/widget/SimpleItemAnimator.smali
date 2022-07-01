.class public abstract Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 8
    .param p1, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 114
    if-eqz p2, :cond_1

    iget v0, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1

    .line 120
    :cond_0
    iget v4, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v6, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v7, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->animateAdd(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public abstract animateChange(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 11
    .param p1, "oldHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "preInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "postInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 151
    iget v7, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 152
    .local v7, "fromLeft":I
    iget v8, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 154
    .local v8, "fromTop":I
    invoke-virtual {p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget v0, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 156
    .local v0, "toLeft":I
    iget v1, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v9, v0

    move v10, v1

    .local v1, "toTop":I
    goto :goto_0

    .line 158
    .end local v0    # "toLeft":I
    .end local v1    # "toTop":I
    :cond_0
    iget v0, p4, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 159
    .restart local v0    # "toLeft":I
    iget v1, p4, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v9, v0

    move v10, v1

    .line 161
    .end local v0    # "toLeft":I
    .local v9, "toLeft":I
    .local v10, "toTop":I
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, v7

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->animateChange(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public animateDisappearance(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 11
    .param p1, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 90
    iget v6, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 91
    .local v6, "oldLeft":I
    iget v7, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 92
    .local v7, "oldTop":I
    iget-object v8, p1, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Lccsanandroid/view/View;

    .line 93
    .local v8, "disappearingItemView":Lccsanandroid/view/View;
    if-nez p3, :cond_0

    invoke-virtual {v8}, Lccsanandroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    :goto_0
    move v9, v0

    .line 94
    .local v9, "newLeft":I
    if-nez p3, :cond_1

    invoke-virtual {v8}, Lccsanandroid/view/View;->getTop()I

    move-result v0

    goto :goto_1

    :cond_1
    iget v0, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_1
    move v10, v0

    .line 95
    .local v10, "newTop":I
    invoke-virtual {p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v6, v9, :cond_2

    if-eq v7, v10, :cond_3

    .line 96
    :cond_2
    nop

    .line 97
    invoke-virtual {v8}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v9

    .line 98
    invoke-virtual {v8}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v10

    .line 96
    invoke-virtual {v8, v9, v10, v0, v1}, Lccsanandroid/view/View;->layout(IIII)V

    .line 102
    move-object v0, p0

    move-object v1, p1

    move v2, v6

    move v3, v7

    move v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->animateRemove(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public abstract animateMove(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7
    .param p1, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postInfo"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 133
    iget v0, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 142
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_1
    :goto_0
    iget v3, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v4, p2, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v5, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v6, p3, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->animateMove(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public abstract animateRemove(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "viewHolder"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 84
    iget-boolean v0, p0, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final dispatchAddFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 301
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->onAddFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 302
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 303
    return-void
.end method

.method public final dispatchAddStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 344
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->onAddStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 345
    return-void
.end method

.method public final dispatchChangeFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 316
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->onChangeFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 317
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 318
    return-void
.end method

.method public final dispatchChangeStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 357
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->onChangeStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 358
    return-void
.end method

.method public final dispatchMoveFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 291
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->onMoveFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 292
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 293
    return-void
.end method

.method public final dispatchMoveStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 335
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->onMoveStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 336
    return-void
.end method

.method public final dispatchRemoveFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 276
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->onRemoveFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 277
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAnimationFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 278
    return-void
.end method

.method public final dispatchRemoveStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 326
    invoke-virtual {p0, p1}, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->onRemoveStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 327
    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public onAddFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 404
    return-void
.end method

.method public onAddStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 393
    return-void
.end method

.method public onChangeFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 454
    return-void
.end method

.method public onChangeStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "oldItem"    # Z

    .line 441
    return-void
.end method

.method public onMoveFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 427
    return-void
.end method

.method public onMoveStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 416
    return-void
.end method

.method public onRemoveFinished(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 381
    return-void
.end method

.method public onRemoveStarting(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 370
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0
    .param p1, "supportsChangeAnimations"    # Z

    .line 71
    iput-boolean p1, p0, Lccsanandroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    .line 72
    return-void
.end method