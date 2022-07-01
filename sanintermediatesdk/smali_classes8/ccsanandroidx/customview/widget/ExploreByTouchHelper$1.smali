.class final Lccsanandroidx/customview/widget/ExploreByTouchHelper$1;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"

# interfaces
.implements Lccsanandroidx/customview/widget/FocusStrategy$BoundsAdapter;


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
        "Lccsanandroidx/customview/widget/FocusStrategy$BoundsAdapter<",
        "Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public obtainBounds(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lccsanandroid/graphics/Rect;)V
    .locals 0
    .param p1, "node"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p2, "outBounds"    # Lccsanandroid/graphics/Rect;

    .line 339
    invoke-virtual {p1, p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Lccsanandroid/graphics/Rect;)V

    .line 340
    return-void
.end method

.method public bridge synthetic obtainBounds(Ljava/lang/Object;Lccsanandroid/graphics/Rect;)V
    .locals 0

    .line 336
    check-cast p1, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-virtual {p0, p1, p2}, Lccsanandroidx/customview/widget/ExploreByTouchHelper$1;->obtainBounds(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Lccsanandroid/graphics/Rect;)V

    return-void
.end method
