.class Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$3;
.super Ljava/lang/Object;
.source "ClearTextEndIconDelegate.java"

# interfaces
.implements Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    .line 71
    iput-object p1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextAttached(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 3
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 74
    invoke-virtual {p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    .line 75
    .local v0, "editText":Lccsanandroid/widget/EditText;
    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->hasFocus()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->getText()Lccsanandroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->access$000(Lccsanandroid/text/Editable;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 77
    invoke-virtual {p1, v2}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 78
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->access$200(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)Lccsanandroid/view/View$OnFocusChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->setOnFocusChangeListener(Lccsanandroid/view/View$OnFocusChangeListener;)V

    .line 79
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->access$300(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)Lccsanandroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->removeTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 80
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->access$300(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)Lccsanandroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->addTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 81
    return-void
.end method
