.class Lccsancom/google/android/material/datepicker/MaterialCalendar$7;
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


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 420
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$7;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$7;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$7;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 1
    .param p1, "view"    # Lccsanandroid/view/View;

    .line 423
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$7;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$7;"
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$7;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->toggleVisibleSelector()V

    .line 424
    return-void
.end method
