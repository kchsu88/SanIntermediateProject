.class Lccsanandroidx/viewpager/widget/PagerTabStrip$1;
.super Ljava/lang/Object;
.source "PagerTabStrip.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/viewpager/widget/PagerTabStrip;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager/widget/PagerTabStrip;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager/widget/PagerTabStrip;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/viewpager/widget/PagerTabStrip;

    .line 110
    iput-object p1, p0, Lccsanandroidx/viewpager/widget/PagerTabStrip$1;->this$0:Lccsanandroidx/viewpager/widget/PagerTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 113
    iget-object v0, p0, Lccsanandroidx/viewpager/widget/PagerTabStrip$1;->this$0:Lccsanandroidx/viewpager/widget/PagerTabStrip;

    iget-object v0, v0, Lccsanandroidx/viewpager/widget/PagerTabStrip;->mPager:Lccsanandroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lccsanandroidx/viewpager/widget/PagerTabStrip$1;->this$0:Lccsanandroidx/viewpager/widget/PagerTabStrip;

    iget-object v1, v1, Lccsanandroidx/viewpager/widget/PagerTabStrip;->mPager:Lccsanandroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Lccsanandroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 114
    return-void
.end method
