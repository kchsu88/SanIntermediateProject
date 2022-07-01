.class Lccsanandroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;
.super Lccsanandroidx/recyclerview/widget/PagerSnapHelper;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerSnapHelperImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    .line 1044
    iput-object p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    .line 1045
    return-void
.end method


# virtual methods
.method public findSnapView(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroid/view/View;
    .locals 1
    .param p1, "layoutManager"    # Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 1054
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$PagerSnapHelperImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;->findSnapView(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lccsanandroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method
