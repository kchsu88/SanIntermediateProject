.class Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;
.super Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/customview/widget/ExploreByTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyNodeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/customview/widget/ExploreByTouchHelper;


# direct methods
.method constructor <init>(Lccsanandroidx/customview/widget/ExploreByTouchHelper;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lccsanandroidx/customview/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V

    .line 1239
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .param p1, "virtualViewId"    # I

    .line 1245
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lccsanandroidx/customview/widget/ExploreByTouchHelper;

    .line 1246
    invoke-virtual {v0, p1}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 1247
    .local v0, "node":Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-static {v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    return-object v1
.end method

.method public findFocus(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .param p1, "focusType"    # I

    .line 1257
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lccsanandroidx/customview/widget/ExploreByTouchHelper;

    iget v0, v0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lccsanandroidx/customview/widget/ExploreByTouchHelper;

    iget v0, v0, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1259
    .local v0, "focusedId":I
    :goto_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 1260
    const/4 v1, 0x0

    return-object v1

    .line 1262
    :cond_1
    invoke-virtual {p0, v0}, Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    return-object v1
.end method

.method public performAction(IILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Lccsanandroid/os/Bundle;

    .line 1252
    iget-object v0, p0, Lccsanandroidx/customview/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Lccsanandroidx/customview/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroidx/customview/widget/ExploreByTouchHelper;->performAction(IILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method