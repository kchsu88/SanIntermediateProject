.class public abstract Lccsanandroidx/customview/widget/ExploreByTouchHelper;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Lccsanandroid/graphics/Rect;

.field private static final NODE_ADAPTER:Lccsanandroidx/customview/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/customview/widget/FocusStrategy$BoundsAdapter<",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Lccsanandroidx/customview/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/customview/widget/FocusStrategy$CollectionAdapter<",
            "Lccsanandroidx/collection/SparseArrayCompat<",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Lccsanandroid/view/View;

.field private mHoveredVirtualViewId:I

.field mKeyboardFocusedVirtualViewId:I

.field private final mManager:Lccsanandroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Lccsanandroid/graphics/Rect;

.field private final mTempScreenRect:Lccsanandroid/graphics/Rect;

.field private final mTempVisibleRect:Lccsanandroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 100
    new-instance v0, Lccsanandroid/graphics/Rect;

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    invoke-direct {v0, v1, v1, v2, v2}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Lccsanandroid/graphics/Rect;

    .line 335
    new-instance v0, Lccsanandroidx/customview/widget/ExploreByTouchHelper$1;

    invoke-direct {v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper$1;-><init>()V

    sput-object v0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Lccsanandroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 347
    new-instance v0, Lccsanandroidx/customview/widget/ExploreByTouchHelper$2;

    invoke-direct {v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper$2;-><init>()V

    sput-object v0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Lccsanandroidx/customview/widget/FocusStrategy$CollectionAdapter;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "host"    # Lccsanandroid/view/View;

    .line 135
    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 104
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Lccsanandroid/graphics/Rect;

    .line 105
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Lccsanandroid/graphics/Rect;

    .line 106
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Lccsanandroid/graphics/Rect;

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 119
    const/high16 v0, -0x80000000

    iput v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 123
    iput v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 127
    iput v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 136
    if-eqz p1, :cond_1

    .line 140
    iput-object p1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    .line 142
    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, "context":Lccsanandroid/content/Context;
    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    .line 147
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getImportantForAccessibility(Lccsanandroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    .line 150
    invoke-static {p1, v1}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 153
    :cond_0
    return-void

    .line 137
    .end local v0    # "context":Lccsanandroid/content/Context;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 998
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 999
    const/high16 v0, -0x80000000

    iput v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 1000
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 1001
    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1003
    const/4 v0, 0x1

    return v0

    .line 1005
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .locals 3

    .line 481
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILccsanandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createEvent(II)Lccsanandroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 637
    packed-switch p1, :pswitch_data_0

    .line 641
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->createEventForChild(II)Lccsanandroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 639
    :pswitch_0
    invoke-direct {p0, p2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->createEventForHost(I)Lccsanandroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Lccsanandroid/view/accessibility/AccessibilityEvent;
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 677
    invoke-static {p2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->obtain(I)Lccsanandroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 678
    .local v0, "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, p1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 681
    .local v1, "node":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 683
    invoke-virtual {v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 684
    invoke-virtual {v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 685
    invoke-virtual {v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 686
    invoke-virtual {v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 689
    invoke-virtual {p0, p1, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 692
    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v2, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-static {v0, v2, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Lccsanandroid/view/accessibility/AccessibilityRecord;Lccsanandroid/view/View;I)V

    .line 700
    iget-object v2, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 702
    return-object v0
.end method

.method private createEventForHost(I)Lccsanandroid/view/accessibility/AccessibilityEvent;
    .locals 2
    .param p1, "eventType"    # I

    .line 653
    invoke-static {p1}, Lccsanandroid/view/accessibility/AccessibilityEvent;->obtain(I)Lccsanandroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 654
    .local v0, "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v1, v0}, Lccsanandroid/view/View;->onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 655
    return-object v0
.end method

.method private createNodeForChild(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 11
    .param p1, "virtualViewId"    # I

    .line 791
    invoke-static {}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 794
    .local v0, "node":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 795
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 796
    const-string v2, "android.view.View"

    invoke-virtual {v0, v2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 797
    sget-object v2, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Lccsanandroid/graphics/Rect;)V

    .line 798
    invoke-virtual {v0, v2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Lccsanandroid/graphics/Rect;)V

    .line 799
    iget-object v3, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v0, v3}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Lccsanandroid/view/View;)V

    .line 802
    invoke-virtual {p0, p1, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 805
    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 806
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 810
    :cond_1
    :goto_0
    iget-object v3, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v3}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Lccsanandroid/graphics/Rect;)V

    .line 811
    iget-object v3, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v3, v2}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 816
    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v3

    .line 817
    .local v3, "actions":I
    and-int/lit8 v4, v3, 0x40

    if-nez v4, :cond_b

    .line 821
    and-int/lit16 v4, v3, 0x80

    if-nez v4, :cond_a

    .line 827
    iget-object v4, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v4}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 828
    iget-object v4, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v0, v4, p1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Lccsanandroid/view/View;I)V

    .line 831
    iget v4, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/4 v5, 0x0

    if-ne v4, p1, :cond_2

    .line 832
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 833
    const/16 v4, 0x80

    invoke-virtual {v0, v4}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1

    .line 835
    :cond_2
    invoke-virtual {v0, v5}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 836
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 840
    :goto_1
    iget v4, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v4, p1, :cond_3

    const/4 v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 841
    .local v4, "isFocused":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 842
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_3

    .line 843
    :cond_4
    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 844
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 846
    :cond_5
    :goto_3
    invoke-virtual {v0, v4}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 848
    iget-object v6, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    iget-object v7, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v6, v7}, Lccsanandroid/view/View;->getLocationOnScreen([I)V

    .line 852
    iget-object v6, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v6}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Lccsanandroid/graphics/Rect;)V

    .line 853
    iget-object v6, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v6, v2}, Lccsanandroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 854
    iget-object v2, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Lccsanandroid/graphics/Rect;)V

    .line 857
    iget v2, v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_7

    .line 858
    invoke-static {}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 860
    .local v2, "parentNode":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    iget v7, v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    .line 861
    .local v7, "virtualDescendantId":I
    :goto_4
    if-eq v7, v6, :cond_6

    .line 864
    iget-object v8, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v2, v8, v6}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Lccsanandroid/view/View;I)V

    .line 865
    sget-object v8, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2, v8}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Lccsanandroid/graphics/Rect;)V

    .line 867
    invoke-virtual {p0, v7, v2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 868
    iget-object v8, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2, v8}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Lccsanandroid/graphics/Rect;)V

    .line 869
    iget-object v8, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Lccsanandroid/graphics/Rect;

    iget-object v9, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Lccsanandroid/graphics/Rect;

    iget v9, v9, Lccsanandroid/graphics/Rect;->left:I

    iget-object v10, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempParentRect:Lccsanandroid/graphics/Rect;

    iget v10, v10, Lccsanandroid/graphics/Rect;->top:I

    invoke-virtual {v8, v9, v10}, Lccsanandroid/graphics/Rect;->offset(II)V

    .line 862
    iget v7, v2, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I

    goto :goto_4

    .line 871
    .end local v7    # "virtualDescendantId":I
    :cond_6
    invoke-virtual {v2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    .line 874
    .end local v2    # "parentNode":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_7
    iget-object v2, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Lccsanandroid/graphics/Rect;

    iget-object v6, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v6, v6, v5

    iget-object v7, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v7}, Lccsanandroid/view/View;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v7, v7, v1

    iget-object v8, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    .line 875
    invoke-virtual {v8}, Lccsanandroid/view/View;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    .line 874
    invoke-virtual {v2, v6, v7}, Lccsanandroid/graphics/Rect;->offset(II)V

    .line 878
    :cond_8
    iget-object v2, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    iget-object v6, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2, v6}, Lccsanandroid/view/View;->getLocalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 879
    iget-object v2, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Lccsanandroid/graphics/Rect;

    iget-object v6, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v5, v6, v5

    iget-object v6, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v6}, Lccsanandroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v6, v6, v1

    iget-object v7, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    .line 880
    invoke-virtual {v7}, Lccsanandroid/view/View;->getScrollY()I

    move-result v7

    sub-int/2addr v6, v7

    .line 879
    invoke-virtual {v2, v5, v6}, Lccsanandroid/graphics/Rect;->offset(II)V

    .line 881
    iget-object v2, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Lccsanandroid/graphics/Rect;

    iget-object v5, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempVisibleRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v2, v5}, Lccsanandroid/graphics/Rect;->intersect(Lccsanandroid/graphics/Rect;)Z

    move-result v2

    .line 882
    .local v2, "intersects":Z
    if-eqz v2, :cond_9

    .line 883
    iget-object v5, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Lccsanandroid/graphics/Rect;

    invoke-virtual {v0, v5}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Lccsanandroid/graphics/Rect;)V

    .line 885
    iget-object v5, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mTempScreenRect:Lccsanandroid/graphics/Rect;

    invoke-direct {p0, v5}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->isVisibleToUser(Lccsanandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 886
    invoke-virtual {v0, v1}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 891
    .end local v2    # "intersects":Z
    :cond_9
    return-object v0

    .line 822
    .end local v4    # "isFocused":Z
    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 818
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 812
    .end local v3    # "actions":I
    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method private createNodeForHost()Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 7

    .line 734
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-static {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Lccsanandroid/view/View;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 735
    .local v0, "info":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-static {v1, v0}, Lccsanandroidx/core/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v1, "virtualViewIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 741
    invoke-virtual {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v2

    .line 742
    .local v2, "realNodeCount":I
    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    goto :goto_0

    .line 743
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Views cannot have both real and virtual children"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 746
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "count":I
    :goto_1
    if-ge v3, v4, :cond_2

    .line 747
    iget-object v5, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Lccsanandroid/view/View;I)V

    .line 746
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 750
    .end local v3    # "i":I
    .end local v4    # "count":I
    :cond_2
    return-object v0
.end method

.method private getAllNodes()Lccsanandroidx/collection/SparseArrayCompat;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/collection/SparseArrayCompat<",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v0, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 430
    new-instance v1, Lccsanandroidx/collection/SparseArrayCompat;

    invoke-direct {v1}, Lccsanandroidx/collection/SparseArrayCompat;-><init>()V

    .line 431
    .local v1, "allNodes":Lccsanandroidx/collection/SparseArrayCompat;, "Lccsanandroidx/collection/SparseArrayCompat<Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    const/4 v2, 0x0

    .local v2, "virtualViewId":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 432
    invoke-direct {p0, v2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v3

    .line 433
    .local v3, "virtualView":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v1, v2, v3}, Lccsanandroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 431
    .end local v3    # "virtualView":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "virtualViewId":I
    :cond_0
    return-object v1
.end method

.method private getBoundsInParent(ILccsanandroid/graphics/Rect;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "outBounds"    # Lccsanandroid/graphics/Rect;

    .line 328
    invoke-virtual {p0, p1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 329
    .local v0, "node":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0, p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Lccsanandroid/graphics/Rect;)V

    .line 330
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Lccsanandroid/view/View;ILccsanandroid/graphics/Rect;)Lccsanandroid/graphics/Rect;
    .locals 4
    .param p0, "host"    # Lccsanandroid/view/View;
    .param p1, "direction"    # I
    .param p2, "outBounds"    # Lccsanandroid/graphics/Rect;

    .line 450
    invoke-virtual {p0}, Lccsanandroid/view/View;->getWidth()I

    move-result v0

    .line 451
    .local v0, "w":I
    invoke-virtual {p0}, Lccsanandroid/view/View;->getHeight()I

    move-result v1

    .line 453
    .local v1, "h":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    .line 467
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 464
    :sswitch_0
    invoke-virtual {p2, v3, v2, v0, v2}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 465
    goto :goto_0

    .line 461
    :sswitch_1
    invoke-virtual {p2, v2, v3, v2, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 462
    goto :goto_0

    .line 458
    :sswitch_2
    invoke-virtual {p2, v3, v1, v0, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 459
    goto :goto_0

    .line 455
    :sswitch_3
    invoke-virtual {p2, v0, v3, v0, v1}, Lccsanandroid/graphics/Rect;->set(IIII)V

    .line 456
    nop

    .line 471
    :goto_0
    return-object p2

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_3
        0x21 -> :sswitch_2
        0x42 -> :sswitch_1
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private isVisibleToUser(Lccsanandroid/graphics/Rect;)Z
    .locals 5
    .param p1, "localRect"    # Lccsanandroid/graphics/Rect;

    .line 932
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lccsanandroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 937
    :cond_0
    iget-object v1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    return v0

    .line 942
    :cond_1
    iget-object v1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 943
    .local v1, "viewParent":Lccsanandroid/view/ViewParent;
    :goto_0
    instance-of v2, v1, Lccsanandroid/view/View;

    if-eqz v2, :cond_4

    .line 944
    move-object v2, v1

    check-cast v2, Lccsanandroid/view/View;

    .line 945
    .local v2, "view":Lccsanandroid/view/View;
    invoke-virtual {v2}, Lccsanandroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_3

    invoke-virtual {v2}, Lccsanandroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 948
    :cond_2
    invoke-virtual {v2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 949
    .end local v2    # "view":Lccsanandroid/view/View;
    goto :goto_0

    .line 946
    .restart local v2    # "view":Lccsanandroid/view/View;
    :cond_3
    :goto_1
    return v0

    .line 952
    .end local v2    # "view":Lccsanandroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    .line 933
    .end local v1    # "viewParent":Lccsanandroid/view/ViewParent;
    :cond_6
    :goto_2
    return v0
.end method

.method private static keyToDirection(I)I
    .locals 1
    .param p0, "keyCode"    # I

    .line 309
    packed-switch p0, :pswitch_data_0

    .line 317
    :pswitch_0
    const/16 v0, 0x82

    return v0

    .line 315
    :pswitch_1
    const/16 v0, 0x42

    return v0

    .line 311
    :pswitch_2
    const/16 v0, 0x11

    return v0

    .line 313
    :pswitch_3
    const/16 v0, 0x21

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private moveFocus(ILccsanandroid/graphics/Rect;)Z
    .locals 13
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Lccsanandroid/graphics/Rect;

    .line 372
    invoke-direct {p0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->getAllNodes()Lccsanandroidx/collection/SparseArrayCompat;

    move-result-object v11

    .line 374
    .local v11, "allNodes":Lccsanandroidx/collection/SparseArrayCompat;, "Lccsanandroidx/collection/SparseArrayCompat<Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    iget v12, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 375
    .local v12, "focusedNodeId":I
    const/high16 v0, -0x80000000

    if-ne v12, v0, :cond_0

    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_0

    .line 376
    :cond_0
    invoke-virtual {v11, v12}, Lccsanandroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-object v3, v1

    :goto_0
    nop

    .line 379
    .local v3, "focusedNode":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    sparse-switch p1, :sswitch_data_0

    .line 410
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :sswitch_0
    new-instance v1, Lccsanandroid/graphics/Rect;

    invoke-direct {v1}, Lccsanandroid/graphics/Rect;-><init>()V

    move-object v6, v1

    .line 393
    .local v6, "selectedRect":Lccsanandroid/graphics/Rect;
    iget v1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v1, v0, :cond_1

    .line 395
    invoke-direct {p0, v1, v6}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->getBoundsInParent(ILccsanandroid/graphics/Rect;)V

    goto :goto_1

    .line 396
    :cond_1
    if-eqz p2, :cond_2

    .line 398
    invoke-virtual {v6, p2}, Lccsanandroid/graphics/Rect;->set(Lccsanandroid/graphics/Rect;)V

    goto :goto_1

    .line 404
    :cond_2
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-static {v0, p1, v6}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Lccsanandroid/view/View;ILccsanandroid/graphics/Rect;)Lccsanandroid/graphics/Rect;

    .line 406
    :goto_1
    sget-object v1, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Lccsanandroidx/customview/widget/FocusStrategy$CollectionAdapter;

    sget-object v2, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Lccsanandroidx/customview/widget/FocusStrategy$BoundsAdapter;

    move-object v0, v11

    move-object v4, v6

    move v5, p1

    invoke-static/range {v0 .. v5}, Lccsanandroidx/customview/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Lccsanandroidx/customview/widget/FocusStrategy$CollectionAdapter;Lccsanandroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Lccsanandroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 408
    .local v0, "nextFocusedNode":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_3

    .line 382
    .end local v0    # "nextFocusedNode":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v6    # "selectedRect":Lccsanandroid/graphics/Rect;
    :sswitch_1
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    .line 383
    invoke-static {v0}, Lccsanandroidx/core/view/ViewCompat;->getLayoutDirection(Lccsanandroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 384
    .local v9, "isLayoutRtl":Z
    :goto_2
    sget-object v5, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Lccsanandroidx/customview/widget/FocusStrategy$CollectionAdapter;

    sget-object v6, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->NODE_ADAPTER:Lccsanandroidx/customview/widget/FocusStrategy$BoundsAdapter;

    const/4 v10, 0x0

    move-object v4, v11

    move-object v7, v3

    move v8, p1

    invoke-static/range {v4 .. v10}, Lccsanandroidx/customview/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Lccsanandroidx/customview/widget/FocusStrategy$CollectionAdapter;Lccsanandroidx/customview/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 387
    .restart local v0    # "nextFocusedNode":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    nop

    .line 416
    .end local v9    # "isLayoutRtl":Z
    :goto_3
    if-nez v0, :cond_4

    .line 417
    const/high16 v1, -0x80000000

    .local v1, "nextFocusedNodeId":I
    goto :goto_4

    .line 419
    .end local v1    # "nextFocusedNodeId":I
    :cond_4
    invoke-virtual {v11, v0}, Lccsanandroidx/collection/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    .line 420
    .local v1, "index":I
    invoke-virtual {v11, v1}, Lccsanandroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result v2

    move v1, v2

    .line 423
    .local v1, "nextFocusedNodeId":I
    :goto_4
    invoke-virtual {p0, v1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v2

    return v2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x11 -> :sswitch_0
        0x21 -> :sswitch_0
        0x42 -> :sswitch_0
        0x82 -> :sswitch_0
    .end sparse-switch
.end method

.method private performActionForChild(IILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Lccsanandroid/os/Bundle;

    .line 908
    sparse-switch p2, :sswitch_data_0

    .line 918
    invoke-virtual {p0, p1, p2, p3}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 912
    :sswitch_0
    invoke-direct {p0, p1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 910
    :sswitch_1
    invoke-direct {p0, p1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 916
    :sswitch_2
    invoke-virtual {p0, p1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    .line 914
    :sswitch_3
    invoke-virtual {p0, p1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private performActionForHost(ILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Lccsanandroid/os/Bundle;

    .line 904
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-static {v0, p1, p2}, Lccsanandroidx/core/view/ViewCompat;->performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 968
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 972
    :cond_0
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_2

    .line 974
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 975
    invoke-direct {p0, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    .line 979
    :cond_1
    iput p1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 982
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->invalidate()V

    .line 983
    const v0, 0x8000

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 985
    const/4 v0, 0x1

    return v0

    .line 987
    :cond_2
    return v1

    .line 969
    :cond_3
    :goto_0
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 612
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v0, p1, :cond_0

    .line 613
    return-void

    .line 616
    :cond_0
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 617
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 621
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 622
    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 624
    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 1046
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 1048
    return v1

    .line 1051
    :cond_0
    const/high16 v0, -0x80000000

    iput v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1053
    invoke-virtual {p0, p1, v1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1054
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1056
    const/4 v0, 0x1

    return v0
.end method

.method public final dispatchHoverEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Lccsanandroid/view/MotionEvent;

    .line 182
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    packed-switch v0, :pswitch_data_0

    .line 199
    :pswitch_0
    return v1

    .line 193
    :pswitch_1
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-eq v0, v3, :cond_1

    .line 194
    invoke-direct {p0, v3}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 195
    return v2

    .line 197
    :cond_1
    return v1

    .line 189
    :pswitch_2
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v0, v4}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 190
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 191
    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 183
    .end local v0    # "virtualViewId":I
    :cond_3
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Lccsanandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "event"    # Lccsanandroid/view/KeyEvent;

    .line 216
    const/4 v0, 0x0

    .line 218
    .local v0, "handled":Z
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getAction()I

    move-result v1

    .line 219
    .local v1, "action":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 220
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 221
    .local v3, "keyCode":I
    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    .line 248
    :sswitch_0
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 249
    const/4 v2, 0x2

    invoke-direct {p0, v2, v4}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILccsanandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_1

    .line 250
    :cond_0
    invoke-virtual {p1, v2}, Lccsanandroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 251
    invoke-direct {p0, v2, v4}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILccsanandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_1

    .line 240
    :sswitch_1
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 242
    invoke-direct {p0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    .line 243
    const/4 v0, 0x1

    goto :goto_1

    .line 226
    :sswitch_2
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    invoke-static {v3}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v5

    .line 228
    .local v5, "direction":I
    invoke-virtual {p1}, Lccsanandroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    add-int/2addr v6, v2

    .line 229
    .local v6, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v6, :cond_1

    .line 230
    invoke-direct {p0, v5, v4}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILccsanandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 231
    const/4 v0, 0x1

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 257
    .end local v2    # "i":I
    .end local v3    # "keyCode":I
    .end local v5    # "direction":I
    .end local v6    # "count":I
    :cond_1
    :goto_1
    return v0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_1
        0x3d -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .locals 1

    .line 290
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Lccsanandroid/view/View;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;

    .line 157
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    invoke-direct {v0, p0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Lccsanandroidx/customview/widget/ExploreByTouchHelper;)V

    iput-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 160
    :cond_0
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mNodeProvider:Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    invoke-virtual {p0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .locals 1

    .line 298
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .locals 2

    .line 526
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 527
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 544
    return-void
.end method

.method public final invalidateVirtualView(II)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "changeTypes"    # I

    .line 566
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Lccsanandroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    .line 568
    .local v0, "parent":Lccsanandroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 570
    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Lccsanandroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 572
    .local v1, "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    invoke-static {v1, p2}, Lccsanandroidx/core/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Lccsanandroid/view/accessibility/AccessibilityEvent;I)V

    .line 573
    iget-object v2, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-static {v0, v2, v1}, Lccsanandroidx/core/view/ViewParentCompat;->requestSendAccessibilityEvent(Lccsanandroid/view/ViewParent;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    .line 576
    .end local v0    # "parent":Lccsanandroid/view/ViewParent;
    .end local v1    # "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method obtainAccessibilityNodeInfo(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p1, "virtualViewId"    # I

    .line 719
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 720
    invoke-direct {p0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->createNodeForHost()Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    .line 723
    :cond_0
    invoke-direct {p0, p1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->createNodeForChild(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public final onFocusChanged(ZILccsanandroid/graphics/Rect;)V
    .locals 2
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Lccsanandroid/graphics/Rect;

    .line 275
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 276
    invoke-virtual {p0, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 279
    :cond_0
    if-eqz p1, :cond_1

    .line 280
    invoke-direct {p0, p2, p3}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->moveFocus(ILccsanandroid/graphics/Rect;)Z

    .line 282
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 660
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 663
    invoke-virtual {p0, p2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->onPopulateEventForHost(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 664
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 755
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 758
    invoke-virtual {p0, p2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 759
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILccsanandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 1128
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 1116
    return-void
.end method

.method protected onPopulateNodeForHost(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .param p1, "node"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 1206
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .locals 0
    .param p1, "virtualViewId"    # I
    .param p2, "hasFocus"    # Z

    .line 601
    return-void
.end method

.method performAction(IILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Lccsanandroid/os/Bundle;

    .line 895
    packed-switch p1, :pswitch_data_0

    .line 899
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->performActionForChild(IILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 897
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->performActionForHost(ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 1016
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->isFocused()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    return v1

    .line 1021
    :cond_0
    iget v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_1

    .line 1023
    return v1

    .line 1026
    :cond_1
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    .line 1027
    invoke-virtual {p0, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 1030
    :cond_2
    iput p1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1032
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1033
    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1035
    return v0
.end method

.method public final sendEventForVirtualView(II)Z
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 505
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mManager:Lccsanandroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Lccsanandroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 509
    :cond_0
    iget-object v1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    .line 510
    .local v1, "parent":Lccsanandroid/view/ViewParent;
    if-nez v1, :cond_1

    .line 511
    return v0

    .line 514
    :cond_1
    invoke-direct {p0, p1, p2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->createEvent(II)Lccsanandroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 515
    .local v0, "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mHost:Lccsanandroid/view/View;

    invoke-static {v1, v2, v0}, Lccsanandroidx/core/view/ViewParentCompat;->requestSendAccessibilityEvent(Lccsanandroid/view/ViewParent;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2

    .line 506
    .end local v0    # "event":Lccsanandroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "parent":Lccsanandroid/view/ViewParent;
    :cond_2
    :goto_0
    return v0
.end method
