.class final Lccsancom/google/android/material/datepicker/CalendarStyle;
.super Ljava/lang/Object;
.source "CalendarStyle.java"


# instance fields
.field final day:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

.field final invalidDay:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

.field final rangeFill:Lccsanandroid/graphics/Paint;

.field final selectedDay:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

.field final selectedYear:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

.field final todayDay:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

.field final todayYear:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

.field final year:Lccsancom/google/android/material/datepicker/CalendarItemStyle;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget v0, Lccsancom/google/android/material/R$attr;->materialCalendarStyle:I

    const-class v1, Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {p1, v0, v1}, Lccsancom/google/android/material/resources/MaterialAttributes;->resolveOrThrow(Lccsanandroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "calendarStyle":I
    sget-object v1, Lccsancom/google/android/material/R$styleable;->MaterialCalendar:[I

    .line 79
    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Context;->obtainStyledAttributes(I[I)Lccsanandroid/content/res/TypedArray;

    move-result-object v1

    .line 81
    .local v1, "calendarAttributes":Lccsanandroid/content/res/TypedArray;
    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialCalendar_dayStyle:I

    .line 83
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 82
    invoke-static {p1, v2}, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->create(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/datepicker/CalendarStyle;->day:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    .line 84
    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialCalendar_dayInvalidStyle:I

    .line 87
    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 85
    invoke-static {p1, v2}, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->create(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/datepicker/CalendarStyle;->invalidDay:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    .line 88
    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialCalendar_daySelectedStyle:I

    .line 91
    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 89
    invoke-static {p1, v2}, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->create(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/datepicker/CalendarStyle;->selectedDay:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    .line 92
    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialCalendar_dayTodayStyle:I

    .line 95
    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 93
    invoke-static {p1, v2}, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->create(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v2

    iput-object v2, p0, Lccsancom/google/android/material/datepicker/CalendarStyle;->todayDay:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    .line 96
    sget v2, Lccsancom/google/android/material/R$styleable;->MaterialCalendar_rangeFillColor:I

    .line 97
    invoke-static {p1, v1, v2}, Lccsancom/google/android/material/resources/MaterialResources;->getColorStateList(Lccsanandroid/content/Context;Lccsanandroid/content/res/TypedArray;I)Lccsanandroid/content/res/ColorStateList;

    move-result-object v2

    .line 100
    .local v2, "rangeFillColorList":Lccsanandroid/content/res/ColorStateList;
    sget v4, Lccsancom/google/android/material/R$styleable;->MaterialCalendar_yearStyle:I

    .line 102
    invoke-virtual {v1, v4, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 101
    invoke-static {p1, v4}, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->create(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v4

    iput-object v4, p0, Lccsancom/google/android/material/datepicker/CalendarStyle;->year:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    .line 103
    sget v4, Lccsancom/google/android/material/R$styleable;->MaterialCalendar_yearSelectedStyle:I

    .line 106
    invoke-virtual {v1, v4, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 104
    invoke-static {p1, v4}, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->create(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v4

    iput-object v4, p0, Lccsancom/google/android/material/datepicker/CalendarStyle;->selectedYear:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    .line 107
    sget v4, Lccsancom/google/android/material/R$styleable;->MaterialCalendar_yearTodayStyle:I

    .line 110
    invoke-virtual {v1, v4, v3}, Lccsanandroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 108
    invoke-static {p1, v3}, Lccsancom/google/android/material/datepicker/CalendarItemStyle;->create(Lccsanandroid/content/Context;I)Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    move-result-object v3

    iput-object v3, p0, Lccsancom/google/android/material/datepicker/CalendarStyle;->todayYear:Lccsancom/google/android/material/datepicker/CalendarItemStyle;

    .line 112
    new-instance v3, Lccsanandroid/graphics/Paint;

    invoke-direct {v3}, Lccsanandroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lccsancom/google/android/material/datepicker/CalendarStyle;->rangeFill:Lccsanandroid/graphics/Paint;

    .line 113
    invoke-virtual {v2}, Lccsanandroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v3, v4}, Lccsanandroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-virtual {v1}, Lccsanandroid/content/res/TypedArray;->recycle()V

    .line 116
    return-void
.end method
