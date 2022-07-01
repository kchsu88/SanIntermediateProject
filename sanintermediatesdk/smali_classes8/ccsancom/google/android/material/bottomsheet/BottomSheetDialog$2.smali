.class Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$2;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->wrapInBottomSheet(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 228
    iput-object p1, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$2;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 232
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 233
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$2;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-boolean v0, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    if-eqz v0, :cond_0

    .line 234
    const/high16 v0, 0x100000

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 235
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    goto :goto_0

    .line 237
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setDismissable(Z)V

    .line 239
    :goto_0
    return-void
.end method

.method public performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Lccsanandroid/os/Bundle;

    .line 243
    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$2;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    iget-boolean v0, v0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancelable:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog$2;->this$0:Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lccsancom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    .line 245
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Lccsanandroid/view/View;ILccsanandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
