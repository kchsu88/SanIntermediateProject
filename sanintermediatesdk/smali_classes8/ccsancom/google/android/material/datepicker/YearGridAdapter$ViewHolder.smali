.class public Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;
.super Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "YearGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/datepicker/YearGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field final textView:Lccsanandroid/widget/TextView;


# direct methods
.method constructor <init>(Lccsanandroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Lccsanandroid/widget/TextView;

    .line 40
    invoke-direct {p0, p1}, Lccsanandroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Lccsanandroid/view/View;)V

    .line 41
    iput-object p1, p0, Lccsancom/google/android/material/datepicker/YearGridAdapter$ViewHolder;->textView:Lccsanandroid/widget/TextView;

    .line 42
    return-void
.end method
