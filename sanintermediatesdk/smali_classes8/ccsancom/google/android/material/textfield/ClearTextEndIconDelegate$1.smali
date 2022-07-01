.class Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$1;
.super Ljava/lang/Object;
.source "ClearTextEndIconDelegate.java"

# interfaces
.implements Lccsanandroid/text/TextWatcher;


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

    .line 47
    iput-object p1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$1;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Lccsanandroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Lccsanandroid/text/Editable;

    .line 56
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$1;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$1;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {p1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->access$000(Lccsanandroid/text/Editable;)Z

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->access$100(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;Z)V

    .line 60
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 49
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 52
    return-void
.end method
