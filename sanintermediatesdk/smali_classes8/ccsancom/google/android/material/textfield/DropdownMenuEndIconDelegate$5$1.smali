.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;->onEndIconChanged(Lccsancom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

.field final synthetic val$editText:Lccsanandroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

    .line 175
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;->this$1:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

    iput-object p2, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;->val$editText:Lccsanandroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 178
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;->val$editText:Lccsanandroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;->this$1:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

    iget-object v1, v1, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$900(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Lccsanandroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/AutoCompleteTextView;->removeTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 179
    return-void
.end method
