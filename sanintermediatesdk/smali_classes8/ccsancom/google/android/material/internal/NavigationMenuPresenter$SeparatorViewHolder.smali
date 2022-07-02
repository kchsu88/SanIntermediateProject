.class Lccsancom/google/android/material/internal/NavigationMenuPresenter$SeparatorViewHolder;
.super Lccsancom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/material/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeparatorViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/view/LayoutInflater;Lccsanandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "inflater"    # Lccsanandroid/view/LayoutInflater;
    .param p2, "parent"    # Lccsanandroid/view/ViewGroup;

    .line 394
    sget v0, Lccsancom/google/android/material/R$layout;->ccsan_ccsan_design_navigation_item_separator:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/android/material/internal/NavigationMenuPresenter$ViewHolder;-><init>(Lccsanandroid/view/View;)V

    .line 395
    return-void
.end method
