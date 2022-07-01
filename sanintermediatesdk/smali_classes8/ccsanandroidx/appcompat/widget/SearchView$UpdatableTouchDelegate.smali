.class Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;
.super Lccsanandroid/view/TouchDelegate;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdatableTouchDelegate"
.end annotation


# instance fields
.field private final mActualBounds:Lccsanandroid/graphics/Rect;

.field private mDelegateTargeted:Z

.field private final mDelegateView:Lccsanandroid/view/View;

.field private final mSlop:I

.field private final mSlopBounds:Lccsanandroid/graphics/Rect;

.field private final mTargetBounds:Lccsanandroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "targetBounds"    # Lccsanandroid/graphics/Rect;
    .param p2, "actualBounds"    # Lccsanandroid/graphics/Rect;
    .param p3, "delegateView"    # Lccsanandroid/view/View;

    .line 1765
    invoke-direct {p0, p1, p3}, Lccsanandroid/view/TouchDelegate;-><init>(Lccsanandroid/graphics/Rect;Lccsanandroid/view/View;)V

    .line 1766
    invoke-virtual {p3}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/ViewConfiguration;->get(Lccsanandroid/content/Context;)Lccsanandroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    .line 1767
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Lccsanandroid/graphics/Rect;

    .line 1768
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Lccsanandroid/graphics/Rect;

    .line 1769
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Lccsanandroid/graphics/Rect;

    .line 1770
    invoke-virtual {p0, p1, p2}, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->setBounds(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V

    .line 1771
    iput-object p3, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Lccsanandroid/view/View;

    .line 1772
    return-void
.end method


# virtual methods
.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 1783
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1784
    .local v0, "x":I
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 1785
    .local v1, "y":I
    const/4 v2, 0x0

    .line 1786
    .local v2, "sendToDelegate":Z
    const/4 v3, 0x1

    .line 1787
    .local v3, "hit":Z
    const/4 v4, 0x0

    .line 1789
    .local v4, "handled":Z
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1806
    :pswitch_0
    iget-boolean v2, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1807
    const/4 v5, 0x0

    iput-boolean v5, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    goto :goto_0

    .line 1798
    :pswitch_1
    iget-boolean v2, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1799
    if-eqz v2, :cond_0

    .line 1800
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Lccsanandroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1801
    const/4 v3, 0x0

    goto :goto_0

    .line 1791
    :pswitch_2
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Lccsanandroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1792
    const/4 v5, 0x1

    iput-boolean v5, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateTargeted:Z

    .line 1793
    const/4 v2, 0x1

    .line 1810
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 1811
    if-eqz v3, :cond_1

    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v5, v0, v1}, Lccsanandroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1815
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Lccsanandroid/view/View;

    invoke-virtual {v5}, Lccsanandroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Lccsanandroid/view/View;

    .line 1816
    invoke-virtual {v6}, Lccsanandroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    .line 1815
    invoke-virtual {p1, v5, v6}, Lccsanandroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_1

    .line 1819
    :cond_1
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Lccsanandroid/graphics/Rect;

    iget v5, v5, Lccsanandroid/graphics/Rect;->left:I

    sub-int v5, v0, v5

    int-to-float v5, v5

    iget-object v6, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Lccsanandroid/graphics/Rect;

    iget v6, v6, Lccsanandroid/graphics/Rect;->top:I

    sub-int v6, v1, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Lccsanandroid/view/MotionEvent;->setLocation(FF)V

    .line 1822
    :goto_1
    iget-object v5, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mDelegateView:Lccsanandroid/view/View;

    invoke-virtual {v5, p1}, Lccsanandroid/view/View;->dispatchTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v4

    .line 1824
    :cond_2
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBounds(Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;)V
    .locals 3
    .param p1, "desiredBounds"    # Lccsanandroid/graphics/Rect;
    .param p2, "actualBounds"    # Lccsanandroid/graphics/Rect;

    .line 1775
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mTargetBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 1776
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 1777
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlopBounds:Lccsanandroid/graphics/Rect;

    iget v1, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mSlop:I

    neg-int v2, v1

    neg-int v1, v1

    invoke-virtual {v0, v2, v1}, Lccsanandroid/graphics/Rect;->inset(II)V

    .line 1778
    iget-object v0, p0, Lccsanandroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->mActualBounds:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, p2}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    .line 1779
    return-void
.end method
