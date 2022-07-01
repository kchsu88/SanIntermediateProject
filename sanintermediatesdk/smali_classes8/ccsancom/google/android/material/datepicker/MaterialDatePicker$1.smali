.class Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/MaterialDatePicker;->onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
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

    .line 244
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 3
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 248
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$000(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;

    .line 249
    .local v1, "listener":Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;, "Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<-TS;>;"
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {v2}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->getSelection()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;->onPositiveButtonClick(Ljava/lang/Object;)V

    .line 250
    .end local v1    # "listener":Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener;, "Lccsancom/google/android/material/datepicker/MaterialPickerOnPositiveButtonClickListener<-TS;>;"
    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$1;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dismiss()V

    .line 252
    return-void
.end method
