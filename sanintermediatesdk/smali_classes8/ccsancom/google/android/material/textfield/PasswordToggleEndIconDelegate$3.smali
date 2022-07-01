.class Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;
.super Ljava/lang/Object;
.source "PasswordToggleEndIconDelegate.java"

# interfaces
.implements Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;


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

    .line 60
    iput-object p1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndIconChanged(Lccsancom/google/android/material/textfield/TextInputLayout;I)V
    .locals 2
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;
    .param p2, "previousIcon"    # I

    .line 63
    invoke-virtual {p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    .line 64
    .local v0, "editText":Lccsanandroid/widget/EditText;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 67
    invoke-static {}, Lccsanandroid/text/method/PasswordTransformationMethod;->getInstance()Lccsanandroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->setTransformationMethod(Lccsanandroid/text/method/TransformationMethod;)V

    .line 69
    new-instance v1, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3$1;-><init>(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;Lccsanandroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_0
    return-void
.end method
