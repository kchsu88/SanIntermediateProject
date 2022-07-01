.class Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;
.super Lccsanandroid/widget/BaseAdapter;
.source "ScrollingTabContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;


# direct methods
.method constructor <init>(Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Lccsanandroid/widget/BaseAdapter;-><init>()V

    .line 528
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 532
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 537
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    iget-object v0, v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->mTabLayout:Lccsanandroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Lccsanandroidx/appcompat/widget/LinearLayoutCompat;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->getTab()Lccsanandroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 542
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Lccsanandroid/view/View;
    .param p3, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 547
    if-nez p2, :cond_0

    .line 548
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/appcompat/app/ActionBar$Tab;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView;->createTabView(Lccsanandroidx/appcompat/app/ActionBar$Tab;Z)Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    goto :goto_0

    .line 550
    :cond_0
    move-object v0, p2

    check-cast v0, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {v0, v1}, Lccsanandroidx/appcompat/widget/ScrollingTabContainerView$TabView;->bindTab(Lccsanandroidx/appcompat/app/ActionBar$Tab;)V

    .line 552
    :goto_0
    return-object p2
.end method
