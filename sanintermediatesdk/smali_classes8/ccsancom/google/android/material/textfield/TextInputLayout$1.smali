.class Lccsancom/google/android/material/textfield/TextInputLayout$1;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Lccsanandroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/TextInputLayout;->setEditText(Lccsanandroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/TextInputLayout;

    .line 1404
    iput-object p1, p0, Lccsancom/google/android/material/textfield/TextInputLayout$1;->this$0:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Lccsanandroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Lccsanandroid/text/Editable;

    .line 1407
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$1;->this$0:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->access$000(Lccsancom/google/android/material/textfield/TextInputLayout;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    .line 1408
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$1;->this$0:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-boolean v0, v0, Lccsancom/google/android/material/textfield/TextInputLayout;->counterEnabled:Z

    if-eqz v0, :cond_0

    .line 1409
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$1;->this$0:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-interface {p1}, Lccsanandroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->updateCounter(I)V

    .line 1411
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$1;->this$0:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->access$100(Lccsancom/google/android/material/textfield/TextInputLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1412
    iget-object v0, p0, Lccsancom/google/android/material/textfield/TextInputLayout$1;->this$0:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-interface {p1}, Lccsanandroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->access$200(Lccsancom/google/android/material/textfield/TextInputLayout;I)V

    .line 1414
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 1417
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 1420
    return-void
.end method
