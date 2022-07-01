.class Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;
.super Lccsanandroidx/recyclerview/widget/LinearLayoutManager;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LinearLayoutManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/widget/ViewPager2;Lccsanandroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Lccsanandroid/content/Context;

    .line 1001
    iput-object p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    .line 1002
    invoke-direct {p0, p2}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;-><init>(Lccsanandroid/content/Context;)V

    .line 1003
    return-void
.end method


# virtual methods
.method protected calculateExtraLayoutSpace(Lccsanandroidx/recyclerview/widget/RecyclerView$State;[I)V
    .locals 3
    .param p1, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;
    .param p2, "extraLayoutSpace"    # [I

    .line 1024
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getOffscreenPageLimit()I

    move-result v0

    .line 1025
    .local v0, "pageLimit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1027
    invoke-super {p0, p1, p2}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;->calculateExtraLayoutSpace(Lccsanandroidx/recyclerview/widget/RecyclerView$State;[I)V

    .line 1028
    return-void

    .line 1030
    :cond_0
    iget-object v1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Lccsanandroidx/viewpager2/widget/ViewPager2;->getPageSize()I

    move-result v1

    mul-int v1, v1, v0

    .line 1031
    .local v1, "offscreenSpace":I
    const/4 v2, 0x0

    aput v1, p2, v2

    .line 1032
    const/4 v2, 0x1

    aput v1, p2, v2

    .line 1033
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;Lccsanandroidx/recyclerview/widget/RecyclerView$State;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "recycler"    # Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1017
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfo(Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;Lccsanandroidx/recyclerview/widget/RecyclerView$State;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1018
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p3}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onLmInitializeAccessibilityNodeInfo(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1019
    return-void
.end method

.method public performAccessibilityAction(Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;Lccsanandroidx/recyclerview/widget/RecyclerView$State;ILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "recycler"    # Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;
    .param p2, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "action"    # I
    .param p4, "args"    # Lccsanandroid/os/Bundle;

    .line 1008
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p3}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesLmPerformAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$LinearLayoutManagerImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p3}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onLmPerformAccessibilityAction(I)Z

    move-result v0

    return v0

    .line 1011
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;->performAccessibilityAction(Lccsanandroidx/recyclerview/widget/RecyclerView$Recycler;Lccsanandroidx/recyclerview/widget/RecyclerView$State;ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public requestChildRectangleOnScreen(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroid/view/View;Lccsanandroid/graphics/Rect;ZZ)Z
    .locals 1
    .param p1, "parent"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "rect"    # Lccsanandroid/graphics/Rect;
    .param p4, "immediate"    # Z
    .param p5, "focusedChildVisible"    # Z

    .line 1039
    const/4 v0, 0x0

    return v0
.end method
