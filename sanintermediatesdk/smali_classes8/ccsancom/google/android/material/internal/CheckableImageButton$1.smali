.class Lccsancom/google/android/material/internal/CheckableImageButton$1;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "CheckableImageButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/internal/CheckableImageButton;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/internal/CheckableImageButton;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/internal/CheckableImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/internal/CheckableImageButton;

    .line 60
    iput-object p1, p0, Lccsancom/google/android/material/internal/CheckableImageButton$1;->this$0:Lccsancom/google/android/material/internal/CheckableImageButton;

    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 63
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 64
    iget-object v0, p0, Lccsancom/google/android/material/internal/CheckableImageButton$1;->this$0:Lccsancom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 65
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 70
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 71
    iget-object v0, p0, Lccsancom/google/android/material/internal/CheckableImageButton$1;->this$0:Lccsancom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->isCheckable()Z

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 72
    iget-object v0, p0, Lccsancom/google/android/material/internal/CheckableImageButton$1;->this$0:Lccsancom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    .line 73
    return-void
.end method
