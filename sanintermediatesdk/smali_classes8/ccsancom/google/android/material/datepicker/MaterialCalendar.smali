.class public final Lccsancom/google/android/material/datepicker/MaterialCalendar;
.super Lccsancom/google/android/material/datepicker/PickerFragment;
.source "MaterialCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;,
        Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/android/material/datepicker/PickerFragment<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field private static final CURRENT_MONTH_KEY:Ljava/lang/String; = "CURRENT_MONTH_KEY"

.field private static final GRID_SELECTOR_KEY:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field static final MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

.field static final NAVIGATION_NEXT_TAG:Ljava/lang/Object;

.field static final NAVIGATION_PREV_TAG:Ljava/lang/Object;

.field static final SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

.field private static final SMOOTH_SCROLL_MAX:I = 0x3

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID_KEY"


# instance fields
.field private calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

.field private calendarSelector:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

.field private calendarStyle:Lccsancom/google/android/material/datepicker/CalendarStyle;

.field private current:Lccsancom/google/android/material/datepicker/Month;

.field private dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private dayFrame:Lccsanandroid/view/View;

.field private recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

.field private themeResId:I

.field private yearFrame:Lccsanandroid/view/View;

.field private yearSelector:Lccsanandroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    sput-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    .line 76
    const-string v0, "NAVIGATION_PREV_TAG"

    sput-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    .line 78
    const-string v0, "NAVIGATION_NEXT_TAG"

    sput-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    .line 80
    const-string v0, "SELECTOR_TOGGLE_TAG"

    sput-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    invoke-direct {p0}, Lccsancom/google/android/material/datepicker/PickerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsanandroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsancom/google/android/material/datepicker/CalendarConstraints;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsancom/google/android/material/datepicker/DateSelector;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsanandroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Lccsanandroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$400(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsancom/google/android/material/datepicker/CalendarStyle;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lccsancom/google/android/material/datepicker/CalendarStyle;

    return-object v0
.end method

.method static synthetic access$500(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsanandroid/view/View;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 60
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Lccsanandroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lccsancom/google/android/material/datepicker/MaterialCalendar;Lccsancom/google/android/material/datepicker/Month;)Lccsancom/google/android/material/datepicker/Month;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;
    .param p1, "x1"    # Lccsancom/google/android/material/datepicker/Month;

    .line 60
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    return-object p1
.end method

.method private addActionsToMonthNavigation(Lccsanandroid/view/View;Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;)V
    .locals 5
    .param p1, "root"    # Lccsanandroid/view/View;
    .param p2, "monthsPagerAdapter"    # Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 366
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    sget v0, Lccsancom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/button/MaterialButton;

    .line 367
    .local v0, "monthDropSelect":Lccsancom/google/android/material/button/MaterialButton;
    sget-object v1, Lccsancom/google/android/material/datepicker/MaterialCalendar;->SELECTOR_TOGGLE_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccsancom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 368
    new-instance v1, Lccsancom/google/android/material/datepicker/MaterialCalendar$5;

    invoke-direct {v1, p0}, Lccsancom/google/android/material/datepicker/MaterialCalendar$5;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 383
    sget v1, Lccsancom/google/android/material/R$id;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/button/MaterialButton;

    .line 384
    .local v1, "monthPrev":Lccsancom/google/android/material/button/MaterialButton;
    sget-object v2, Lccsancom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_PREV_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 385
    sget v2, Lccsancom/google/android/material/R$id;->month_navigation_next:I

    invoke-virtual {p1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/material/button/MaterialButton;

    .line 386
    .local v2, "monthNext":Lccsancom/google/android/material/button/MaterialButton;
    sget-object v3, Lccsancom/google/android/material/datepicker/MaterialCalendar;->NAVIGATION_NEXT_TAG:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 388
    sget v3, Lccsancom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Lccsanandroid/view/View;

    .line 389
    sget v3, Lccsancom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Lccsanandroid/view/View;

    .line 390
    sget-object v3, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v3}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 391
    iget-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/android/material/datepicker/Month;->getLongName(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lccsancom/google/android/material/datepicker/MaterialCalendar$6;

    invoke-direct {v4, p0, p2, v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar$6;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;Lccsancom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v3, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Lccsanandroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 419
    new-instance v3, Lccsancom/google/android/material/datepicker/MaterialCalendar$7;

    invoke-direct {v3, p0}, Lccsancom/google/android/material/datepicker/MaterialCalendar$7;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-virtual {v0, v3}, Lccsancom/google/android/material/button/MaterialButton;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 427
    new-instance v3, Lccsancom/google/android/material/datepicker/MaterialCalendar$8;

    invoke-direct {v3, p0, p2}, Lccsancom/google/android/material/datepicker/MaterialCalendar$8;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;)V

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/button/MaterialButton;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 437
    new-instance v3, Lccsancom/google/android/material/datepicker/MaterialCalendar$9;

    invoke-direct {v3, p0, p2}, Lccsancom/google/android/material/datepicker/MaterialCalendar$9;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;)V

    invoke-virtual {v1, v3}, Lccsancom/google/android/material/button/MaterialButton;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 447
    return-void
.end method

.method private createItemDecoration()Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .locals 1

    .line 232
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    new-instance v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$4;

    invoke-direct {v0, p0}, Lccsancom/google/android/material/datepicker/MaterialCalendar$4;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V

    return-object v0
.end method

.method static getDayHeight(Lccsanandroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 335
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsancom/google/android/material/R$dimen;->mtrl_calendar_day_height:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static newInstance(Lccsancom/google/android/material/datepicker/DateSelector;ILccsancom/google/android/material/datepicker/CalendarConstraints;)Lccsancom/google/android/material/datepicker/MaterialCalendar;
    .locals 4
    .param p1, "themeResId"    # I
    .param p2, "calendarConstraints"    # Lccsancom/google/android/material/datepicker/CalendarConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "TT;>;I",
            "Lccsancom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lccsancom/google/android/material/datepicker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    .line 98
    .local p0, "dateSelector":Lccsancom/google/android/material/datepicker/DateSelector;, "Lccsancom/google/android/material/datepicker/DateSelector<TT;>;"
    new-instance v0, Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;-><init>()V

    .line 99
    .local v0, "materialCalendar":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TT;>;"
    new-instance v1, Lccsanandroid/os/Bundle;

    invoke-direct {v1}, Lccsanandroid/os/Bundle;-><init>()V

    .line 100
    .local v1, "args":Lccsanandroid/os/Bundle;
    const-string v2, "THEME_RES_ID_KEY"

    invoke-virtual {v1, v2, p1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 101
    const-string v2, "GRID_SELECTOR_KEY"

    invoke-virtual {v1, v2, p0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 102
    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v1, v2, p2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 103
    invoke-virtual {p2}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getOpenAt()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v2

    const-string v3, "CURRENT_MONTH_KEY"

    invoke-virtual {v1, v3, v2}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 104
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->setArguments(Lccsanandroid/os/Bundle;)V

    .line 105
    return-object v0
.end method

.method private postSmoothRecyclerViewScroll(I)V
    .locals 2
    .param p1, "position"    # I

    .line 450
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lccsancom/google/android/material/datepicker/MaterialCalendar$10;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/material/datepicker/MaterialCalendar$10;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;I)V

    invoke-virtual {v0, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 457
    return-void
.end method


# virtual methods
.method public addOnSelectionChangedListener(Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<",
            "TS;>;)Z"
        }
    .end annotation

    .line 466
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    .local p1, "listener":Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;, "Lccsancom/google/android/material/datepicker/OnSelectionChangedListener<TS;>;"
    invoke-super {p0, p1}, Lccsancom/google/android/material/datepicker/PickerFragment;->addOnSelectionChangedListener(Lccsancom/google/android/material/datepicker/OnSelectionChangedListener;)Z

    move-result v0

    return v0
.end method

.method getCalendarConstraints()Lccsancom/google/android/material/datepicker/CalendarConstraints;
    .locals 1

    .line 290
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    return-object v0
.end method

.method getCalendarStyle()Lccsancom/google/android/material/datepicker/CalendarStyle;
    .locals 1

    .line 324
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lccsancom/google/android/material/datepicker/CalendarStyle;

    return-object v0
.end method

.method getCurrentMonth()Lccsancom/google/android/material/datepicker/Month;
    .locals 1

    .line 284
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    return-object v0
.end method

.method public getDateSelector()Lccsancom/google/android/material/datepicker/DateSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation

    .line 320
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    return-object v0
.end method

.method getLayoutManager()Lccsanandroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 461
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 119
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    invoke-super {p0, p1}, Lccsancom/google/android/material/datepicker/PickerFragment;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 120
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getArguments()Lccsanandroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 121
    .local v0, "activeBundle":Lccsanandroid/os/Bundle;
    :goto_0
    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    .line 122
    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/DateSelector;

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    .line 123
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/CalendarConstraints;

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    .line 124
    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getParcelable(Ljava/lang/String;)Lccsanandroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/Month;

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    .line 125
    return-void
.end method

.method public onCreateView(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;Lccsanandroid/os/Bundle;)Lccsanandroid/view/View;
    .locals 18
    .param p1, "layoutInflater"    # Lccsanandroid/view/LayoutInflater;
    .param p2, "viewGroup"    # Lccsanandroid/view/ViewGroup;
    .param p3, "bundle"    # Lccsanandroid/os/Bundle;

    .line 133
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    move-object/from16 v6, p0

    new-instance v0, Lccsanandroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget v2, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    invoke-direct {v0, v1, v2}, Lccsanandroid/view/ContextThemeWrapper;-><init>(Lccsanandroid/content/Context;I)V

    move-object v7, v0

    .line 134
    .local v7, "themedContext":Lccsanandroid/view/ContextThemeWrapper;
    new-instance v0, Lccsancom/google/android/material/datepicker/CalendarStyle;

    invoke-direct {v0, v7}, Lccsancom/google/android/material/datepicker/CalendarStyle;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarStyle:Lccsancom/google/android/material/datepicker/CalendarStyle;

    .line 135
    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Lccsanandroid/view/LayoutInflater;->cloneInContext(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v9

    .line 137
    .local v9, "themedInflater":Lccsanandroid/view/LayoutInflater;
    iget-object v0, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/CalendarConstraints;->getStart()Lccsancom/google/android/material/datepicker/Month;

    move-result-object v10

    .line 141
    .local v10, "earliestMonth":Lccsancom/google/android/material/datepicker/Month;
    invoke-static {v7}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget v0, Lccsancom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    .line 143
    .local v0, "layout":I
    const/4 v1, 0x1

    move v11, v0

    move v12, v1

    .local v1, "orientation":I
    goto :goto_0

    .line 145
    .end local v0    # "layout":I
    .end local v1    # "orientation":I
    :cond_0
    sget v0, Lccsancom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    .line 146
    .restart local v0    # "layout":I
    const/4 v1, 0x0

    move v11, v0

    move v12, v1

    .line 149
    .end local v0    # "layout":I
    .local v11, "layout":I
    .local v12, "orientation":I
    :goto_0
    const/4 v13, 0x0

    move-object/from16 v14, p2

    invoke-virtual {v9, v11, v14, v13}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v15

    .line 150
    .local v15, "root":Lccsanandroid/view/View;
    sget v0, Lccsancom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    invoke-virtual {v15, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lccsanandroid/widget/GridView;

    .line 151
    .local v5, "daysHeader":Lccsanandroid/widget/GridView;
    new-instance v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$1;

    invoke-direct {v0, v6}, Lccsancom/google/android/material/datepicker/MaterialCalendar$1;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-static {v5, v0}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityDelegate(Lccsanandroid/view/View;Lccsanandroidx/core/view/AccessibilityDelegateCompat;)V

    .line 162
    new-instance v0, Lccsancom/google/android/material/datepicker/DaysOfWeekAdapter;

    invoke-direct {v0}, Lccsancom/google/android/material/datepicker/DaysOfWeekAdapter;-><init>()V

    invoke-virtual {v5, v0}, Lccsanandroid/widget/GridView;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    .line 163
    iget v0, v10, Lccsancom/google/android/material/datepicker/Month;->daysInWeek:I

    invoke-virtual {v5, v0}, Lccsanandroid/widget/GridView;->setNumColumns(I)V

    .line 164
    invoke-virtual {v5, v13}, Lccsanandroid/widget/GridView;->setEnabled(Z)V

    .line 166
    sget v0, Lccsancom/google/android/material/R$id;->mtrl_calendar_months:I

    invoke-virtual {v15, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 168
    new-instance v16, Lccsancom/google/android/material/datepicker/MaterialCalendar$2;

    .line 169
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v3, v12

    move-object/from16 v17, v5

    .end local v5    # "daysHeader":Lccsanandroid/widget/GridView;
    .local v17, "daysHeader":Lccsanandroid/widget/GridView;
    move v5, v12

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/material/datepicker/MaterialCalendar$2;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;Lccsanandroid/content/Context;IZI)V

    .line 181
    .local v0, "layoutManager":Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager;
    iget-object v1, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 182
    iget-object v1, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    sget-object v2, Lccsancom/google/android/material/datepicker/MaterialCalendar;->MONTHS_VIEW_GROUP_TAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 184
    new-instance v1, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

    iget-object v2, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    iget-object v3, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    new-instance v4, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;

    invoke-direct {v4, v6}, Lccsancom/google/android/material/datepicker/MaterialCalendar$3;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-direct {v1, v7, v2, v3, v4}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;-><init>(Lccsanandroid/content/Context;Lccsancom/google/android/material/datepicker/DateSelector;Lccsancom/google/android/material/datepicker/CalendarConstraints;Lccsancom/google/android/material/datepicker/MaterialCalendar$OnDayClickListener;)V

    .line 206
    .local v1, "monthsPagerAdapter":Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;
    iget-object v2, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 208
    nop

    .line 209
    invoke-virtual {v7}, Lccsanandroid/view/ContextThemeWrapper;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    sget v3, Lccsancom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v2, v3}, Lccsanandroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 210
    .local v2, "columns":I
    sget v3, Lccsancom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {v15, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroidx/recyclerview/widget/RecyclerView;

    iput-object v3, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 211
    if-eqz v3, :cond_1

    .line 212
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 213
    iget-object v3, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lccsanandroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, v7, v2, v4, v13}, Lccsanandroidx/recyclerview/widget/GridLayoutManager;-><init>(Lccsanandroid/content/Context;IIZ)V

    invoke-virtual {v3, v5}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 215
    iget-object v3, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Lccsanandroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lccsancom/google/android/material/datepicker/YearGridAdapter;

    invoke-direct {v4, v6}, Lccsancom/google/android/material/datepicker/YearGridAdapter;-><init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V

    invoke-virtual {v3, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView;->setAdapter(Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 216
    iget-object v3, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-direct/range {p0 .. p0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Lccsanandroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 219
    :cond_1
    sget v3, Lccsancom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {v15, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 220
    invoke-direct {v6, v15, v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Lccsanandroid/view/View;Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;)V

    .line 223
    :cond_2
    invoke-static {v7}, Lccsancom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Lccsanandroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 224
    new-instance v3, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;

    invoke-direct {v3}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;-><init>()V

    iget-object v4, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lccsanandroidx/recyclerview/widget/PagerSnapHelper;->attachToRecyclerView(Lccsanandroidx/recyclerview/widget/RecyclerView;)V

    .line 226
    :cond_3
    iget-object v3, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v6, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    invoke-virtual {v1, v4}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lccsancom/google/android/material/datepicker/Month;)I

    move-result v4

    invoke-virtual {v3, v4}, Lccsanandroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 227
    return-object v15
.end method

.method public onSaveInstanceState(Lccsanandroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Lccsanandroid/os/Bundle;

    .line 110
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    invoke-super {p0, p1}, Lccsancom/google/android/material/datepicker/PickerFragment;->onSaveInstanceState(Lccsanandroid/os/Bundle;)V

    .line 111
    iget v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->themeResId:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->dateSelector:Lccsancom/google/android/material/datepicker/DateSelector;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 113
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarConstraints:Lccsancom/google/android/material/datepicker/CalendarConstraints;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 114
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/os/Bundle;->putParcelable(Ljava/lang/String;Lccsanandroid/os/Parcelable;)V

    .line 115
    return-void
.end method

.method setCurrentMonth(Lccsancom/google/android/material/datepicker/Month;)V
    .locals 7
    .param p1, "moveTo"    # Lccsancom/google/android/material/datepicker/Month;

    .line 300
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

    .line 301
    .local v0, "adapter":Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;
    invoke-virtual {v0, p1}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lccsancom/google/android/material/datepicker/Month;)I

    move-result v1

    .line 302
    .local v1, "moveToPosition":I
    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->getPosition(Lccsancom/google/android/material/datepicker/Month;)I

    move-result v2

    sub-int v2, v1, v2

    .line 303
    .local v2, "distance":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-le v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 304
    .local v3, "jump":Z
    :goto_0
    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 305
    .local v4, "isForward":Z
    :goto_1
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    .line 306
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 307
    iget-object v5, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v6, v1, -0x3

    invoke-virtual {v5, v6}, Lccsanandroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 308
    invoke-direct {p0, v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    goto :goto_2

    .line 309
    :cond_2
    if-eqz v3, :cond_3

    .line 310
    iget-object v5, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->recyclerView:Lccsanandroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v6, v1, 0x3

    invoke-virtual {v5, v6}, Lccsanandroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 311
    invoke-direct {p0, v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    goto :goto_2

    .line 313
    :cond_3
    invoke-direct {p0, v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->postSmoothRecyclerViewScroll(I)V

    .line 315
    :goto_2
    return-void
.end method

.method setSelector(Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V
    .locals 5
    .param p1, "selector"    # Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 339
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    .line 340
    sget-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 341
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 342
    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v3, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearSelector:Lccsanandroidx/recyclerview/widget/RecyclerView;

    .line 344
    invoke-virtual {v3}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getAdapter()Lccsanandroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    check-cast v3, Lccsancom/google/android/material/datepicker/YearGridAdapter;

    iget-object v4, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    iget v4, v4, Lccsancom/google/android/material/datepicker/Month;->year:I

    invoke-virtual {v3, v4}, Lccsancom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    move-result v3

    .line 343
    invoke-virtual {v0, v3}, Lccsanandroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 345
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Lccsanandroid/view/View;

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 347
    :cond_0
    sget-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne p1, v0, :cond_1

    .line 348
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->yearFrame:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->dayFrame:Lccsanandroid/view/View;

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->current:Lccsancom/google/android/material/datepicker/Month;

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lccsancom/google/android/material/datepicker/Month;)V

    .line 354
    :cond_1
    :goto_0
    return-void
.end method

.method toggleVisibleSelector()V
    .locals 2

    .line 357
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar;, "Lccsancom/google/android/material/datepicker/MaterialCalendar<TS;>;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    sget-object v1, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne v0, v1, :cond_0

    .line 358
    sget-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar;->calendarSelector:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    sget-object v1, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->DAY:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    if-ne v0, v1, :cond_1

    .line 360
    sget-object v0, Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;->YEAR:Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;

    invoke-virtual {p0, v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->setSelector(Lccsancom/google/android/material/datepicker/MaterialCalendar$CalendarSelector;)V

    .line 362
    :cond_1
    :goto_0
    return-void
.end method
