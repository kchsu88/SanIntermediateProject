.class Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;
.super Ljava/lang/Object;
.source "PasswordToggleEndIconDelegate.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    .line 91
    iput-object p1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 94
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    .line 95
    .local v0, "editText":Lccsanandroid/widget/EditText;
    if-nez v0, :cond_0

    .line 96
    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 100
    .local v1, "selection":I
    iget-object v2, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    invoke-static {v2}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->access$000(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsanandroid/widget/EditText;->setTransformationMethod(Lccsanandroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lccsanandroid/text/method/PasswordTransformationMethod;->getInstance()Lccsanandroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/widget/EditText;->setTransformationMethod(Lccsanandroid/text/method/TransformationMethod;)V

    .line 106
    :goto_0
    if-ltz v1, :cond_2

    .line 107
    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->setSelection(I)V

    .line 110
    :cond_2
    iget-object v2, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    iget-object v2, v2, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v2}, Lccsancom/google/android/material/textfield/TextInputLayout;->refreshEndIconDrawableState()V

    .line 111
    return-void
.end method
