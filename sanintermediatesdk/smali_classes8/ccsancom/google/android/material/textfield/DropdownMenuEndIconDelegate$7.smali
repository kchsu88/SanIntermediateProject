.class Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;
.super Ljava/lang/Object;
.source "DropdownMenuEndIconDelegate.java"

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->setUpDropdownShowHideBehavior(Lccsanandroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

.field final synthetic val$editText:Lccsanandroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 395
    iput-object p1, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iput-object p2, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->val$editText:Lccsanandroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/MotionEvent;

    .line 398
    invoke-virtual {p2}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 399
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$1300(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    invoke-static {v0, v1}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$402(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Z)Z

    .line 402
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->this$0:Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    iget-object v2, p0, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate$7;->val$editText:Lccsanandroid/widget/AutoCompleteTextView;

    invoke-static {v0, v2}, Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;->access$500(Lccsancom/google/android/material/textfield/DropdownMenuEndIconDelegate;Lccsanandroid/widget/AutoCompleteTextView;)V

    .line 404
    :cond_1
    return v1
.end method
