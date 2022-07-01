.class public Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# instance fields
.field private mOriginalItemDelegates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsanandroid/view/View;",
            "Lccsanandroidx/core/view/AccessibilityDelegateCompat;",
            ">;"
        }
    .end annotation
.end field

.field final mRecyclerViewDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;


# direct methods
.method public constructor <init>(Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 1
    .param p1, "recyclerViewDelegate"    # Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 119
    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 112
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    .line 120
    iput-object p1, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    .line 121
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 201
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 202
    .local v0, "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public getAccessibilityNodeProvider(Lccsanandroid/view/View;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 2
    .param p1, "host"    # Lccsanandroid/view/View;

    .line 245
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 246
    .local v0, "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Lccsanandroid/view/View;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v1

    return-object v1

    .line 249
    :cond_0
    invoke-super {p0, p1}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Lccsanandroid/view/View;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v1

    return-object v1
.end method

.method getAndRemoveOriginalDelegateForItem(Lccsanandroid/view/View;)Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    .locals 1
    .param p1, "itemView"    # Lccsanandroid/view/View;

    .line 138
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 223
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 224
    .local v0, "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 229
    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 143
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 144
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 147
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 148
    .local v0, "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 153
    .end local v0    # "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    :goto_0
    goto :goto_1

    .line 154
    :cond_1
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 156
    :goto_1
    return-void
.end method

.method public onPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 212
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 213
    .local v0, "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 218
    :goto_0
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "host"    # Lccsanandroid/view/ViewGroup;
    .param p2, "child"    # Lccsanandroid/view/View;
    .param p3, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 234
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 235
    .local v0, "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    return v1
.end method

.method public performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z
    .locals 3
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Lccsanandroid/os/Bundle;

    .line 160
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v0, v0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 161
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 163
    .local v0, "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    return v1

    .line 167
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    return v1

    .line 170
    :cond_1
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mRecyclerViewDelegate:Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    iget-object v1, v1, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate;->mRecyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 171
    invoke-virtual {v1, p1, p2, p3}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z

    move-result v1

    .line 170
    return v1

    .line 173
    .end local v0    # "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method saveOriginalDelegate(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Lccsanandroid/view/View;

    .line 128
    invoke-static {p1}, Lccsanandroidx/core/view/ViewCompat;->getAccessibilityDelegate(Lccsanandroid/view/View;)Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    .line 129
    .local v0, "delegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 130
    iget-object v1, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_0
    return-void
.end method

.method public sendAccessibilityEvent(Lccsanandroid/view/View;I)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "eventType"    # I

    .line 179
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 180
    .local v0, "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Lccsanandroid/view/View;I)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Lccsanandroid/view/View;I)V

    .line 185
    :goto_0
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 190
    iget-object v0, p0, Lccsanandroidx/recyclerview/widget/RecyclerViewAccessibilityDelegate$ItemDelegate;->mOriginalItemDelegates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/AccessibilityDelegateCompat;

    .line 191
    .local v0, "originalDelegate":Lccsanandroidx/core/view/AccessibilityDelegateCompat;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 196
    :goto_0
    return-void
.end method
