.class public abstract Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ItemDecoration"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Lccsanandroid/graphics/Rect;ILccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1, "outRect"    # Lccsanandroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10757
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 10758
    return-void
.end method

.method public getItemOffsets(Lccsanandroid/graphics/Rect;Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1
    .param p1, "outRect"    # Lccsanandroid/graphics/Rect;
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;

    .line 10782
    invoke-virtual {p2}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0, p3}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Lccsanandroid/graphics/Rect;ILccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 10784
    return-void
.end method

.method public onDraw(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "c"    # Lccsanandroid/graphics/Canvas;
    .param p2, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10725
    return-void
.end method

.method public onDraw(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Lccsanandroid/graphics/Canvas;
    .param p2, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;

    .line 10716
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 10717
    return-void
.end method

.method public onDrawOver(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1, "c"    # Lccsanandroid/graphics/Canvas;
    .param p2, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10747
    return-void
.end method

.method public onDrawOver(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Lccsanandroid/graphics/Canvas;
    .param p2, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;

    .line 10738
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Lccsanandroid/graphics/Canvas;Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 10739
    return-void
.end method
