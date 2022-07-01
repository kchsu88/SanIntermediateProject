.class Lccsancom/google/android/material/timepicker/TimePickerView$1;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/timepicker/TimePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/timepicker/TimePickerView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/timepicker/TimePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/timepicker/TimePickerView;

    .line 77
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/TimePickerView$1;->this$0:Lccsancom/google/android/material/timepicker/TimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 80
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView$1;->this$0:Lccsancom/google/android/material/timepicker/TimePickerView;

    invoke-static {v0}, Lccsancom/google/android/material/timepicker/TimePickerView;->access$000(Lccsancom/google/android/material/timepicker/TimePickerView;)Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView$1;->this$0:Lccsancom/google/android/material/timepicker/TimePickerView;

    invoke-static {v0}, Lccsancom/google/android/material/timepicker/TimePickerView;->access$000(Lccsancom/google/android/material/timepicker/TimePickerView;)Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$id;->selection_type:I

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/google/android/material/timepicker/TimePickerView$OnSelectionChange;->onSelectionChanged(I)V

    .line 83
    :cond_0
    return-void
.end method
