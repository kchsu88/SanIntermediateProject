.class Lccsancom/google/android/material/datepicker/RangeDateSelector$1;
.super Lccsancom/google/android/material/datepicker/DateFormatTextWatcher;
.source "RangeDateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/RangeDateSelector;->onCreateTextInputView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/RangeDateSelector;

.field final synthetic val$endTextInput:Lccsancom/google/android/material/textfield/TextInputLayout;

.field final synthetic val$listener:Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

.field final synthetic val$startTextInput:Lccsancom/google/android/material/textfield/TextInputLayout;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/RangeDateSelector;
    .param p2, "formatHint"    # Ljava/lang/String;
    .param p3, "dateFormat"    # Ljava/text/DateFormat;
    .param p4, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;
    .param p5, "constraints"    # Lccsancom/google/android/material/datepicker/CalendarConstraints;

    .line 207
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lccsancom/google/android/material/datepicker/RangeDateSelector;

    iput-object p6, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->val$startTextInput:Lccsancom/google/android/material/textfield/TextInputLayout;

    iput-object p7, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->val$endTextInput:Lccsancom/google/android/material/textfield/TextInputLayout;

    iput-object p8, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->val$listener:Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

    invoke-direct {p0, p2, p3, p4, p5}, Lccsancom/google/android/material/datepicker/DateFormatTextWatcher;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method onInvalidDate()V
    .locals 4

    .line 217
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lccsancom/google/android/material/datepicker/RangeDateSelector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/RangeDateSelector;->access$002(Lccsancom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    .line 218
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lccsancom/google/android/material/datepicker/RangeDateSelector;

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->val$startTextInput:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->val$endTextInput:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->val$listener:Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/android/material/datepicker/RangeDateSelector;->access$100(Lccsancom/google/android/material/datepicker/RangeDateSelector;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)V

    .line 219
    return-void
.end method

.method onValidDate(Ljava/lang/Long;)V
    .locals 4
    .param p1, "day"    # Ljava/lang/Long;

    .line 211
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lccsancom/google/android/material/datepicker/RangeDateSelector;

    invoke-static {v0, p1}, Lccsancom/google/android/material/datepicker/RangeDateSelector;->access$002(Lccsancom/google/android/material/datepicker/RangeDateSelector;Ljava/lang/Long;)Ljava/lang/Long;

    .line 212
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->this$0:Lccsancom/google/android/material/datepicker/RangeDateSelector;

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->val$startTextInput:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v2, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->val$endTextInput:Lccsancom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/RangeDateSelector$1;->val$listener:Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

    invoke-static {v0, v1, v2, v3}, Lccsancom/google/android/material/datepicker/RangeDateSelector;->access$100(Lccsancom/google/android/material/datepicker/RangeDateSelector;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)V

    .line 213
    return-void
.end method
