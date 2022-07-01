.class Lccsancom/google/android/material/timepicker/TimePickerView$3;
.super Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;
.source "TimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/timepicker/TimePickerView;->setupDoubleTap()V
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

    .line 129
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/TimePickerView$3;->this$0:Lccsancom/google/android/material/timepicker/TimePickerView;

    invoke-direct {p0}, Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Lccsanandroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Lccsanandroid/view/MotionEvent;

    .line 132
    invoke-super {p0, p1}, Lccsanandroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    .line 133
    .local v0, "ret":Z
    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerView$3;->this$0:Lccsancom/google/android/material/timepicker/TimePickerView;

    invoke-static {v1}, Lccsancom/google/android/material/timepicker/TimePickerView;->access$200(Lccsancom/google/android/material/timepicker/TimePickerView;)Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lccsancom/google/android/material/timepicker/TimePickerView$3;->this$0:Lccsancom/google/android/material/timepicker/TimePickerView;

    invoke-static {v1}, Lccsancom/google/android/material/timepicker/TimePickerView;->access$200(Lccsancom/google/android/material/timepicker/TimePickerView;)Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/android/material/timepicker/TimePickerView$OnDoubleTapListener;->onDoubleTap()V

    .line 137
    :cond_0
    return v0
.end method
