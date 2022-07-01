.class Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4$1;
.super Ljava/lang/Object;
.source "ClearTextEndIconDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;->onEndIconChanged(Lccsancom/google/android/material/textfield/TextInputLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;

.field final synthetic val$editText:Lccsanandroid/widget/EditText;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;Lccsanandroid/widget/EditText;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;

    .line 91
    iput-object p1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4$1;->this$1:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;

    iput-object p2, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4$1;->val$editText:Lccsanandroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4$1;->val$editText:Lccsanandroid/widget/EditText;

    iget-object v1, p0, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4$1;->this$1:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;

    iget-object v1, v1, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate$4;->this$0:Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;

    invoke-static {v1}, Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;->access$300(Lccsancom/google/android/material/textfield/ClearTextEndIconDelegate;)Lccsanandroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/EditText;->removeTextChangedListener(Lccsanandroid/text/TextWatcher;)V

    .line 95
    return-void
.end method
