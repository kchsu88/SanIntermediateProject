.class Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;
.super Ljava/lang/Object;
.source "PasswordToggleEndIconDelegate.java"

# interfaces
.implements Lccsancom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;
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

    .line 47
    iput-object p1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextAttached(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 4
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 50
    invoke-virtual {p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    .line 51
    .local v0, "editText":Lccsanandroid/widget/EditText;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconVisible(Z)V

    .line 52
    invoke-virtual {p1, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->setEndIconCheckable(Z)V

    .line 53
    iget-object v2, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    iget-object v2, v2, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->endIconView:Lccsancom/google/android/material/internal/CheckableImageButton;

    iget-object v3, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    invoke-static {v3}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->access$000(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 55
    iget-object v1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->access$100(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Lccsanandroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->removeTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 56
    iget-object v1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$2;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->access$100(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Lccsanandroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->addTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 57
    return-void
.end method
