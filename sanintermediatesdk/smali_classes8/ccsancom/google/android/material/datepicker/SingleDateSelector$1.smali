.class Lccsancom/google/android/material/datepicker/SingleDateSelector$1;
.super Lccsancom/google/android/material/datepicker/DateFormatTextWatcher;
.source "SingleDateSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/SingleDateSelector;->onCreateTextInputView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/SingleDateSelector;

.field final synthetic val$listener:Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/SingleDateSelector;Ljava/lang/String;Ljava/text/DateFormat;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/SingleDateSelector;
    .param p2, "formatHint"    # Ljava/lang/String;
    .param p3, "dateFormat"    # Ljava/text/DateFormat;
    .param p4, "textInputLayout"    # Lccsancom/google/android/material/textfield/TextInputLayout;
    .param p5, "constraints"    # Lccsancom/google/android/material/datepicker/CalendarConstraints;

    .line 118
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector$1;->this$0:Lccsancom/google/android/material/datepicker/SingleDateSelector;

    iput-object p6, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector$1;->val$listener:Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

    invoke-direct {p0, p2, p3, p4, p5}, Lccsancom/google/android/material/datepicker/DateFormatTextWatcher;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lccsancom/google/android/material/textfield/TextInputLayout;Lccsancom/google/android/material/datepicker/CalendarConstraints;)V

    return-void
.end method


# virtual methods
.method onInvalidDate()V
    .locals 1

    .line 132
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector$1;->val$listener:Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;->onIncompleteSelectionChanged()V

    .line 133
    return-void
.end method

.method onValidDate(Ljava/lang/Long;)V
    .locals 3
    .param p1, "day"    # Ljava/lang/Long;

    .line 122
    if-nez p1, :cond_0

    .line 123
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector$1;->this$0:Lccsancom/google/android/material/datepicker/SingleDateSelector;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/SingleDateSelector;->access$000(Lccsancom/google/android/material/datepicker/SingleDateSelector;)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector$1;->this$0:Lccsancom/google/android/material/datepicker/SingleDateSelector;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/google/android/material/datepicker/SingleDateSelector;->select(J)V

    .line 127
    :goto_0
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector$1;->val$listener:Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/SingleDateSelector$1;->this$0:Lccsancom/google/android/material/datepicker/SingleDateSelector;

    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/SingleDateSelector;->getSelection()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;->onSelectionChanged(Ljava/lang/Object;)V

    .line 128
    return-void
.end method
