.class Lccsancom/google/android/material/internal/NavigationMenuItemView$1;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "NavigationMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/NavigationMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/internal/NavigationMenuItemView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/internal/NavigationMenuItemView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/internal/NavigationMenuItemView;

    .line 76
    iput-object p1, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView$1;->this$0:Lccsancom/google/android/material/internal/NavigationMenuItemView;

    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 81
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 82
    iget-object v0, p0, Lccsancom/google/android/material/internal/NavigationMenuItemView$1;->this$0:Lccsancom/google/android/material/internal/NavigationMenuItemView;

    iget-boolean v0, v0, Lccsancom/google/android/material/internal/NavigationMenuItemView;->checkable:Z

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 83
    return-void
.end method
