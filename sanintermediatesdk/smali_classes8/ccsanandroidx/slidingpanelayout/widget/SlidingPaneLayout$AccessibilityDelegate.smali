.class Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final mTmpRect:Lccsanandroid/graphics/Rect;

.field final synthetic this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 1
    .param p1, "this$0"    # Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 1513
    iput-object p1, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 1514
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->mTmpRect:Lccsanandroid/graphics/Rect;

    return-void
.end method

.method private copyNodeInfoNoChildren(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "dest"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p2, "src"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1572
    iget-object v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->mTmpRect:Lccsanandroid/graphics/Rect;

    .line 1574
    .local v0, "rect":Lccsanandroid/graphics/Rect;
    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Lccsanandroid/graphics/Rect;)V

    .line 1575
    invoke-virtual {p1, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Lccsanandroid/graphics/Rect;)V

    .line 1577
    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Lccsanandroid/graphics/Rect;)V

    .line 1578
    invoke-virtual {p1, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Lccsanandroid/graphics/Rect;)V

    .line 1580
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 1581
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1582
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1583
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1585
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 1586
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 1587
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 1588
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 1589
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 1590
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    .line 1591
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    .line 1593
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1595
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getMovementGranularities()I

    move-result v1

    invoke-virtual {p1, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 1596
    return-void
.end method


# virtual methods
.method public filter(Lccsanandroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Lccsanandroid/view/View;

    .line 1562
    iget-object v0, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, p1}, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;->isDimmed(Lccsanandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 1547
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 1549
    const-class v0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1550
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1518
    invoke-static {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 1519
    .local v0, "superNode":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-super {p0, p1, v0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1520
    invoke-direct {p0, p2, v0}, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->copyNodeInfoNoChildren(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1521
    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 1523
    const-class v1, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1524
    invoke-virtual {p2, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Lccsanandroid/view/View;)V

    .line 1526
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getParentForAccessibility(Lccsanandroid/view/View;)Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 1527
    .local v1, "parent":Lccsanandroid/view/ViewParent;
    instance-of v2, v1, Lccsanandroid/view/View;

    if-eqz v2, :cond_0

    .line 1528
    move-object v2, v1

    check-cast v2, Lccsanandroid/view/View;

    invoke-virtual {p2, v2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Lccsanandroid/view/View;)V

    .line 1533
    :cond_0
    iget-object v2, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v2

    .line 1534
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1535
    iget-object v4, p0, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->this$0:Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v4, v3}, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Lccsanandroid/view/View;

    move-result-object v4

    .line 1536
    .local v4, "child":Lccsanandroid/view/View;
    invoke-virtual {p0, v4}, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->filter(Lccsanandroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lccsanandroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 1538
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 1540
    invoke-virtual {p2, v4}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Lccsanandroid/view/View;)V

    .line 1534
    .end local v4    # "child":Lccsanandroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1543
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/ViewGroup;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 1555
    invoke-virtual {p0, p2}, Lccsanandroidx/slidingpanelayout/widget/SlidingPaneLayout$AccessibilityDelegate;->filter(Lccsanandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1556
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 1558
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
