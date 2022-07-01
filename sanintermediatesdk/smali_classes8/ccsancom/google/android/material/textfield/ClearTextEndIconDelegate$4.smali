.class Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;
.super Ljava/lang/Object;
.source "ClearTextEndIconDelegate.java"

# interfaces
.implements Lccsancom/google/android/material/textfield/TextInputLayout$OnEndIconChangedListener;


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

    .line 84
    iput-object p1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEndIconChanged(Lccsancom/google/android/material/textfield/TextInputLayout;I)V
    .locals 3
    .param p1, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;
    .param p2, "previousIcon"    # I

    .line 87
    invoke-virtual {p1}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    .line 88
    .local v0, "editText":Lccsanandroid/widget/EditText;
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 90
    new-instance v1, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4$1;-><init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;Lccsanandroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 97
    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->getOnFocusChangeListener()Lccsanandroid/view/View$OnFocusChangeListener;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v2}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->access$200(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)Lccsanandroid/view/View$OnFocusChangeListener;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->setOnFocusChangeListener(Lccsanandroid/view/View$OnFocusChangeListener;)V

    .line 101
    :cond_0
    return-void
.end method
