.class Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3$1;
.super Ljava/lang/Object;
.source "PasswordToggleEndIconDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;->onEndIconChanged(Lccsancom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;

.field final synthetic val$editText:Lccsanandroid/widget/EditText;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;Lccsanandroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;

    .line 70
    iput-object p1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3$1;->this$1:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;

    iput-object p2, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3$1;->val$editText:Lccsanandroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3$1;->val$editText:Lccsanandroid/widget/EditText;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3$1;->this$1:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;

    iget-object v1, v1, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate$3;->this$0:Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;->access$100(Lccsancom/google/android/material/textfield/PasswordToggleEndIconDelegate;)Lccsanandroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->removeTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 74
    return-void
.end method
