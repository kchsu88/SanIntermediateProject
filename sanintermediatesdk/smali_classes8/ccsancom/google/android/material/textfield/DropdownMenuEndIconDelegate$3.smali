.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;
.super Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.source "DropdownMenuEndIconDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;
    .param p2, "layout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 109
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {p0, p2}, Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;-><init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "info"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 113
    invoke-super {p0, p1, p2}, Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 115
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$200(Lccsanandroid/widget/EditText;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-class v0, Lccsanandroid/widget/Spinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 118
    :cond_0
    invoke-virtual {p2}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->isShowingHintText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_1
    return-void
.end method

.method public onPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "host"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/accessibility/AccessibilityEvent;

    .line 127
    invoke-super {p0, p1, p2}, Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->onPopulateAccessibilityEvent(Lccsanandroid/view/View;Lccsanandroid/view/accessibility/AccessibilityEvent;)V

    .line 128
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 129
    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$000(Lccsanandroid/widget/EditText;)Lccsanandroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 133
    .local v0, "editText":Lccsanandroid/widget/AutoCompleteTextView;
    invoke-virtual {p2}, Lccsanandroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 134
    invoke-static {v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$100(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v1, v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 135
    invoke-virtual {v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$200(Lccsanandroid/widget/EditText;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$500(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V

    .line 138
    :cond_0
    return-void
.end method
