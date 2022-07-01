.class Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;
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

    .line 258
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2
    .param p1, "v"    # Lccsanandroid/view/View;

    .line 261
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;, "Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->access$100(Lccsancom/google/android/material/datepicker/MaterialDatePicker;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/view/View$OnClickListener;

    .line 262
    .local v1, "listener":Lccsanandroid/view/View$OnClickListener;
    invoke-interface {v1, p1}, Lccsanandroid/view/View$OnClickListener;->onClick(Lccsanandroid/view/View;)V

    .line 263
    .end local v1    # "listener":Lccsanandroid/view/View$OnClickListener;
    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialDatePicker$2;->this$0:Lccsancom/google/android/material/datepicker/MaterialDatePicker;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->dismiss()V

    .line 265
    return-void
.end method
