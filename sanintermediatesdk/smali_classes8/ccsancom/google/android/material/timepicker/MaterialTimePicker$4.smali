.class Lccsancom/google/android/material/timepicker/MaterialTimePicker$4;
.super Ljava/lang/Object;
.source "MaterialTimePicker.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


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

    .line 254
    iput-object p1, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$4;->this$0:Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 257
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$4;->this$0:Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {v0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->access$400(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->access$402(Lccsancom/google/android/material/timepicker/MaterialTimePicker;I)I

    .line 258
    iget-object v0, p0, Lccsancom/google/android/material/timepicker/MaterialTimePicker$4;->this$0:Lccsancom/google/android/material/timepicker/MaterialTimePicker;

    invoke-static {v0}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->access$500(Lccsancom/google/android/material/timepicker/MaterialTimePicker;)Lccsancom/google/android/material/button/MaterialButton;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/timepicker/MaterialTimePicker;->access$600(Lccsancom/google/android/material/timepicker/MaterialTimePicker;Lccsancom/google/android/material/button/MaterialButton;)V

    .line 259
    return-void
.end method
