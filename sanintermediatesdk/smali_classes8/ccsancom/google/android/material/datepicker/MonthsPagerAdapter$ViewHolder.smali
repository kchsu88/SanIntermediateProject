.class public Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MonthsPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final monthGrid:Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;

.field final monthTitle:Lccsanandroid/widget/TextView;


# direct methods
.method constructor <init>(Lccsanandroid/widget/LinearLayout;Z)V
    .locals 2
    .param p1, "container"    # Lccsanandroid/widget/LinearLayout;
    .param p2, "showLabel"    # Z

    .line 80
    invoke-direct {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Lccsanandroid/view/View;)V

    .line 81
    sget v0, Lccsancom/google/android/material/R$id;->month_title:I

    invoke-virtual {p1, v0}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthTitle:Lccsanandroid/widget/TextView;

    .line 82
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsanandroidx/core/view/ViewCompat;->setAccessibilityHeading(Lccsanandroid/view/View;Z)V

    .line 83
    sget v1, Lccsancom/google/android/material/R$id;->month_grid:I

    invoke-virtual {p1, v1}, Lccsanandroid/widget/LinearLayout;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;

    iput-object v1, p0, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter$ViewHolder;->monthGrid:Lccsancom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 84
    if-nez p2, :cond_0

    .line 85
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 87
    :cond_0
    return-void
.end method
