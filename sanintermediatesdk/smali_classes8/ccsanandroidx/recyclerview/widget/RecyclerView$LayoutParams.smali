.class public Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
.super Lccsanandroid/view/ViewGroup$MarginLayoutParams;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field final mDecorInsets:Lccsanandroid/graphics/Rect;

.field mInsetsDirty:Z

.field mPendingInvalidate:Z

.field mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 11629
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 11617
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Lccsanandroid/graphics/Rect;

    .line 11618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11630
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 11625
    invoke-direct {p0, p1, p2}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 11617
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Lccsanandroid/graphics/Rect;

    .line 11618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11626
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 11637
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 11617
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Lccsanandroid/graphics/Rect;

    .line 11618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11638
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 11633
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11617
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Lccsanandroid/graphics/Rect;

    .line 11618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11634
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 11641
    invoke-direct {p0, p1}, Lccsanandroid/view/ViewGroup$MarginLayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 11617
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Lccsanandroid/graphics/Rect;

    .line 11618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 11622
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 11642
    return-void
.end method


# virtual methods
.method public getViewAdapterPosition()I
    .locals 1

    .line 11713
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    return v0
.end method

.method public getViewLayoutPosition()I
    .locals 1

    .line 11701
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    return v0
.end method

.method public getViewPosition()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11691
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v0

    return v0
.end method

.method public isItemChanged()Z
    .locals 1

    .line 11683
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    return v0
.end method

.method public isItemRemoved()Z
    .locals 1

    .line 11672
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    return v0
.end method

.method public isViewInvalid()Z
    .locals 1

    .line 11661
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    return v0
.end method

.method public viewNeedsUpdate()Z
    .locals 1

    .line 11651
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    return v0
.end method
