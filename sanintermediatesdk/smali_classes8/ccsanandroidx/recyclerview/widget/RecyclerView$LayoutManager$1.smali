.class Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lccsanandroidx/recyclerview/widget/ViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7591
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Lccsanandroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 7594
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildEnd(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 7616
    nop

    .line 7617
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7618
    .local v0, "params":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Lccsanandroid/view/View;)I

    move-result v1

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getChildStart(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 7609
    nop

    .line 7610
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7611
    .local v0, "params":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Lccsanandroid/view/View;)I

    move-result v1

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getParentEnd()I
    .locals 2

    .line 7604
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getParentStart()I
    .locals 1

    .line 7599
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$1;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method
