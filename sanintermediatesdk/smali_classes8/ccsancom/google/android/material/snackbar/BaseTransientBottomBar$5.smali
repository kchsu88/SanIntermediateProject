.class Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$5;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/ViewGroup;Lccsanandroid/view/View;Lccsancom/google/android/material/snackbar/ContentViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 423
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$5;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$5;"
    iput-object p1, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$5;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 427
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$5;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$5;"
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 428
    const/high16 v0, 0x100000

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 429
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    .line 430
    return-void
.end method

.method public performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Lccsanandroid/os/Bundle;

    .line 434
    .local p0, "this":Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$5;, "Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$5;"
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    .line 435
    iget-object v0, p0, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar$5;->this$0:Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Lccsancom/google/android/material/snackbar/BaseTransientBottomBar;->dismiss()V

    .line 436
    const/4 v0, 0x1

    return v0

    .line 438
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
