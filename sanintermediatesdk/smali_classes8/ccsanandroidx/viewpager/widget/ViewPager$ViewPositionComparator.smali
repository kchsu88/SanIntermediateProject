.class Lccsanandroidx/viewpager/widget/ViewPager$ViewPositionComparator;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewPositionComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lccsanandroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lccsanandroid/view/View;Lccsanandroid/view/View;)I
    .locals 4
    .param p1, "lhs"    # Lccsanandroid/view/View;
    .param p2, "rhs"    # Lccsanandroid/view/View;

    .line 3160
    invoke-virtual {p1}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lccsanandroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 3161
    .local v0, "llp":Lccsanandroidx/viewpager/widget/ViewPager$LayoutParams;
    invoke-virtual {p2}, Lccsanandroid/view/View;->getLayoutParams()Lccsanandroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lccsanandroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 3162
    .local v1, "rlp":Lccsanandroidx/viewpager/widget/ViewPager$LayoutParams;
    iget-boolean v2, v0, Lccsanandroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    iget-boolean v3, v1, Lccsanandroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eq v2, v3, :cond_1

    .line 3163
    iget-boolean v2, v0, Lccsanandroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 3165
    :cond_1
    iget v2, v0, Lccsanandroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    iget v3, v1, Lccsanandroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    sub-int/2addr v2, v3

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 3157
    check-cast p1, Lccsanandroid/view/View;

    check-cast p2, Lccsanandroid/view/View;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/viewpager/widget/ViewPager$ViewPositionComparator;->compare(Lccsanandroid/view/View;Lccsanandroid/view/View;)I

    move-result p1

    return p1
.end method
