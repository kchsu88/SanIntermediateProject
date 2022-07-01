.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->afterTextChanged(Lccsanandroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

.field final synthetic val$editText:Lccsanandroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    .line 87
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->this$1:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    iput-object p2, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->val$editText:Lccsanandroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 90
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->val$editText:Lccsanandroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Lccsanandroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    .line 91
    .local v0, "isPopupShowing":Z
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->this$1:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    iget-object v1, v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$300(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)V

    .line 92
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1$1;->this$1:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;

    iget-object v1, v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$1;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$402(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z

    .line 93
    return-void
.end method
