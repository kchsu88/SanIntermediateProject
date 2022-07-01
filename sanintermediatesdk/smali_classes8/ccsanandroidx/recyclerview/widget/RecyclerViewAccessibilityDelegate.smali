.class public Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
    }
.end annotation


# instance fields
.field private final mItemDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

.field final mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 44
    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 45
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 46
    invoke-virtual {p0}, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    .line 47
    .local v0, "itemDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    if-eqz v1, :cond_0

    .line 48
    move-object v1, v0

    check-cast v1, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    iput-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    goto :goto_0

    .line 50
    :cond_0
    new-instance v1, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    invoke-direct {v1, p0}, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;-><init>(Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V

    iput-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public getItemDelegate()Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    .locals 1

    .line 99
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mItemDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 80
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 81
    instance-of v0, p1, Lccsanandroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 83
    .local v0, "rv":Lccsanandroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 87
    .end local v0    # "rv":Lccsanandroidx/recyclerview/widget/RecyclerView;
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 72
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 73
    invoke-virtual {p0}, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 76
    :cond_0
    return-void
.end method

.method public performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Lccsanandroid/os/Bundle;

    .line 60
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    return v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityAction(ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 67
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method shouldIgnore()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    return v0
.end method
