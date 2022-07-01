.class Lccsancom/google/android/material/datepicker/MaterialCalendar$9;
.super Ljava/lang/Object;
.source "MaterialCalendar.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/MaterialCalendar;->addActionsToMonthNavigation(Lccsanandroid/view/View;Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

.field final synthetic val$monthsPagerAdapter:Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 438
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$9;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$9;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$9;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    iput-object p2, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$9;->val$monthsPagerAdapter:Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 4
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 441
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$9;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$9;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$9;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getLayoutManager()Lccsanandroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 442
    .local v0, "currentItem":I
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_0

    .line 443
    iget-object v1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$9;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    iget-object v2, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$9;->val$monthsPagerAdapter:Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Lccsancom/google/android/material/datepicker/MonthsPagerAdapter;->getPageMonth(I)Lccsancom/google/android/material/datepicker/Month;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->setCurrentMonth(Lccsancom/google/android/material/datepicker/Month;)V

    .line 445
    :cond_0
    return-void
.end method
