.class Lccsanandroidx/transition/GhostViewPort;
.super Lccsanandroid/view/ViewGroup;
.source "GhostViewPort.java"

# interfaces
.implements Lccsanandroidx/transition/GhostView;


# instance fields
.field private mMatrix:Lccsanandroid/graphics/Matrix;

.field private final mOnPreDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

.field mReferences:I

.field mStartParent:Lccsanandroid/view/ViewGroup;

.field mStartView:Lccsanandroid/view/View;

.field final mView:Lccsanandroid/view/View;


# direct methods
.method constructor <init>(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 68
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroid/view/ViewGroup;-><init>(Lccsanandroid/content/Context;)V

    .line 51
    new-instance v0, Lccsanandroidx/transition/GhostViewPort$1;

    invoke-direct {v0, p0}, Lccsanandroidx/transition/GhostViewPort$1;-><init>(Lccsanandroidx/transition/GhostViewPort;)V

    iput-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mOnPreDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 69
    iput-object p1, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/GhostViewPort;->setWillNotDraw(Z)V

    .line 71
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/transition/GhostViewPort;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 72
    return-void
.end method

.method static addGhost(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;Lccsanandroid/graphics/Matrix;)Lccsanandroidx/transition/GhostViewPort;
    .locals 4
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p2, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 163
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 166
    invoke-static {p1}, Lccsanandroidx/transition/GhostViewHolder;->getHolder(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/GhostViewHolder;

    move-result-object v0

    .line 167
    .local v0, "holder":Lccsanandroidx/transition/GhostViewHolder;
    invoke-static {p0}, Lccsanandroidx/transition/GhostViewPort;->getGhostView(Lccsanandroid/view/View;)Lccsanandroidx/transition/GhostViewPort;

    move-result-object v1

    .line 168
    .local v1, "ghostView":Lccsanandroidx/transition/GhostViewPort;
    const/4 v2, 0x0

    .line 169
    .local v2, "previousRefCount":I
    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Lccsanandroidx/transition/GhostViewPort;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lccsanandroidx/transition/GhostViewHolder;

    .line 171
    .local v3, "oldHolder":Lccsanandroidx/transition/GhostViewHolder;
    if-eq v3, v0, :cond_0

    .line 172
    iget v2, v1, Lccsanandroidx/transition/GhostViewPort;->mReferences:I

    .line 173
    invoke-virtual {v3, v1}, Lccsanandroidx/transition/GhostViewHolder;->removeView(Lccsanandroid/view/View;)V

    .line 174
    const/4 v1, 0x0

    .line 177
    .end local v3    # "oldHolder":Lccsanandroidx/transition/GhostViewHolder;
    :cond_0
    if-nez v1, :cond_3

    .line 178
    if-nez p2, :cond_1

    .line 179
    new-instance v3, Lccsanandroid/graphics/Matrix;

    invoke-direct {v3}, Lccsanandroid/graphics/Matrix;-><init>()V

    move-object p2, v3

    .line 180
    invoke-static {p0, p1, p2}, Lccsanandroidx/transition/GhostViewPort;->calculateMatrix(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;Lccsanandroid/graphics/Matrix;)V

    .line 182
    :cond_1
    new-instance v3, Lccsanandroidx/transition/GhostViewPort;

    invoke-direct {v3, p0}, Lccsanandroidx/transition/GhostViewPort;-><init>(Lccsanandroid/view/View;)V

    move-object v1, v3

    .line 183
    invoke-virtual {v1, p2}, Lccsanandroidx/transition/GhostViewPort;->setMatrix(Lccsanandroid/graphics/Matrix;)V

    .line 184
    if-nez v0, :cond_2

    .line 185
    new-instance v3, Lccsanandroidx/transition/GhostViewHolder;

    invoke-direct {v3, p1}, Lccsanandroidx/transition/GhostViewHolder;-><init>(Lccsanandroid/view/ViewGroup;)V

    move-object v0, v3

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {v0}, Lccsanandroidx/transition/GhostViewHolder;->popToOverlayTop()V

    .line 189
    :goto_0
    invoke-static {p1, v0}, Lccsanandroidx/transition/GhostViewPort;->copySize(Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 190
    invoke-static {p1, v1}, Lccsanandroidx/transition/GhostViewPort;->copySize(Lccsanandroid/view/View;Lccsanandroid/view/View;)V

    .line 191
    invoke-virtual {v0, v1}, Lccsanandroidx/transition/GhostViewHolder;->addGhostView(Lccsanandroidx/transition/GhostViewPort;)V

    .line 192
    iput v2, v1, Lccsanandroidx/transition/GhostViewPort;->mReferences:I

    goto :goto_1

    .line 193
    :cond_3
    if-eqz p2, :cond_4

    .line 194
    invoke-virtual {v1, p2}, Lccsanandroidx/transition/GhostViewPort;->setMatrix(Lccsanandroid/graphics/Matrix;)V

    .line 196
    :cond_4
    :goto_1
    iget v3, v1, Lccsanandroidx/transition/GhostViewPort;->mReferences:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lccsanandroidx/transition/GhostViewPort;->mReferences:I

    .line 197
    return-object v1

    .line 164
    .end local v0    # "holder":Lccsanandroidx/transition/GhostViewHolder;
    .end local v1    # "ghostView":Lccsanandroidx/transition/GhostViewPort;
    .end local v2    # "previousRefCount":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static calculateMatrix(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup;Lccsanandroid/graphics/Matrix;)V
    .locals 3
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "host"    # Lccsanandroid/view/ViewGroup;
    .param p2, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 155
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 156
    .local v0, "parent":Lccsanandroid/view/ViewGroup;
    invoke-virtual {p2}, Lccsanandroid/graphics/Matrix;->reset()V

    .line 157
    invoke-static {v0, p2}, Lccsanandroidx/transition/ViewUtils;->transformMatrixToGlobal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 158
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Lccsanandroid/graphics/Matrix;->preTranslate(FF)Z

    .line 159
    invoke-static {p1, p2}, Lccsanandroidx/transition/ViewUtils;->transformMatrixToLocal(Lccsanandroid/view/View;Lccsanandroid/graphics/Matrix;)V

    .line 160
    return-void
.end method

.method static copySize(Lccsanandroid/view/View;Lccsanandroid/view/View;)V
    .locals 5
    .param p0, "from"    # Lccsanandroid/view/View;
    .param p1, "to"    # Lccsanandroid/view/View;

    .line 139
    nop

    .line 140
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLeft()I

    move-result v0

    .line 141
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v1

    .line 142
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 143
    invoke-virtual {p1}, Lccsanandroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 139
    invoke-static {p1, v0, v1, v2, v3}, Lccsanandroidx/transition/ViewUtils;->setLeftTopRightBottom(Lccsanandroid/view/View;IIII)V

    .line 144
    return-void
.end method

.method static getGhostView(Lccsanandroid/view/View;)Lccsanandroidx/transition/GhostViewPort;
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 147
    sget v0, Lccsanandroidx/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v0}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/GhostViewPort;

    return-object v0
.end method

.method static removeGhost(Lccsanandroid/view/View;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;

    .line 201
    invoke-static {p0}, Lccsanandroidx/transition/GhostViewPort;->getGhostView(Lccsanandroid/view/View;)Lccsanandroidx/transition/GhostViewPort;

    move-result-object v0

    .line 202
    .local v0, "ghostView":Lccsanandroidx/transition/GhostViewPort;
    if-eqz v0, :cond_0

    .line 203
    iget v1, v0, Lccsanandroidx/transition/GhostViewPort;->mReferences:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lccsanandroidx/transition/GhostViewPort;->mReferences:I

    .line 204
    if-gtz v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lccsanandroidx/transition/GhostViewPort;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lccsanandroidx/transition/GhostViewHolder;

    .line 206
    .local v1, "holder":Lccsanandroidx/transition/GhostViewHolder;
    invoke-virtual {v1, v0}, Lccsanandroidx/transition/GhostViewHolder;->removeView(Lccsanandroid/view/View;)V

    .line 209
    .end local v1    # "holder":Lccsanandroidx/transition/GhostViewHolder;
    :cond_0
    return-void
.end method

.method static setGhostView(Lccsanandroid/view/View;Lccsanandroidx/transition/GhostViewPort;)V
    .locals 1
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "ghostView"    # Lccsanandroidx/transition/GhostViewPort;

    .line 151
    sget v0, Lccsanandroidx/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v0, p1}, Lccsanandroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 100
    invoke-super {p0}, Lccsanandroid/view/ViewGroup;->onAttachedToWindow()V

    .line 101
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-static {v0, p0}, Lccsanandroidx/transition/GhostViewPort;->setGhostView(Lccsanandroid/view/View;Lccsanandroidx/transition/GhostViewPort;)V

    .line 103
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/transition/GhostViewPort;->mOnPreDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->addOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 105
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 106
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 109
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 113
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getViewTreeObserver()Lccsanandroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/transition/GhostViewPort;->mOnPreDrawListener:Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Lccsanandroid/view/ViewTreeObserver;->removeOnPreDrawListener(Lccsanandroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 114
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 115
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/transition/GhostViewPort;->setGhostView(Lccsanandroid/view/View;Lccsanandroidx/transition/GhostViewPort;)V

    .line 116
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 119
    :cond_0
    invoke-super {p0}, Lccsanandroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 120
    return-void
.end method

.method protected onDraw(Lccsanandroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Lccsanandroid/graphics/Canvas;

    .line 124
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsanandroidx/transition/CanvasUtils;->enableZ(Lccsanandroid/graphics/Canvas;Z)V

    .line 125
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mMatrix:Lccsanandroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Lccsanandroid/graphics/Canvas;->setMatrix(Lccsanandroid/graphics/Matrix;)V

    .line 130
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 131
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 132
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 134
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-virtual {p0}, Lccsanandroidx/transition/GhostViewPort;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lccsanandroidx/transition/GhostViewPort;->drawChild(Lccsanandroid/graphics/Canvas;Lccsanandroid/view/View;J)Z

    .line 135
    invoke-static {p1, v1}, Lccsanandroidx/transition/CanvasUtils;->enableZ(Lccsanandroid/graphics/Canvas;Z)V

    .line 136
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 86
    return-void
.end method

.method public reserveEndViewTransition(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;)V
    .locals 0
    .param p1, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p2, "view"    # Lccsanandroid/view/View;

    .line 94
    iput-object p1, p0, Lccsanandroidx/transition/GhostViewPort;->mStartParent:Lccsanandroid/view/ViewGroup;

    .line 95
    iput-object p2, p0, Lccsanandroidx/transition/GhostViewPort;->mStartView:Lccsanandroid/view/View;

    .line 96
    return-void
.end method

.method setMatrix(Lccsanandroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Lccsanandroid/graphics/Matrix;

    .line 89
    iput-object p1, p0, Lccsanandroidx/transition/GhostViewPort;->mMatrix:Lccsanandroid/graphics/Matrix;

    .line 90
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 76
    invoke-super {p0, p1}, Lccsanandroid/view/ViewGroup;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-static {v0}, Lccsanandroidx/transition/GhostViewPort;->getGhostView(Lccsanandroid/view/View;)Lccsanandroidx/transition/GhostViewPort;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 78
    if-nez p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    .local v0, "inverseVisibility":I
    :goto_0
    iget-object v1, p0, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-static {v1, v0}, Lccsanandroidx/transition/ViewUtils;->setTransitionVisibility(Lccsanandroid/view/View;I)V

    .line 81
    .end local v0    # "inverseVisibility":I
    :cond_1
    return-void
.end method
