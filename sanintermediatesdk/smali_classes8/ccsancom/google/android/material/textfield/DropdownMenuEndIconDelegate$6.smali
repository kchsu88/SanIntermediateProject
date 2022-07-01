.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 249
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 252
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v0, v0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->textInputLayout:Lccsancom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lccsancom/google/android/material/textfield/TextInputLayout;->getEditText()Lccsanandroid/widget/EditText;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/AutoCompleteTextView;

    .line 253
    .local v0, "editText":Lccsanandroid/widget/AutoCompleteTextView;
    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$6;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1, v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$500(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V

    .line 254
    return-void
.end method
