.class final Lccsanandroidx/customview/widget/ExploreByTouchHelper$2;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lccsanandroidx/customview/widget/FocusStrategy$CollectionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/customview/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsanandroidx/customview/widget/FocusStrategy$CollectionAdapter<",
        "Lccsanandroidx/collection/SparseArrayCompat<",
        "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;",
        "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lccsanandroidx/collection/SparseArrayCompat;I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 1
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/collection/SparseArrayCompat<",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;I)",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;"
        }
    .end annotation

    .line 353
    .local p1, "collection":Lccsanandroidx/collection/SparseArrayCompat;, "Lccsanandroidx/collection/SparseArrayCompat<Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    invoke-virtual {p1, p2}, Lccsanandroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 349
    check-cast p1, Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper$2;->get(Lccsanandroidx/collection/SparseArrayCompat;I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    return-object p1
.end method

.method public size(Lccsanandroidx/collection/SparseArrayCompat;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/collection/SparseArrayCompat<",
            "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;)I"
        }
    .end annotation

    .line 358
    .local p1, "collection":Lccsanandroidx/collection/SparseArrayCompat;, "Lccsanandroidx/collection/SparseArrayCompat<Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;>;"
    invoke-virtual {p1}, Lccsanandroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic size(Ljava/lang/Object;)I
    .locals 0

    .line 349
    check-cast p1, Lccsanandroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper$2;->size(Lccsanandroidx/collection/SparseArrayCompat;)I

    move-result p1

    return p1
.end method
