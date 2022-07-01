.class Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$5;
.super Ljava/lang/Object;
.source "ClearTextEndIconDelegate.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->initialize()V
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

    .line 118
    iput-object p1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$5;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 121
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$5;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/widget/EditText;->getText()Lccsanandroid/text/Editable;

    move-result-object v0

    .line 122
    .local v0, "text":Lccsanandroid/text/Editable;
    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0}, Lccsanandroid/text/Editable;->clear()V

    .line 126
    :cond_0
    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$5;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    iget-object v1, v1, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lccsancom/google/android/material/textfield/TextInputLayout;->refreshEndIconDrawableState()V

    .line 127
    return-void
.end method
