.class Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$2;
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

    .line 7627
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Lccsanandroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .line 7630
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildEnd(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 7653
    nop

    .line 7654
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7655
    .local v0, "params":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Lccsanandroid/view/View;)I

    move-result v1

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getChildStart(Lccsanandroid/view/View;)I
    .locals 3
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 7646
    nop

    .line 7647
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 7648
    .local v0, "params":Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Lccsanandroid/view/View;)I

    move-result v1

    iget v2, v0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getParentEnd()I
    .locals 2

    .line 7640
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 7641
    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 7640
    return v0
.end method

.method public getParentStart()I
    .locals 1

    .line 7635
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager$2;->this$0:Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method
