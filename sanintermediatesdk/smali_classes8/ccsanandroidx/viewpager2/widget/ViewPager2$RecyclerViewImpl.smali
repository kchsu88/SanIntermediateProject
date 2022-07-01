.class Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;
.super Lccsanandroidx/recyclerview/widget/RecyclerView;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;


# direct methods
.method constructor <init>(Lccsanandroidx/viewpager2/widget/ViewPager2;Lccsanandroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Lccsanandroid/content/Context;

    .line 967
    iput-object p1, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    .line 968
    invoke-direct {p0, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView;-><init>(Lccsanandroid/content/Context;)V

    .line 969
    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 974
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->handlesRvGetAccessibilityClassName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onRvGetAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 977
    :cond_0
    invoke-super {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 982
    invoke-super {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 983
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    iget v0, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 984
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    iget v0, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mCurrentItem:I

    invoke-virtual {p1, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 985
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    iget-object v0, v0, Lccsanandroidx/viewpager2/widget/ViewPager2;->mAccessibilityProvider:Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;

    invoke-virtual {v0, p1}, Lccsanandroidx/viewpager2/widget/ViewPager2$AccessibilityProvider;->onRvInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 986
    return-void
.end method

.method public onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Lccsanandroid/view/MotionEvent;

    .line 996
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 991
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/ViewPager2$RecyclerViewImpl;->this$0:Lccsanandroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Lccsanandroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
