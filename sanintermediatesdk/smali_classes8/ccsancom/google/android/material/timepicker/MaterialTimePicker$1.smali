.class Lccsancom/google/android/material/timepicker/MaterialTimePicker$1;
.super Ljava/lang/Object;
.source "MaterialTimePicker.java"

# interfaces
.implements Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/timepicker/MaterialTimePicker;->onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/timepicker/MaterialTimePicker;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    .line 208
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap()V
    .locals 2

    .line 211
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->access$402(Lccsancom/google/android/material/timepicker/MaterialTimePicker;I)I

    .line 212
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {v0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->access$500(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)Lccsancom/google/android/material/button/MaterialButton;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->access$600(Lccsancom/google/android/material/timepicker/MaterialTimePicker;Lccsancom/google/android/material/button/MaterialButton;)V

    .line 213
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$1;->this$0:Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {v0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->access$700(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/timepicker/TimePickerTextInputPresenter;->resetChecked()V

    .line 214
    return-void
.end method
