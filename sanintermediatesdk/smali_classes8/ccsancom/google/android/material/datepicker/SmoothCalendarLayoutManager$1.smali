.class Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager$1;
.super Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;
.source "SmoothCalendarLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager;->smoothScrollToPosition(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager;


# direct methods
.method constructor <init>(Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager;Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager;
    .param p2, "x0"    # Lccsanandroid/content/Context;

    .line 41
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager$1;->this$0:Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager;

    invoke-direct {p0, p2}, Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Lccsanandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Lccsanandroid/util/DisplayMetrics;)F
    .locals 2
    .param p1, "displayMetrics"    # Lccsanandroid/util/DisplayMetrics;

    .line 45
    iget v0, p1, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    return v1
.end method
