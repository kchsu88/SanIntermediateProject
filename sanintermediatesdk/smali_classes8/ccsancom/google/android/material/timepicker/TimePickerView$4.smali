.class Lccsancom/google/android/material/timepicker/TimePickerView$4;
.super Ljava/lang/Object;
.source "TimePickerView.java"

# interfaces
.implements Lccsanandroid/view/View$OnTouchListener;


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

.field final synthetic val$gestureDetector:Lccsanandroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/timepicker/TimePickerView;Lccsanandroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/timepicker/TimePickerView;

    .line 142
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/TimePickerView$4;->this$0:Lccsancom/google/android/material/timepicker/TimePickerView;

    iput-object p2, p0, Lccsancom/google/android/material/timepicker/TimePickerView$4;->val$gestureDetector:Lccsanandroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Lccsanandroid/view/View;Lccsanandroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Lccsanandroid/view/View;
    .param p2, "event"    # Lccsanandroid/view/MotionEvent;

    .line 145
    move-object v0, p1

    check-cast v0, Lccsanandroid/widget/Checkable;

    invoke-interface {v0}, Lccsanandroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/TimePickerView$4;->val$gestureDetector:Lccsanandroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Lccsanandroid/view/GestureDetector;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
