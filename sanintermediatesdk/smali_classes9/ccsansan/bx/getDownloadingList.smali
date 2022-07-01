.class public Lccsansan/bx/getDownloadingList;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# instance fields
.field private IncentiveDownloadUtils:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lccsansan/bx/getDownloadingList;->IncentiveDownloadUtils:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Lccsanandroid/graphics/Rect;Lccsanandroid/view/View;Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    const/4 p4, 0x0

    iput p4, p1, Lccsanandroid/graphics/Rect;->left:I

    .line 2
    iget v0, p0, Lccsansan/bx/getDownloadingList;->IncentiveDownloadUtils:I

    iput v0, p1, Lccsanandroid/graphics/Rect;->right:I

    .line 3
    iput v0, p1, Lccsanandroid/graphics/Rect;->top:I

    .line 4
    iput v0, p1, Lccsanandroid/graphics/Rect;->bottom:I

    .line 7
    invoke-virtual {p3, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Lccsanandroid/view/View;)I

    move-result p2

    if-nez p2, :cond_0

    .line 9
    iput p4, p1, Lccsanandroid/graphics/Rect;->left:I

    :cond_0
    return-void
.end method
