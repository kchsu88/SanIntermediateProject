.class Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;
.super Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;
.source "MaterialTextInputPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;

    .line 89
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;, "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;->this$0:Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;

    invoke-direct {p0}, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onIncompleteSelectionChanged()V
    .locals 2

    .line 99
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;, "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;->this$0:Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;

    iget-object v0, v0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 100
    .local v1, "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;->onIncompleteSelectionChanged()V

    .line 101
    .end local v1    # "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public onSelectionChanged(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;, "Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;"
    .local p1, "selection":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker$1;->this$0:Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;

    iget-object v0, v0, Lccsancom/google/android/material/datepicker/MaterialTextInputPicker;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 93
    .local v1, "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    invoke-virtual {v1, p1}, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;->onSelectionChanged(Ljava/lang/Object;)V

    .line 94
    .end local v1    # "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    goto :goto_0

    .line 95
    :cond_0
    return-void
.end method
