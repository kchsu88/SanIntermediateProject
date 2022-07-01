.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


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
.method constructor <init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 141
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextAttached(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 4
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 144
    nop

    .line 145
    invoke-virtual {p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$000(Lccsanandroid/widget/EditText;)Lccsanandroid/widget/AutoCompleteTextView;

    move-result-object v0

    .line 147
    .local v0, "autoCompleteTextView":Lccsanandroid/widget/AutoCompleteTextView;
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$600(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V

    .line 148
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$700(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V

    .line 149
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$800(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 151
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$900(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/AutoCompleteTextView;->removeTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 152
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$900(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/AutoCompleteTextView;->addTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 153
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 154
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lccsancom/google/android/material/textfield/TextInputLayout;->setErrorIconDrawable(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-static {v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$200(Lccsanandroid/widget/EditText;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v2, v2, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->endIconView:Lccsancom/google/android/material/internal/CheckableImageButton;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lccsanandroidx/core/view/ViewCompat;->setImportantForAccessibility(Lccsanandroid/view/View;I)V

    .line 158
    :cond_0
    iget-object v2, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v2}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1000(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;

    move-result-object v2

    invoke-virtual {p1, v2}, Lccsancom/google/android/material/textfield/TextInputLayout;->setTextInputAccessibilityDelegate(Lccsancom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;)V

    .line 160
    invoke-virtual {p1, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 161
    return-void
.end method
