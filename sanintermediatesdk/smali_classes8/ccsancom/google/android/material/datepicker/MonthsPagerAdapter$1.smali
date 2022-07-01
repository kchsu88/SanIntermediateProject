.class Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$1;
.super Ljava/lang/Object;
.source "MonthsPagerAdapter.java"

# interfaces
.implements Lccsanandroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->onBindViewHolder(Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

.field final synthetic val$monthGrid:Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 122
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$1;->this$0:Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

    iput-object p2, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$1;->val$monthGrid:Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lccsanandroid/widget/AdapterView;Lccsanandroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Lccsanandroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/widget/AdapterView<",
            "*>;",
            "Lccsanandroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 125
    .local p1, "parent":Lccsanandroid/widget/AdapterView;, "Lccsanandroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$1;->val$monthGrid:Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lccsancom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lccsancom/google/android/material/datepicker/MonthAdapter;->withinMonth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$1;->this$0:Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->access$000(Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;)Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$1;->val$monthGrid:Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lccsancom/google/android/material/datepicker/MonthAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lccsancom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;->onDayClick(J)V

    .line 128
    :cond_0
    return-void
.end method
