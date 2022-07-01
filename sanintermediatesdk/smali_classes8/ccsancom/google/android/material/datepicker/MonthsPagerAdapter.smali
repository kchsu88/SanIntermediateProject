.class Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MonthsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

.field private final context:Lccsanandroid/content/Context;

.field private final dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field private final itemHeight:I

.field private final onDayClickListener:Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Lccsancom/google/android/material/datepicker/DateSelector;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;)V
    .locals 6
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p3, "calendarConstraints"    # Lccsancom/google/android/material/datepicker/CalendarConstraints;
    .param p4, "onDayClickListener"    # Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lccsancom/google/android/material/datepicker/CalendarConstraints;",
            "Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;",
            ")V"
        }
    .end annotation

    .line 50
    .local p2, "dateSelector":Lccsancom/google/android/material/datepicker/DateSelector;, "Lccsancom/google/android/material/datepicker/DateSelector<*>;"
    invoke-direct {p0}, Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 51
    invoke-virtual {p3}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getStart()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    .line 52
    .local v0, "firstPage":Lccsancom/google/android/material/datepicker/Month;
    invoke-virtual {p3}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getEnd()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v1

    .line 53
    .local v1, "lastPage":Lccsancom/google/android/material/datepicker/Month;
    invoke-virtual {p3}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v2

    .line 55
    .local v2, "currentPage":Lccsancom/google/android/material/datepicker/Month;
    invoke-virtual {v0, v2}, Lccsancom/google/android/material/datepicker/Month;->compareTo(Lccsancom/google/android/material/datepicker/Month;)I

    move-result v3

    if-gtz v3, :cond_2

    .line 58
    invoke-virtual {v2, v1}, Lccsancom/google/android/material/datepicker/Month;->compareTo(Lccsancom/google/android/material/datepicker/Month;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 62
    sget v3, Lccsancom/google/android/material/datepicker/MonthAdapter;->MAXIMUM_WEEKS:I

    invoke-static {p1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getDayHeight(Lccsanandroid/content/Context;)I

    move-result v4

    mul-int v3, v3, v4

    .line 63
    .local v3, "daysHeight":I
    nop

    .line 64
    invoke-static {p1}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Lccsanandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getDayHeight(Lccsanandroid/content/Context;)I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 66
    .local v4, "labelHeight":I
    :goto_0
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->context:Lccsanandroid/content/Context;

    .line 67
    add-int v5, v3, v4

    iput v5, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->itemHeight:I

    .line 68
    iput-object p3, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    .line 69
    iput-object p2, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    .line 70
    iput-object p4, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->onDayClickListener:Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;

    .line 71
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->setHasStableIds(Z)V

    .line 72
    return-void

    .line 59
    .end local v3    # "daysHeight":I
    .end local v4    # "labelHeight":I
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "currentPage cannot be after lastPage"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 56
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "firstPage cannot be after currentPage"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic access$000(Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;)Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 38
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->onDayClickListener:Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 139
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getMonthSpan()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 134
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getStart()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/datepicker/Month;->monthsLater(I)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/Month;->getStableId()J

    move-result-wide v0

    return-wide v0
.end method

.method getPageMonth(I)Lccsancom/google/android/material/datepicker/Month;
    .locals 1
    .param p1, "position"    # I

    .line 149
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getStart()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/datepicker/Month;->monthsLater(I)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    return-object v0
.end method

.method getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "position"    # I

    .line 144
    invoke-virtual {p0, p1}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->getPageMonth(I)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->context:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/datepicker/Month;->getLongName(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPosition(Lccsancom/google/android/material/datepicker/Month;)I
    .locals 1
    .param p1, "month"    # Lccsancom/google/android/material/datepicker/Month;

    .line 153
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getStart()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/android/material/datepicker/Month;->monthsUntil(Lccsancom/google/android/material/datepicker/Month;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->onBindViewHolder(Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;I)V
    .locals 5
    .param p1, "viewHolder"    # Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
    .param p2, "position"    # I

    .line 108
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getStart()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccsancom/google/android/material/datepicker/Month;->monthsLater(I)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v0

    .line 109
    .local v0, "month":Lccsancom/google/android/material/datepicker/Month;
    iget-object v1, p1, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthTitle:Lccsanandroid/widget/TextView;

    iget-object v2, p1, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->itemView:Lccsanandroid/view/View;

    invoke-virtual {v2}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/datepicker/Month;->getLongName(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v1, p1, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthGrid:Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;

    sget v2, Lccsancom/google/android/material/R$id;->month_grid:I

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 112
    .local v1, "monthGrid":Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;
    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lccsancom/google/android/material/datepicker/MonthAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lccsancom/google/android/material/datepicker/MonthAdapter;

    move-result-object v2

    iget-object v2, v2, Lccsancom/google/android/material/datepicker/MonthAdapter;->month:Lccsancom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->invalidate()V

    .line 114
    invoke-virtual {v1}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lccsancom/google/android/material/datepicker/MonthAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/google/android/material/datepicker/MonthAdapter;->updateSelectedStates(Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance v2, Lccsancom/google/android/material/datepicker/MonthAdapter;

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    iget-object v4, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    invoke-direct {v2, v0, v3, v4}, Lccsancom/google/android/material/datepicker/MonthAdapter;-><init>(Lccsancom/google/android/material/datepicker/Month;Lccsancom/google/android/material/datepicker/DateSelector;Lccsancom/google/android/material/datepicker/CalendarConstraints;)V

    .line 117
    .local v2, "monthAdapter":Lccsancom/google/android/material/datepicker/MonthAdapter;
    iget v3, v0, Lccsancom/google/android/material/datepicker/Month;->daysInWeek:I

    invoke-virtual {v1, v3}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->setNumColumns(I)V

    .line 118
    invoke-virtual {v1, v2}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 121
    .end local v2    # "monthAdapter":Lccsancom/google/android/material/datepicker/MonthAdapter;
    :goto_0
    new-instance v2, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$1;

    invoke-direct {v2, p0, v1}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$1;-><init>(Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;->setOnItemClickListener(Lccsanandroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Lccsanandroid/view/ViewGroup;I)Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 93
    nop

    .line 95
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$layout;->mtrl_calendar_month_labeled:I

    .line 96
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout;

    .line 98
    .local v0, "container":Lccsanandroid/widget/LinearLayout;
    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Lccsanandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->itemHeight:I

    invoke-direct {v1, v2, v3}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v1, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;-><init>(Lccsanandroid/widget/LinearLayout;Z)V

    return-object v1

    .line 102
    :cond_0
    new-instance v1, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;

    invoke-direct {v1, v0, v2}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;-><init>(Lccsanandroid/widget/LinearLayout;Z)V

    return-object v1
.end method
