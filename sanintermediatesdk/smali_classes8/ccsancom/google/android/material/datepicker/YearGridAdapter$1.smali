.class Lccsancom/google/android/material/datepicker/YearGridAdapter$1;
.super Ljava/lang/Object;
.source "YearGridAdapter.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/YearGridAdapter;->createYearClickListener(I)Lccsanandroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/YearGridAdapter;

.field final synthetic val$year:I


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/YearGridAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/YearGridAdapter;

    .line 84
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter$1;->this$0:Lccsancom/google/android/material/datepicker/YearGridAdapter;

    iput p2, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter$1;->val$year:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 5
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 87
    iget v0, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter$1;->val$year:I

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter$1;->this$0:Lccsancom/google/android/material/datepicker/YearGridAdapter;

    invoke-static {v1}, Lccsancom/google/android/material/datepicker/YearGridAdapter;->access$000(Lccsancom/google/android/material/datepicker/YearGridAdapter;)Lccsancom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getCurrentMonth()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v1

    iget v1, v1, Lccsancom/google/android/material/datepicker/Month;->month:I

    invoke-static {v0, v1}, Lccsancom/google/android/material/datepicker/Month;->create(II)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    .line 88
    .local v0, "current":Lccsancom/google/android/material/datepicker/Month;
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter$1;->this$0:Lccsancom/google/android/material/datepicker/YearGridAdapter;

    invoke-static {v1}, Lccsancom/google/android/material/datepicker/YearGridAdapter;->access$000(Lccsancom/google/android/material/datepicker/YearGridAdapter;)Lccsancom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lccsancom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v1

    .line 89
    .local v1, "calendarConstraints":Lccsancom/google/android/material/datepicker/CalendarConstraints;
    invoke-virtual {v1, v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->clamp(Lccsancom/google/android/material/datepicker/Month;)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v2

    .line 90
    .local v2, "moveTo":Lccsancom/google/android/material/datepicker/Month;
    iget-object v3, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter$1;->this$0:Lccsancom/google/android/material/datepicker/YearGridAdapter;

    invoke-static {v3}, Lccsancom/google/android/material/datepicker/YearGridAdapter;->access$000(Lccsancom/google/android/material/datepicker/YearGridAdapter;)Lccsancom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lccsancom/google/android/material/datepicker/Month;)V

    .line 91
    iget-object v3, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter$1;->this$0:Lccsancom/google/android/material/datepicker/YearGridAdapter;

    invoke-static {v3}, Lccsancom/google/android/material/datepicker/YearGridAdapter;->access$000(Lccsancom/google/android/material/datepicker/YearGridAdapter;)Lccsancom/google/android/material/datepicker/MaterialCalendar;

    move-result-object v3

    sget-object v4, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {v3, v4}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 92
    return-void
.end method
