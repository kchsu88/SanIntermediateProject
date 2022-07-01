.class Lccsancom/google/android/material/datepicker/MaterialCalendar$3;
.super Ljava/lang/Object;
.source "MaterialCalendar.java"

# interfaces
.implements Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/MaterialCalendar;->onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 189
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$3;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$3;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(J)V
    .locals 3
    .param p1, "day"    # J

    .line 193
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$3;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$3;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->access$100(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsancom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getDateValidator()Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/material/datepicker/CalendarConstraints$DateValidator;->isValid(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->access$200(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsancom/google/android/material/datepicker/DateSelector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/material/datepicker/DateSelector;->select(J)V

    .line 195
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    iget-object v0, v0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;

    .line 196
    .local v1, "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v2}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->access$200(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsancom/google/android/material/datepicker/DateSelector;

    move-result-object v2

    invoke-interface {v2}, Lccsancom/google/android/material/datepicker/DateSelector;->getSelection()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;->onSelectionChanged(Ljava/lang/Object;)V

    .line 197
    .end local v1    # "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->access$000(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsanandroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 200
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->access$300(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsanandroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->access$300(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsanandroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 204
    :cond_1
    return-void
.end method
