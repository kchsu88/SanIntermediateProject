.class Lccsancom/google/android/material/datepicker/YearGridAdapter;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;
.source "YearGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final materialCalendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/datepicker/MaterialCalendar<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/datepicker/MaterialCalendar<",
            "*>;)V"
        }
    .end annotation

    .line 45
    .local p1, "materialCalendar":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<*>;"
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 46
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/datepicker/YearGridAdapter;)Lccsancom/google/android/material/datepicker/MaterialCalendar;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/YearGridAdapter;

    .line 31
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    return-object v0
.end method

.method private createYearClickListener(I)Lccsanandroid/view/View$OnClickListener;
    .locals 1
    .param p1, "year"    # I

    .line 84
    new-instance v0, Lccsancom/google/android/material/datepicker/YearGridAdapter$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/android/material/datepicker/YearGridAdapter$1;-><init>(Lccsancom/google/android/material/datepicker/YearGridAdapter;I)V

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lccsancom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getYearSpan()I

    move-result v0

    return v0
.end method

.method getPositionForYear(I)I
    .locals 1
    .param p1, "year"    # I

    .line 102
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lccsancom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getStart()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lccsancom/google/android/material/datepicker/Month;->year:I

    sub-int v0, p1, v0

    return v0
.end method

.method getYearForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 106
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getCalendarConstraints()Lccsancom/google/android/material/datepicker/CalendarConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getStart()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    iget v0, v0, Lccsancom/google/android/material/datepicker/Month;->year:I

    add-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 31
    check-cast p1, Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/datepicker/YearGridAdapter;->onBindViewHolder(Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;I)V
    .locals 10
    .param p1, "viewHolder"    # Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 61
    invoke-virtual {p0, p2}, Lccsancom/google/android/material/datepicker/YearGridAdapter;->getYearForPosition(I)I

    move-result v0

    .line 62
    .local v0, "year":I
    iget-object v1, p1, Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Lccsanandroid/widget/TextView;

    .line 65
    invoke-virtual {v1}, Lccsanandroid/widget/TextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    sget v2, Lccsancom/google/android/material/R$string;->mtrl_picker_navigate_to_year_description:I

    .line 66
    invoke-virtual {v1, v2}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "navigateYear":Ljava/lang/String;
    iget-object v2, p1, Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Lccsanandroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "%d"

    invoke-static {v3, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, p1, Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Lccsanandroid/widget/TextView;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v2}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getCalendarStyle()Lccsancom/google/android/material/datepicker/CalendarStyle;

    move-result-object v2

    .line 70
    .local v2, "styles":Lccsancom/google/android/material/datepicker/CalendarStyle;
    invoke-static {}, Lccsancom/google/android/material/datepicker/UtcDates;->getTodayCalendar()Ljava/util/Calendar;

    move-result-object v3

    .line 71
    .local v3, "calendar":Ljava/util/Calendar;
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, v0, :cond_0

    iget-object v5, v2, Lccsancom/google/android/material/datepicker/CalendarStyle;->todayYear:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    goto :goto_0

    :cond_0
    iget-object v5, v2, Lccsancom/google/android/material/datepicker/CalendarStyle;->year:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    .line 72
    .local v5, "style":Lccsancom/google/android/material/datepicker/CalendarItemStyle;
    :goto_0
    iget-object v6, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter;->materialCalendar:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v6}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getDateSelector()Lccsancom/google/android/material/datepicker/DateSelector;

    move-result-object v6

    invoke-interface {v6}, Lccsancom/google/android/material/datepicker/DateSelector;->getSelectedDays()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 73
    .local v7, "day":Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v8

    if-ne v8, v0, :cond_1

    .line 75
    iget-object v5, v2, Lccsancom/google/android/material/datepicker/CalendarStyle;->selectedYear:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    .line 77
    .end local v7    # "day":Ljava/lang/Long;
    :cond_1
    goto :goto_1

    .line 78
    :cond_2
    iget-object v4, p1, Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Lccsanandroid/widget/TextView;

    invoke-virtual {v5, v4}, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Lccsanandroid/widget/TextView;)V

    .line 79
    iget-object v4, p1, Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Lccsanandroid/widget/TextView;

    invoke-direct {p0, v0}, Lccsancom/google/android/material/datepicker/YearGridAdapter;->createYearClickListener(I)Lccsanandroid/view/View$OnClickListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/datepicker/YearGridAdapter;->onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;
    .locals 3
    .param p1, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 52
    nop

    .line 54
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$layout;->ccsan_mtrl_calendar_year:I

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    .line 56
    .local v0, "yearTextView":Lccsanandroid/widget/TextView;
    new-instance v1, Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;

    invoke-direct {v1, v0}, Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;-><init>(Lccsanandroid/widget/TextView;)V

    return-object v1
.end method
