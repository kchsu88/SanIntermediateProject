.class final Lccsanandroidx/recyclerview/widget/OrientationHelper$1;
.super Lccsanandroidx/recyclerview/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/recyclerview/widget/OrientationHelper;->createHorizontalHelper(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroidx/recyclerview/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "layoutManager"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanandroidx/recyclerview/widget/OrientationHelper;-><init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;Lccsanandroidx/recyclerview/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 297
    nop

    .line 298
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 299
    .local v0, "params":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Lccsanandroid/view/View;)I

    move-result v1

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 281
    nop

    .line 282
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 283
    .local v0, "params":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Lccsanandroid/view/View;)I

    move-result v1

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 289
    nop

    .line 290
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 291
    .local v0, "params":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Lccsanandroid/view/View;)I

    move-result v1

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 304
    nop

    .line 305
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 306
    .local v0, "params":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Lccsanandroid/view/View;)I

    move-result v1

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .locals 1

    .line 266
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .line 261
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .line 334
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 339
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public getModeInOther()I
    .locals 1

    .line 344
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .line 276
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .line 323
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 324
    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 323
    return v0
.end method

.method public getTransformedEndWithDecoration(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 311
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mTmpRect:Lccsanandroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Lccsanandroid/view/View;ZLccsanandroid/graphics/Rect;)V

    .line 312
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mTmpRect:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->right:I

    return v0
.end method

.method public getTransformedStartWithDecoration(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 317
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mTmpRect:Lccsanandroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Lccsanandroid/view/View;ZLccsanandroid/graphics/Rect;)V

    .line 318
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mTmpRect:Lccsanandroid/graphics/Rect;

    iget v0, v0, Lccsanandroid/graphics/Rect;->left:I

    return v0
.end method

.method public offsetChild(Lccsanandroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "offset"    # I

    .line 329
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->offsetLeftAndRight(I)V

    .line 330
    return-void
.end method

.method public offsetChildren(I)V
    .locals 1
    .param p1, "amount"    # I

    .line 271
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/OrientationHelper$1;->mLayoutManager:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 272
    return-void
.end method
