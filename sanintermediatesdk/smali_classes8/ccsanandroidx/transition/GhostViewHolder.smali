.class Lccsanandroidx/transition/GhostViewHolder;
.super Lccsanandroid/widget/FrameLayout;
.source "GhostViewHolder.java"


# instance fields
.field private mAttached:Z

.field private mParent:Lccsanandroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lccsanandroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 38
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroidx/transition/GhostViewHolder;->setClipChildren(Z)V

    .line 40
    iput-object p1, p0, Lccsanandroidx/transition/GhostViewHolder;->mParent:Lccsanandroid/view/ViewGroup;

    .line 41
    sget v0, Lccsanandroidx/transition/R$id;->ghost_view_holder:I

    invoke-virtual {p1, v0, p0}, Lccsanandroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewHolder;->mParent:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/transition/ViewGroupUtils;->getOverlay(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lccsanandroidx/transition/ViewGroupOverlayImpl;->add(Lccsanandroid/view/View;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/transition/GhostViewHolder;->mAttached:Z

    .line 44
    return-void
.end method

.method static getHolder(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/GhostViewHolder;
    .locals 1
    .param p0, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 69
    sget v0, Lccsanandroidx/transition/R$id;->ghost_view_holder:I

    invoke-virtual {p0, v0}, Lccsanandroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/transition/GhostViewHolder;

    return-object v0
.end method

.method private getInsertIndex(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)I"
        }
    .end annotation

    .line 105
    .local p1, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "tempParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    const/4 v1, 0x0

    .line 107
    .local v1, "low":I
    invoke-virtual {p0}, Lccsanandroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 109
    .local v2, "high":I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 110
    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 111
    .local v3, "mid":I
    invoke-virtual {p0, v3}, Lccsanandroidx/transition/GhostViewHolder;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v4

    check-cast v4, Lccsanandroidx/transition/GhostViewPort;

    .line 112
    .local v4, "midView":Lccsanandroidx/transition/GhostViewPort;
    iget-object v5, v4, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-static {v5, v0}, Lccsanandroidx/transition/GhostViewHolder;->getParents(Lccsanandroid/view/View;Ljava/util/ArrayList;)V

    .line 113
    invoke-static {p1, v0}, Lccsanandroidx/transition/GhostViewHolder;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    add-int/lit8 v1, v3, 0x1

    goto :goto_1

    .line 116
    :cond_0
    add-int/lit8 v2, v3, -0x1

    .line 118
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 119
    .end local v3    # "mid":I
    .end local v4    # "midView":Lccsanandroidx/transition/GhostViewPort;
    goto :goto_0

    .line 121
    :cond_1
    return v1
.end method

.method private static getParents(Lccsanandroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .param p0, "view"    # Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 157
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    instance-of v1, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 158
    move-object v1, v0

    check-cast v1, Lccsanandroid/view/View;

    invoke-static {v1, p1}, Lccsanandroidx/transition/GhostViewHolder;->getParents(Lccsanandroid/view/View;Ljava/util/ArrayList;)V

    .line 160
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method private static isOnTop(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z
    .locals 6
    .param p0, "view"    # Lccsanandroid/view/View;
    .param p1, "comparedWith"    # Lccsanandroid/view/View;

    .line 169
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    .line 171
    .local v0, "parent":Lccsanandroid/view/ViewGroup;
    invoke-virtual {v0}, Lccsanandroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 175
    .local v1, "childrenCount":I
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 176
    invoke-virtual {p0}, Lccsanandroid/view/View;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lccsanandroid/view/View;->getZ()F

    move-result v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 177
    invoke-virtual {p0}, Lccsanandroid/view/View;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lccsanandroid/view/View;->getZ()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 184
    :cond_1
    const/4 v2, 0x1

    .line 185
    .local v2, "isOnTop":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 186
    invoke-static {v0, v3}, Lccsanandroidx/transition/ViewGroupUtils;->getChildDrawingOrder(Lccsanandroid/view/ViewGroup;I)I

    move-result v4

    .line 187
    .local v4, "childIndex":I
    invoke-virtual {v0, v4}, Lccsanandroid/view/ViewGroup;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v5

    .line 188
    .local v5, "child":Lccsanandroid/view/View;
    if-ne v5, p0, :cond_2

    .line 189
    const/4 v2, 0x0

    .line 190
    goto :goto_2

    .line 191
    :cond_2
    if-ne v5, p1, :cond_3

    .line 192
    const/4 v2, 0x1

    .line 193
    goto :goto_2

    .line 185
    .end local v4    # "childIndex":I
    .end local v5    # "child":Lccsanandroid/view/View;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 197
    .end local v3    # "i":I
    :cond_4
    :goto_2
    return v2
.end method

.method private static isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lccsanandroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 132
    .local p0, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    .local p1, "comparedWith":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 133
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    goto :goto_2

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 138
    .local v2, "depth":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 139
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/view/View;

    .line 140
    .local v4, "viewParent":Lccsanandroid/view/View;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsanandroid/view/View;

    .line 142
    .local v5, "comparedWithParent":Lccsanandroid/view/View;
    if-eq v4, v5, :cond_1

    .line 144
    invoke-static {v4, v5}, Lccsanandroidx/transition/GhostViewHolder;->isOnTop(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z

    move-result v0

    return v0

    .line 138
    .end local v4    # "viewParent":Lccsanandroid/view/View;
    .end local v5    # "comparedWithParent":Lccsanandroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 149
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 135
    .end local v2    # "depth":I
    :cond_4
    :goto_2
    return v1
.end method


# virtual methods
.method addGhostView(Lccsanandroidx/transition/GhostViewPort;)V
    .locals 3
    .param p1, "ghostView"    # Lccsanandroidx/transition/GhostViewPort;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "viewParents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lccsanandroid/view/View;>;"
    iget-object v1, p1, Lccsanandroidx/transition/GhostViewPort;->mView:Lccsanandroid/view/View;

    invoke-static {v1, v0}, Lccsanandroidx/transition/GhostViewHolder;->getParents(Lccsanandroid/view/View;Ljava/util/ArrayList;)V

    .line 91
    invoke-direct {p0, v0}, Lccsanandroidx/transition/GhostViewHolder;->getInsertIndex(Ljava/util/ArrayList;)I

    move-result v1

    .line 92
    .local v1, "index":I
    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lccsanandroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0, p1, v1}, Lccsanandroidx/transition/GhostViewHolder;->addView(Lccsanandroid/view/View;I)V

    goto :goto_1

    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lccsanandroidx/transition/GhostViewHolder;->addView(Lccsanandroid/view/View;)V

    .line 97
    :goto_1
    return-void
.end method

.method public onViewAdded(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 48
    iget-boolean v0, p0, Lccsanandroidx/transition/GhostViewHolder;->mAttached:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onViewAdded(Lccsanandroid/view/View;)V

    .line 52
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GhostViewHolder is detached!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onViewRemoved(Lccsanandroid/view/View;)V
    .locals 4
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 56
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onViewRemoved(Lccsanandroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Lccsanandroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lccsanandroidx/transition/GhostViewHolder;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 61
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/transition/GhostViewHolder;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 62
    :cond_1
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewHolder;->mParent:Lccsanandroid/view/ViewGroup;

    sget v2, Lccsanandroidx/transition/R$id;->ghost_view_holder:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lccsanandroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewHolder;->mParent:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/transition/ViewGroupUtils;->getOverlay(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lccsanandroidx/transition/ViewGroupOverlayImpl;->remove(Lccsanandroid/view/View;)V

    .line 64
    iput-boolean v1, p0, Lccsanandroidx/transition/GhostViewHolder;->mAttached:Z

    .line 66
    :cond_2
    return-void
.end method

.method popToOverlayTop()V
    .locals 2

    .line 73
    iget-boolean v0, p0, Lccsanandroidx/transition/GhostViewHolder;->mAttached:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewHolder;->mParent:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/transition/ViewGroupUtils;->getOverlay(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lccsanandroidx/transition/ViewGroupOverlayImpl;->remove(Lccsanandroid/view/View;)V

    .line 79
    iget-object v0, p0, Lccsanandroidx/transition/GhostViewHolder;->mParent:Lccsanandroid/view/ViewGroup;

    invoke-static {v0}, Lccsanandroidx/transition/ViewGroupUtils;->getOverlay(Lccsanandroid/view/ViewGroup;)Lccsanandroidx/transition/ViewGroupOverlayImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lccsanandroidx/transition/ViewGroupOverlayImpl;->add(Lccsanandroid/view/View;)V

    .line 80
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This GhostViewHolder is detached!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
