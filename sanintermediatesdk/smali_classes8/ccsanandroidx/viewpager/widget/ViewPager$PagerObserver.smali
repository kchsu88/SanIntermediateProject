.class Lccsanandroidx/viewpager/widget/ViewPager$PagerObserver;
.super Lccsanandroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 3092
    iput-object p1, p0, Lccsanandroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Lccsanandroid/database/DataSetObserver;-><init>()V

    .line 3093
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3097
    iget-object v0, p0, Lccsanandroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Lccsanandroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 3098
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3101
    iget-object v0, p0, Lccsanandroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Lccsanandroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 3102
    return-void
.end method
