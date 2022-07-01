.class Lccsanandroidx/viewpager2/widget/ViewPager2$3;
.super Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2;->initialize(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/widget/ViewPager2;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/viewpager2/widget/ViewPager2;

    .line 230
    iput-object p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$3;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Lccsanandroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .line 233
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$3;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->clearFocus()V

    .line 234
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$3;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$3;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->requestFocus(I)Z

    .line 237
    :cond_0
    return-void
.end method
