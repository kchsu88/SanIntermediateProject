.class Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/MaterialDatePicker;->initHeaderToggle(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    .line 371
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 375
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$400(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsanandroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v1}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$300(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsancom/google/android/material/datepicker/DateSelector;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/Button;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$500(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsancom/google/android/material/internal/CheckableImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/internal/CheckableImageButton;->toggle()V

    .line 378
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$500(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Lccsancom/google/android/material/internal/CheckableImageButton;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$600(Lccsancom/google/android/material/datepicker/MaterialDatePicker;Lccsancom/google/android/material/internal/CheckableImageButton;)V

    .line 379
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$700(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)V

    .line 380
    return-void
.end method
