.class Lccsancom/google/android/material/datepicker/MaterialCalendar$5;
.super Lccsanandroidx/core/view/AccessibilityDelegateCompat;
.source "MaterialCalendar.java"


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

    .line 370
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$5;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$5;"
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2
    .param p1, "view"    # Lccsanandroid/view/View;
    .param p2, "accessibilityNodeInfoCompat"    # Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 375
    .local p0, "this":Lccsancom/google/android/material/datepicker/MaterialCalendar$5;, "Lccsancom/google/android/material/datepicker/MaterialCalendar$5;"
    invoke-super {p0, p1, p2}, Lccsanandroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Lccsanandroid/view/View;Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 376
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    .line 377
    invoke-static {v0}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->access$500(Lccsancom/google/android/material/datepicker/MaterialCalendar;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    sget v1, Lccsancom/google/android/material/R$string;->mtrl_picker_toggle_to_year_selection:I

    .line 378
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/android/material/datepicker/MaterialCalendar$5;->this$0:Lccsancom/google/android/material/datepicker/MaterialCalendar;

    sget v1, Lccsancom/google/android/material/R$string;->mtrl_picker_toggle_to_day_selection:I

    .line 379
    invoke-virtual {v0, v1}, Lccsancom/google/android/material/datepicker/MaterialCalendar;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_0
    invoke-virtual {p2, v0}, Lccsanandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setHintText(Ljava/lang/CharSequence;)V

    .line 380
    return-void
.end method
