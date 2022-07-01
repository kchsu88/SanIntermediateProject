.class public Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final INVALID_SPAN_ID:I = -0x1


# instance fields
.field mSpanIndex:I

.field mSpanSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1384
    invoke-direct {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1385
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Lccsanandroid/content/Context;
    .param p2, "attrs"    # Lccsanandroid/util/AttributeSet;

    .line 1380
    invoke-direct {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1381
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$LayoutParams;

    .line 1392
    invoke-direct {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1393
    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroid/view/ViewGroup$MarginLayoutParams;

    .line 1388
    invoke-direct {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Lccsanandroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1389
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 1396
    invoke-direct {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    .line 1375
    const/4 v0, -0x1

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1377
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 1397
    return-void
.end method


# virtual methods
.method public getSpanIndex()I
    .locals 1

    .line 1414
    iget v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    return v0
.end method

.method public getSpanSize()I
    .locals 1

    .line 1424
    iget v0, p0, Lccsanandroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    return v0
.end method
