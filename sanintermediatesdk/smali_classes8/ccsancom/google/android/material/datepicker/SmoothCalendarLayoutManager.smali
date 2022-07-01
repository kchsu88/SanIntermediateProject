.class Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager;
.super Lccsanandroidx/recyclerview/widget/LinearLayoutManager;
.source "SmoothCalendarLayoutManager.java"


# static fields
.field private static final MILLISECONDS_PER_INCH:F = 100.0f


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;IZ)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/recyclerview/widget/LinearLayoutManager;-><init>(Lccsanandroid/content/Context;IZ)V

    .line 35
    return-void
.end method


# virtual methods
.method public smoothScrollToPosition(Lccsanandroidx/recyclerview/widget/RecyclerView;Lccsanandroidx/recyclerview/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Lccsanandroidx/recyclerview/widget/RecyclerView;
    .param p2, "state"    # Lccsanandroidx/recyclerview/widget/RecyclerView$State;
    .param p3, "position"    # I

    .line 40
    new-instance v0, Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager$1;

    .line 41
    invoke-virtual {p1}, Lccsanandroidx/recyclerview/widget/RecyclerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager$1;-><init>(Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager;Lccsanandroid/content/Context;)V

    .line 48
    .local v0, "linearSmoothScroller":Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Lccsanandroidx/recyclerview/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 49
    invoke-virtual {p0, v0}, Lccsancom/google/android/material/datepicker/SmoothCalendarLayoutManager;->startSmoothScroll(Lccsanandroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 50
    return-void
.end method
