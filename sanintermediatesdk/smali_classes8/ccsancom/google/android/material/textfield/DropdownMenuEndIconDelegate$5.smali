.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;


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

    .line 167
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndIconChanged(Lccsancom/google/android/material/textfield/TextInputLayout;I)V
    .locals 4
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;
    .param p2, "previousIcon"    # I

    .line 170
    nop

    .line 171
    invoke-virtual {p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/AutoCompleteTextView;

    .line 172
    .local v0, "editText":Lccsanandroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 174
    new-instance v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;-><init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;Lccsanandroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 181
    invoke-virtual {v0}, Lccsanandroid/widget/AutoCompleteTextView;->getOnFocusChangeListener()Lccsanandroid/view/View$OnFocusChangeListener;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v2}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1100(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/view/View$OnFocusChangeListener;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 182
    invoke-virtual {v0, v3}, Lccsanandroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Lccsanandroid/view/View$OnFocusChangeListener;)V

    .line 184
    :cond_0
    invoke-virtual {v0, v3}, Lccsanandroid/widget/AutoCompleteTextView;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 185
    invoke-static {}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-virtual {v0, v3}, Lccsanandroid/widget/AutoCompleteTextView;->setOnDismissListener(Lccsanandroid/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 189
    :cond_1
    return-void
.end method
